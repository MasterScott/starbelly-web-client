import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/model/job.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/server.dart';

/// Dashboard view.
@Component(
    selector: 'dashboard',
    templateUrl: 'dashboard.html',
    directives: const [CORE_DIRECTIVES, FaIcon, MA_DIRECTIVES,
        RouterLink]
)
class DashboardView implements OnInit {
    Set<String> busyJobs;
    String rateLimit = '';
    String seedUrl = '';

    Function hex = (data) => convert.hex.encode(data);
    JobStatusService jobStatus;

    ServerService _server;
    DocumentService _document;

    var PAUSED = pb.JobRunState.PAUSED;
    var CANCELLED = pb.JobRunState.CANCELLED;
    var RUNNING = pb.JobRunState.RUNNING;

    /// Constructor
    DashboardView(this.jobStatus, this._server, this._document) {
        this.busyJobs = new Set<String>();
        this._document.title = 'Dashboard';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Dashboard', icon: 'dashboard')
        ];
    }

    /// When this component is created, reset the new job count.
    void ngOnInit() {
        this.jobStatus.resetNewJobCount();
    }

    /// Set a job's run state.
    setJobRunState(ButtonClick click, Job job, pb.JobRunState runState) async {
        click.button.busy = true;
        this.busyJobs.add(job.jobId);
        var request = new pb.Request();
        request.setJob = new pb.RequestSetJob()
            ..jobId = job.jobIdBytes
            ..runState = runState;
        await this._server.sendRequest(request);
        this.busyJobs.remove(job.jobId);
        click.button.busy = false;
    }
}
