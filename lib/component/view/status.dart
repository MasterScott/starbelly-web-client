import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/service/document.dart';

/// View status of each crawl.
@Component(
    selector: 'crawl-status',
    templateUrl: 'status.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class JobStatusView implements OnInit {
    String rateLimit = '';
    String seedUrl = '';

    JobStatusService jobStatus;

    ServerService _server;
    StreamSubscription _subscription;
    DocumentService _document;

    var RUN_STATE_LABELS = {
        pb.JobRunState.CANCELLED: 'Cancelled',
        pb.JobRunState.COMPLETED: 'Completed',
        pb.JobRunState.PAUSED: 'Paused',
        pb.JobRunState.PENDING: 'Pending',
        pb.JobRunState.RUNNING: 'Running',
    };

    var PAUSED = pb.JobRunState.PAUSED;
    var CANCELLED = pb.JobRunState.CANCELLED;
    var RUNNING = pb.JobRunState.RUNNING;

    /// Constructor
    JobStatusView(this.jobStatus, this._server, this._document) {
        this._document.title = 'Job Status';
    }

    /// When this component is created, reset the new job count.
    void ngOnInit() {
        this.jobStatus.resetNewJobCount();
    }

    /// Set a job's run state.
    setJobRunState(JobStatus job, pb.JobRunState runState) async {
        var request = new pb.Request();
        request.setJobRunState = new pb.RequestSetJobRunState();
        request.setJobRunState.jobId = job.jobId;
        request.setJobRunState.runState = runState;
        var response = await this._server.sendRequest(request);
    }
}
