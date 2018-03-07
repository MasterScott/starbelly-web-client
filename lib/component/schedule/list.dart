import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng_fontawesome/ng_fontawesome.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/model/schedule.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/server.dart';

/// View job schedules.
@Component(
    selector: 'schedule-list',
    templateUrl: 'list.html',
    directives: const [CORE_DIRECTIVES, FaIcon, MA_DIRECTIVES,
        RouterLink],
    pipes: const [COMMON_PIPES]
)
class ScheduleListView implements AfterViewInit {
    int currentPage = 1;
    int endRow = 0;
    List<JobSchedule> schedules;
    int rowsPerPage = 10;
    int startRow = 0;
    int totalRows = 0;

    DocumentService _document;
    ServerService _server;

    /// Constructor
    ScheduleListView(this._document, this._server) {
        this._document.title = 'Schedule';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Schedule', icon: 'calendar')
        ];
    }

    /// Delete a job schedule.
    deleteSchedule(ButtonClick click, JobSchedule schedule) async {
        click.button.busy = true;
        var request = new pb.Request()
            ..deleteJobSchedule = new pb.RequestDeleteJobSchedule();
        request.deleteJobSchedule.scheduleId = convert.hex.decode(
            schedule.scheduleId);
        try {
            await this._server.sendRequest(request);
            await this.getPage();
        } on ServerException catch (exc) {
            window.alert('Could not delete schedule: ${exc}');
        }
        click.button.busy = false;
    }

    /// Fetch current page of results.
    getPage() async {
        var request = new pb.Request()
            ..listJobSchedules = new pb.RequestListJobSchedules();
        request.listJobSchedules.page = new pb.Page()
            ..limit = this.rowsPerPage
            ..offset = (this.currentPage - 1) * this.rowsPerPage;
        var message = await this._server.sendRequest(request);
        this.totalRows = message.response.listJobSchedules.total;
        this.schedules = [];
        for (var pbSchedule in message.response.listJobSchedules.jobSchedules) {
            this.schedules.add(new JobSchedule.fromPb(pbSchedule));
        }
        this.startRow = (this.currentPage - 1) * this.rowsPerPage + 1;
        this.endRow = this.startRow + this.schedules.length - 1;
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
