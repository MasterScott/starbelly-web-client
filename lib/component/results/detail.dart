import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/component/external_link.dart';
import 'package:starbelly/model/job.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a crawl.
@Component(
    selector: 'results-detail',
    templateUrl: 'detail.html',
    directives: const [CORE_DIRECTIVES, FaIcon, formDirectives,
        MA_DIRECTIVES, RouterLink, ExternalLinkComponent],
    pipes: const [COMMON_PIPES]
)
class ResultDetailView implements AfterViewInit, OnDestroy {
    Job job;
    String tags;

    var ACTION_ADD = pb.PolicyUrlRule_Action.ADD;
    var ACTION_MULTIPLY = pb.PolicyUrlRule_Action.MULTIPLY;

    var MATCHES = pb.PatternMatch.MATCHES;
    var DOES_NOT_MATCH = pb.PatternMatch.DOES_NOT_MATCH;

    var OBEY = pb.PolicyRobotsTxt_Usage.OBEY;
    var INVERT = pb.PolicyRobotsTxt_Usage.INVERT;
    var IGNORE = pb.PolicyRobotsTxt_Usage.IGNORE;

    DocumentService _document;
    JobStatusService _jobStatus;
    RouteParams _routeParams;
    ServerService _server;
    StreamSubscription<Job> _subscription;

    /// Constructor
    ResultDetailView(this._document, this._jobStatus, this._routeParams,
                      this._server) {
        this._document.title = 'Results';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Results', icon: 'sitemap',
                link: ['/Results', 'List']),
            new Breadcrumb(name: 'Crawl'),
        ];

        this._subscription = this._jobStatus.events.listen((Job update) {
            if (this.job != null && this.job.jobId == update.jobId) {
                this.job.mergeFrom(update);
            }
        });
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        var request = new pb.Request();
        request.getJob = new pb.RequestGetJob();
        var jobId = this._routeParams.get('id');
        request.getJob.jobId = convert.hex.decode(jobId);
        var message = await this._server.sendRequest(request);
        this.job = new Job.fromPb2(message.response.job);
        this.tags = this.job.tags.join(' ');
        this._document.title = this.job.name;
        this._document.breadcrumbs.last.name = this.job.name;
    }

    /// Called when Angular destroys the view.
    void ngOnDestroy() {
        this._subscription.cancel();
    }

    saveTags() async {
        var request = new pb.Request();
        request.setJob = new pb.RequestSetJob()
            ..jobId = convert.hex.decode(this.job.jobId)
            ..tagList = new pb.TagList();
        for (var tagStr in this.tags.split(new RegExp(' +'))) {
            request.setJob.tagList.tags.add(tagStr.trim());
        }
        var message = await this._server.sendRequest(request);
        if (!message.response.isSuccess) {
            window.alert('Could not save tags!');
        }
    }
}
