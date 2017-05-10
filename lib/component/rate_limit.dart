import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/common.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';
import 'package:ng2_modular_admin/validators.dart' as MaValidators;

import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// Set & display rate limits.
@Component(
    selector: 'rate-limit',
    styles: const ['''
        ma-card#newRateLimitCard {
            min-width: 30em;
        }
    '''],
    templateUrl: 'rate_limit.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES]
)
class RateLimitView implements AfterViewInit {
    String FOO;

    int currentPage = 1;
    int endRow = 0;
    Control newDelayControl;
    Control newDomainControl;
    String newModalError;
    ControlGroup newRateLimitForm;
    List<RateLimitWrapper> rateLimits;
    int rowsPerPage = 10;
    bool showNewModal = false;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    ServerService _server;

    /// Constructor
    RateLimitView(this._document, this._server) {
        this._document.title = 'Rate Limits';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Rate Limits', icon: 'clock-o')
        ];

        this.newDelayControl = new Control('', Validators.compose([
            MaValidators.required(),
            MaValidators.number(min:0)
        ]));
        this.newDomainControl = new Control('', MaValidators.required());
        this.newRateLimitForm = new ControlGroup({
            'delay': this.newDelayControl,
            'domain': this.newDomainControl,
        });
    }

    /// Create a new rate limit object.
    void createRateLimit(String domain, String delayStr) async {
        var request = new pb.Request();
        request.setRateLimit = new pb.RequestSetRateLimit();
        request.setRateLimit.rateLimit = new pb.RateLimit();
        request.setRateLimit.rateLimit.domain = domain;
        request.setRateLimit.rateLimit.delay = double.parse(delayStr);
        try {
            var message = await this._server.sendRequest(request);
            newModalError = null;
            showNewModal = false;
            await this.getPage();
        } on ServerException catch (exc) {
            newModalError = exc.message;
        }
    }

    /// Remove the specified rate limit.
    void deleteRateLimit(ButtonClick click, RateLimitWrapper wrapper) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.setRateLimit = new pb.RequestSetRateLimit();
        request.setRateLimit.rateLimit = new pb.RateLimit();
        request.setRateLimit.rateLimit.domain = wrapper.rateLimit.domain;
        try {
            var message = await this._server.sendRequest(request);
            wrapper.error = null;
            await this.getPage();
        } on ServerException catch (exc) {
            wrapper.error = exc.message;
        }
        click.button.busy = false;
    }

    /// Fetch current page.
    getPage() async {
        var request = new pb.Request();
        request.getRateLimits = new pb.RequestGetRateLimits();
        request.getRateLimits.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        var rateLimits = message.response.listRateLimits.rateLimits;
        this.rateLimits = new List<RateLimitWrapper>.generate(
            rateLimits.length,
            (i) => new RateLimitWrapper(rateLimits[i])
        );
        this.totalRows = message.response.listRateLimits.total;
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.rateLimits.length - 1;
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        this.getPage();
    }

    /// Save a rate limit.
    void saveRateLimit(RateLimitWrapper wrapper, String value) async {
        var delay;
        try {
            delay = double.parse(value);
            if (delay < 0) {
                throw new Exception();
            }
        } catch (exc, stack) {
            wrapper.error = 'Enter a valid delay ≥0.';
            return;
        }
        wrapper.isEditing = false;
        var request = new pb.Request();
        request.setRateLimit = new pb.RequestSetRateLimit();
        request.setRateLimit.rateLimit = new pb.RateLimit();
        if (wrapper.rateLimit.hasDomain()) {
            request.setRateLimit.rateLimit.domain = wrapper.rateLimit.domain;
        }
        request.setRateLimit.rateLimit.delay = delay;
        try {
            var message = await this._server.sendRequest(request);
            wrapper.error = null;
            await this.getPage();
        } on ServerException catch  (exc) {
            wrapper.error = exc.message;
        }
    }

    /// Called by the pager to select a new page.
    void selectPage(Page page) {
        this.currentPage = page.pageNumber;
        this.getPage();
    }
}

/// A view state wrapper for a rate limit.
class RateLimitWrapper {
    bool canDelete;
    String error;
    bool isEditing = false;
    pb.RateLimit rateLimit;

    RateLimitWrapper(this.rateLimit) {
        this.canDelete = this.rateLimit.hasDomain();
    }
}
