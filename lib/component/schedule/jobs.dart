import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/job.dart';
import 'package:starbelly/model/schedule.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View job schedules.
@Component(
    selector: 'schedule-list-jobs',
    templateUrl: 'jobs.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class ScheduleListJobsView implements AfterViewInit {
    int currentPage = 1;
    int endRow = 0;
    List<Job> jobs;
    int rowsPerPage = 10;
    String scheduleId;
    String scheduleName;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    RouteParams _routeParams;
    ServerService _server;

    /// Constructor
    ScheduleListJobsView(this._document, this._routeParams, this._server) {
        this.scheduleId = this._routeParams.get('id');
        this.scheduleName = this.scheduleId.substring(0, 8);
    }

    /// Fetch current page of results.
    getPage() async {
        var request = new pb.Request()
            ..listJobs = new pb.RequestListJobs();
        print(this.scheduleId);
        request.listJobs.scheduleId = convert.hex.decode(this.scheduleId);
        request.listJobs.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        this.totalRows = message.response.listJobs.total;
        this.jobs = new List<Job>.generate(
            message.response.listJobs.jobs.length,
            (i) => new Job.fromPb2(message.response.listJobs.jobs[i])
        );
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.jobs.length - 1;
    }

    /// Fetch job schedule.
    getSchedule() async {
        var request = new pb.Request();
        request.getJobSchedule = new pb.RequestGetJobSchedule()
            ..scheduleId = convert.hex.decode(this.scheduleId);
        var message = await this._server.sendRequest(request);
        var schedule = new JobSchedule.fromPb(message.response.jobSchedule);
        return schedule;
    }

    /// Called when Angular initializes the view.
    void ngAfterViewInit() {
        this._document.title = 'Schedule: Jobs';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Schedule', icon: 'calendar',
                link: ['/Schedule', 'List']),
            new Breadcrumb(name: this.scheduleId.substring(0, 8),
                link: ['/Schedule', 'Detail', {'id': scheduleId}]),
            new Breadcrumb(name: 'Jobs'),
        ];

        this.getSchedule().then((schedule) {
            this.scheduleName = schedule.scheduleName;
            this._document.breadcrumbs[1].name = this.scheduleName;
        });
        this.getPage();
    }

    /// Called by the pager to select a new page.
    void selectPage(Page page) {
        this.currentPage = page.pageNumber;
        this.getPage();
    }
}
