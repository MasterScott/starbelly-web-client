import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/job_status.dart';
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

    /// Constructor
    JobStatusView(this.jobStatus, this._server, this._document) {
        this._document.title = 'Job Status';
    }

    /// When this component is created, reset the new job count.
    void ngOnInit() {
        this.jobStatus.resetNewJobCount();
    }

    /// Cancel a running job.
    cancel(JobStatus job) async {
        var response = await this._server.command('job.cancel', {
            'job_id': job.jobId,
        });
    }

    /// Pause a running job.
    pause(JobStatus job) async {
        var response = await this._server.command('job.pause', {
            'job_id': job.jobId,
        });
    }

    /// Resume a running job.
    resume(JobStatus job) async {
        var response = await this._server.command('job.resume', {
            'job_id': job.jobId,
        });
    }
}
