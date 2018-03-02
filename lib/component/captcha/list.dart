import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/model/captcha.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// List policies.
@Component(
    selector: 'policy-list',
    templateUrl: 'list.html',
    directives: const [CORE_DIRECTIVES, FaIcon, MA_DIRECTIVES, RouterLink],
    pipes: const [COMMON_PIPES]
)
class CaptchaListView implements AfterViewInit {
    int currentPage = 1;
    int endRow = 0;
    List<CaptchaSolver> solvers;
    int rowsPerPage = 10;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    Router _router;
    ServerService _server;

    /// Constructor
    CaptchaListView(this._document, this._router, this._server) {
        this._document.title = 'CAPTCHA Solvers';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Configuration', icon: 'cogs'),
            new Breadcrumb(name: 'CAPTCHA Solvers', icon: 'eye')
        ];
    }

    /// Delete the specified CAPTCHA solver.
    deleteSolver(ButtonClick click, CaptchaSolver solver) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.deleteCaptchaSolver = new pb.RequestDeleteCaptchaSolver()
            ..solverId = convert.hex.decode(solver.solverId);
        await this._server.sendRequest(request);
        await this.getPage();
        click.button.busy = false;
    }

    /// Duplicate the specified CAPTCHA solver.
    duplicateSolver(ButtonClick click, CaptchaSolver solver) async {
        click.button.busy = true;

        // Create new policy
        var request = new pb.Request();
        request.setCaptchaSolver = new pb.RequestSetCaptchaSolver()
            ..solver = new CaptchaSolver.copy(solver).toPb();
        var message = await this._server.sendRequest(request);
        var newSolverId = convert.hex.encode(
            message.response.newSolver.solverId);
        this._router.navigate(['../Detail', {"id": newSolverId}]);
    }

    /// Fetch current page of results.
    getPage() async {
        var request = new pb.Request()
            ..listCaptchaSolvers = new pb.RequestListCaptchaSolvers();
        request.listCaptchaSolvers.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        this.totalRows = message.response.listCaptchaSolvers.total;
        var solvers = message.response.listCaptchaSolvers.solvers;
        this.solvers = new List<CaptchaSolver>.generate(
            solvers.length,
            (i) => new CaptchaSolver.fromPb(solvers[i])
        );
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.solvers.length - 1;
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
