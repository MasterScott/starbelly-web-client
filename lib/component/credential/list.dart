import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';
import 'package:ng2_modular_admin/validators.dart' as MaValidators;

import 'package:starbelly/model/domain_login.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/validate.dart' as validate;

/// View crawl items.
@Component(
    selector: 'credential-list',
    templateUrl: 'list.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class CredentialListView implements AfterViewInit {
    int currentPage = 1;
    Control domainControl;
    int endRow = 0;
    List<DomainLogin> domainLogins;
    Control loginUrlControl;
    ControlGroup newDomainLoginForm;
    String newModalError;
    int rowsPerPage = 10;
    bool showNewModal = false;
    int startRow = 0;
    int totalRows = 0;

    bool _autoDomain = true;
    DocumentService _document;
    Router _router;
    ServerService _server;

    /// Constructor
    CredentialListView(this._document, this._router, this._server) {
        this._document.title = 'Credentials';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Configuration', icon: 'cogs'),
            new Breadcrumb(name: 'Credentials', icon: 'key')
        ];

        this.loginUrlControl = new Control('', Validators.compose([
            MaValidators.required(),
            validate.url()
        ]));
        this.domainControl = new Control();
        this.newDomainLoginForm = new ControlGroup({
            'loginUrl': this.loginUrlControl,
            'domain': this.domainControl,
        });
    }

    /// Create a new rate limit object.
    createDomainLogin(String loginUrl, String domain) async {
        if (domain.isEmpty) {
            var uri = Uri.parse(loginUrl);
            domain = uri.host;
        }
        var request = new pb.Request();
        request.setDomainLogin = new pb.RequestSetDomainLogin();
        request.setDomainLogin.login = new pb.DomainLogin()
            ..domain = domain
            ..loginUrl = loginUrl;
        try {
            var message = await this._server.sendRequest(request);
            newModalError = null;
            showNewModal = false;
            this._router.navigate(['../Detail', {"domain": domain}]);
        } on ServerException catch (exc) {
            newModalError = exc.message;
        }
    }

    /// Delete the specified domain login.
    deleteDomainLogin(ButtonClick click, pb.DomainLogin domainLogin) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.deleteDomainLogin = new pb.RequestDeleteDomainLogin()
            ..domain = domainLogin.domain;
        var message = await this._server.sendRequest(request);
        await this.getPage();
        click.button.busy = false;
    }

    /// Fetch current page of results.
    void getPage() async {
        var request = new pb.Request()
            ..listDomainLogins = new pb.RequestListDomainLogins();
        request.listDomainLogins.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        this.totalRows = message.response.listDomainLogins.total;
        var logins = message.response.listDomainLogins.logins;
        this.domainLogins = new List.generate(
            logins.length,
            (i) => new DomainLogin.fromPb(logins[i])
        );
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.domainLogins.length - 1;
    }

    /// Called when Angular initializes the view.
    void ngAfterViewInit() {
        this.getPage();
    }

    /// Called by the pager to select a new page.
    void selectPage(Page page) {
        this.currentPage = page.pageNumber;
        this.getPage();
    }
}
