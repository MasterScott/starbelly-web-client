import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/policy.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'policy-list',
    templateUrl: 'list.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class PolicyListView implements AfterViewInit {
    int currentPage = 1;
    int endRow = 0;
    List<Policy> policies;
    int rowsPerPage = 10;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    ServerService _server;

    /// Constructor
    PolicyListView(this._document, this._server) {
        this._document.title = 'Crawl Policy';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Crawl Policy', icon: 'cogs')
        ];
    }

    /// Delete the specified policy
    void deletePolicy(ButtonClick click, Policy policy) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.deletePolicy = new pb.RequestDeletePolicy()
            ..policyId = convert.hex.decode(policy.policyId);
        var message = await this._server.sendRequest(request);
        await this.getPage();
        click.button.busy = false;
    }

    /// Fetch current page of results.
    void getPage() async {
        var request = new pb.Request()
            ..listPolicies = new pb.RequestListPolicies();
        request.listPolicies.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        this.totalRows = message.response.listPolicies.total;
        var policies = message.response.listPolicies.policies;
        this.policies = new List<Policy>.generate(
            policies.length,
            (i) => new Policy.fromPb(policies[i])
        );
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.policies.length - 1;
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
