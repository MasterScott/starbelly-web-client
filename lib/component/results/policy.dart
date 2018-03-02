import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/model/captcha.dart';
import 'package:starbelly/model/job.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a policy.
@Component(
    selector: 'results-policy',
    templateUrl: 'policy.html',
    directives: const [CORE_DIRECTIVES, FaIcon, MA_DIRECTIVES,
        RouterLink],
    pipes: const [COMMON_PIPES]
)
class ResultPolicyView implements AfterViewInit {
    CaptchaSolver captchaSolver;
    Job job;

    var ACTION_ADD = pb.PolicyUrlRule_Action.ADD;
    var ACTION_MULTIPLY = pb.PolicyUrlRule_Action.MULTIPLY;

    var MATCHES = pb.PatternMatch.MATCHES;
    var DOES_NOT_MATCH = pb.PatternMatch.DOES_NOT_MATCH;

    var OBEY = pb.PolicyRobotsTxt_Usage.OBEY;
    var INVERT = pb.PolicyRobotsTxt_Usage.INVERT;
    var IGNORE = pb.PolicyRobotsTxt_Usage.IGNORE;

    DocumentService _document;
    RouteParams _routeParams;
    ServerService _server;

    /// Constructor
    ResultPolicyView(this._document, this._routeParams, this._server) {
        var jobId = this._routeParams.get('id');
        this._document.title = 'Policy';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Results', icon: 'sitemap',
                link: ['/Results', 'List']),
            new Breadcrumb(name: 'Crawl',
                link: ['/Results', 'Detail', {'id': jobId}]),
            new Breadcrumb(name: 'Policy'),
        ];
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        var request = new pb.Request();
        request.getJob = new pb.RequestGetJob();
        var jobId = this._routeParams.get('id');
        request.getJob.jobId = convert.hex.decode(jobId);
        var message = await this._server.sendRequest(request);
        this.job = new Job.fromPb2(message.response.job);
        this._document.title = "${this.job.name} Policy";
        var jobCrumb = this._document.breadcrumbs.length - 2;
        this._document.breadcrumbs[jobCrumb].name = this.job.name;

        // Get CAPTCHA solver.
        if (this.job.policy.captchaSolverId.isNotEmpty) {
            request = new pb.Request();
            request.getCaptchaSolver = new pb.RequestGetCaptchaSolver()
                ..solverId = convert.hex.decode(this.job.policy.captchaSolverId);
            var message = await this._server.sendRequest(request);
            this.captchaSolver = new CaptchaSolver.fromPb(message.response.solver);
        }
    }
}
