import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/component/routes.dart';
import 'package:starbelly/model/job.dart';
import 'package:starbelly/model/schedule.dart';
import 'package:starbelly/protobuf/starbelly.pb.dart' as pb;
import 'package:starbelly/service/server.dart';

/// View job schedules.
@Component(
    selector: 'schedule-list-jobs',
    templateUrl: 'jobs.html',
    directives: const [coreDirectives, FaIcon, modularAdminDirectives,
        RouterLink],
    exports: [Routes],
    pipes: const [commonPipes]
)
class ScheduleListJobsView implements OnActivate {
    int currentPage = 1;
    int endRow = 0;
    List<Job> jobs;
    int rowsPerPage = 10;
    String scheduleId;
    String scheduleName;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    ServerService _server;

    /// Constructor
    ScheduleListJobsView(this._document, this._server);

    /// Fetch current page of results.
    getPage() async {
        var request = new pb.Request()
            ..listJobs = new pb.RequestListJobs();
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
        request.getSchedule = new pb.RequestGetSchedule()
            ..scheduleId = convert.hex.decode(this.scheduleId);
        var message = await this._server.sendRequest(request);
        var schedule = new Schedule.fromPb(message.response.schedule);
        return schedule;
    }

    onActivate(_, RouterState current) {
        var scheduleId = current.parameters['id'];
        this._document.title = 'Schedule: Jobs';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Schedule', icon: 'calendar',
                link: Routes.scheduleList.toUrl()),
            new Breadcrumb(name: scheduleId.substring(0, 8),
                link: Routes.scheduleDetail.toUrl({'id': scheduleId})),
            new Breadcrumb(name: 'Jobs'),
        ];
        this.scheduleId = scheduleId;
        this.scheduleName = scheduleId.substring(0, 8);
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
