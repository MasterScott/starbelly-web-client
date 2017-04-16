import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/job.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'results-list',
    templateUrl: 'list.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class ResultsListView implements AfterViewInit, OnDestroy {
    int currentPage = 1;
    int endRow = 0;
    List<Job> jobs;
    JobStatusService jobStatus;
    int rowsPerPage = 10;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    Map<String,JobStatus> _jobsById;
    ServerService _server;
    StreamSubscription<Job> _subscription;

    var CANCELLED = pb.JobRunState.CANCELLED;
    var COMPLETED = pb.JobRunState.COMPLETED;

    /// Constructor
    ResultsListView(this._document, this.jobStatus, this._server) {
        this._document.title = 'Crawl Results';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Crawl Results', icon: 'sitemap')
        ];

        // If a job on the current page is updated, then merge it into the
        // current page.
        this._jobsById = {};
        this._subscription = this.jobStatus.events.listen((Job update) {
            var jobId = update.jobId;
            if (this._jobsById.containsKey(jobId)) {
                this._jobsById[jobId].mergeFrom(update);
            }
        });
    }

    /// Delete a job.
    void deleteJob(Click click, Job job) async {
        click.button.busy = true;
        var request = new pb.Request()
            ..deleteJob = new pb.RequestDeleteJob();
        request.deleteJob.jobId = convert.hex.decode(job.jobId);
        var message = await this._server.sendRequest(request);
        var response = message.response;
        if (!response.isSuccess) {
            window.alert('Could not delete job: ${response.errorMessage}');
        }
        await this.getPage();
        click.button.busy = false;
    }

    /// Fetch current page of results.
    void getPage() async {
        var request = new pb.Request()
            ..listJobs = new pb.RequestListJobs();
        request.listJobs.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        this.totalRows = message.response.listJobs.total;
        this.jobs = [];
        this._jobsById = {};
        for (var pbJob in message.response.listJobs.jobs) {
            var job = new Job.fromPb2(pbJob);
            this.jobs.add(job);
            this._jobsById[job.jobId] = job;
        }
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.jobs.length - 1;
    }

    /// Called when Angular initializes the view.
    void ngAfterViewInit() {
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
