import 'dart:html';
import 'dart:typed_data';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:intl/intl.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/item.dart';
import 'package:starbelly/model/job.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items that raised an exception.
///
/// TODO This is very similar to the error and success views. I can't think
/// of a way to refactor to this to reduce code duplication. It doesn't seem
/// possible to create an abstract base class due to the way dependencies are
/// injected, and it doesn't seem possible use a URL parameter to distinguish
/// success/error/exception because the templates are different.
@Component(
    selector: 'results-exception',
    styles: const ['''
        td.exception {
            /* This makes no sense, but it fixes an x-overflow bug. */
            max-width: 0
        }
        td.exception pre {
            x-overflow: auto;
            margin-bottom: 0;
        }
    '''],
    templateUrl: 'exception.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class ResultExceptionView implements AfterViewInit {
    int currentPage = 1;
    int endRow = 0;
    List<CrawlItem> items;
    String jobId;
    String jobName;
    int rowsPerPage = 10;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    JobStatusService _jobStatus;
    RouteParams _routeParams;
    ServerService _server;
    StreamSubscription<Job> _subscription;

    /// Constructor
    ResultExceptionView(this._document, this._jobStatus, this._routeParams,
        this._server) {
        this.jobId = this._routeParams.get('id');
        this._document.title = 'Exceptions';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Crawl Results', icon: 'sitemap',
                link: ['/Results', 'List']),
            new Breadcrumb(name: 'Crawl',
                link: ['/Results', 'Detail', {'id': this.jobId}]),
            new Breadcrumb(name: 'Exceptions')
        ];

        this._jobStatus.getName(this.jobId).then((jobName) {
            this.jobName = jobName;
            this._document.breadcrumbs[1].name = jobName;
        });

        this._subscription = this._jobStatus.events.listen((Job update) {
            if (this.jobId == update.jobId &&
                (update.exceptionCount ?? 0) > this.totalRows) {
                this.totalRows = update.exceptionCount;
                if (items != null && items.length != this.rowsPerPage) {
                    this.getPage();
                }
            }
        });
    }

    /// Fetch current page.
    getPage() async {
        var request = new pb.Request();
        request.getJobItems = new pb.RequestGetJobItems()
            ..jobId = convert.hex.decode(this.jobId)
            ..includeException = true;
        request.getJobItems.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        var pbItems = message.response.listItems.items;
        this.totalRows = message.response.listItems.total;
        this.items = new List<CrawlItem>.generate(
            pbItems.length,
            (i) => new CrawlItem.fromPb2(pbItems[i])
        );
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.items.length - 1;
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        this.getPage();
    }

    /// Called when Angular destroys the view.
    void ngOnDestroy() {
        this._subscription.cancel();
    }

    /// Called by the pager to select a new page.
    void selectPage(Page page) {
        this.currentPage = page.pageNumber;
        this.getPage();
    }
}
