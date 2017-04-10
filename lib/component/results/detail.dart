import 'dart:html';
import 'dart:typed_data';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:intl/intl.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/job.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a crawl.
@Component(
    selector: 'results-detail',
    templateUrl: 'detail.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class ResultsDetailView implements AfterViewInit {
    Job job;

    DocumentService _document;
    JobStatusService _jobStatus;
    RouteParams _routeParams;
    ServerService _server;
    StreamSubscription<Job> _subscription;

    /// Constructor
    ResultsDetailView(this._document, this._jobStatus, this._routeParams,
                      this._server) {
        this._document.title = 'Crawl';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Crawl Results', icon: 'sitemap',
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
        this._document.title = this.job.name;
        this._document.breadcrumbs.last.name = this.job.name;
    }

    /// Called when Angular destroys the view.
    void ngOnDestroy() {
        this._subscription.cancel();
    }
}
