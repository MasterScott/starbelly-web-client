import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';
import 'package:ng2_modular_admin/validators.dart' as MaValidators;

import 'package:starbelly/model/job.dart';
import 'package:starbelly/model/policy.dart';
import 'package:starbelly/model/schedule.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a job schedule.
@Component(
    selector: 'schedule-detail',
    styles: const ['''
        .input-label {
            text-align: right;
            width: 8em;
        }
        ma-radio-group {
            margin-bottom: 1.5em;
        }
        .radio-label {
            margin-left: 3.4em;
            margin-right: 0.4em;
        }
        dl {
            display: flex;
        }
        dt {
            text-align: right;
            width: 7em;
            font-size: 16px;
            font-weight: 600;
            padding-right: 0.5em;
        }
        dd {
            margin-bottom: .5rem;
            margin-left: 0;
        }
        p.legend {
            margin-left: 8.4em;
            margin-top: -0.8em;
            font-size: 10pt;
        }
        .row.buttons {
            /* Make space for success/error message. Kind of a hack: would be
             * better to scroll the view port?
             */
            min-height: 5em;
        }
    '''],
    templateUrl: 'detail.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class ScheduleDetailView implements AfterViewInit {
    Job latestJob;
    List<Policy> policies;
    JobSchedule schedule;
    String saveError = '';
    bool saveSuccess = false;

    DocumentService _document;
    Router _router;
    RouteParams _routeParams;
    ServerService _server;

    var REGULAR_INTERVAL = pb.JobScheduleTiming.REGULAR_INTERVAL;
    var AFTER_PREVIOUS_JOB_FINISHED =
        pb.JobScheduleTiming.AFTER_PREVIOUS_JOB_FINISHED;

    var MINUTES = pb.JobScheduleTimeUnit.MINUTES;
    var HOURS = pb.JobScheduleTimeUnit.HOURS;
    var DAYS = pb.JobScheduleTimeUnit.DAYS;
    var WEEKS = pb.JobScheduleTimeUnit.WEEKS;
    var MONTHS = pb.JobScheduleTimeUnit.MONTHS;
    var YEARS = pb.JobScheduleTimeUnit.YEARS;

    /// Constructor
    ScheduleDetailView(this._document, this._router, this._routeParams,
        this._server) {
        this.policies = [];
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        this._asyncAfterViewInit();
    }

    /// Save the current schedule.
    ///
    /// If a new schedule is created, then redirect to that new schedule.
    save(ButtonClick click) async {
        click.button.busy = true;
        var request = new pb.Request()
            ..setJobSchedule = new pb.RequestSetJobSchedule();
        try {
            request.setJobSchedule.jobSchedule = this.schedule.toPb();
            var message = await this._server.sendRequest(request);
            var response = message.response;
            saveError = '';
            saveSuccess = true;
            if (response.hasNewJobSchedule()) {
                var scheduleId = convert.hex.encode(
                    response.newJobSchedule.scheduleId);
                this._router.navigate(['../Detail', {"id": scheduleId}]);
            } else {
                this.schedule.updatedAt = new DateTime.now();
                this._document.breadcrumbs.last.name =
                    this.schedule.scheduleName;
                new Timer(new Duration(seconds: 3), () {
                    this.saveSuccess = false;
                });
            }
        } on Exception catch (exc) {
            saveError = 'Cannot save: ${exc.message}';
            saveSuccess = false;
        }
        click.button.busy = false;
    }

    /// Implement ngAfterViewInit() as an async method.
    _asyncAfterViewInit() async {
        var scheduleId = this._routeParams.get('id');
        var scheduleName;

        if (scheduleId == null) {
            this.schedule = new JobSchedule.defaultSettings();
            scheduleName = this.schedule.scheduleName;
        } else {
            scheduleName = scheduleId.substring(0, 8);
        }

        this._document.title = scheduleName;
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Schedule', icon: 'calendar',
                link: ['/Schedule', 'List']),
            new Breadcrumb(name: scheduleName),
        ];

        if (scheduleId != null) {
            var schedule = await this._fetchSchedule(scheduleId);
            this.schedule = schedule;
            this._document.title = 'Schedule: ${this.schedule.scheduleName}';
            this._document.breadcrumbs.last.name = this.schedule.scheduleName;
            this.policies = await this._fetchPolicies();
            if (schedule.latestJobId.isNotEmpty) {
                this.latestJob = await this._fetchJob(schedule.latestJobId);
            }
        }
    }

    /// Fetch the latest job for this schedule.
    Future<Job> _fetchJob(String jobId) async {
        var request = new pb.Request();
        request.getJob = new pb.RequestGetJob()
            ..jobId = convert.hex.decode(jobId);
        var message = await this._server.sendRequest(request);
        return new Job.fromPb2(message.response.job);
    }

    /// Fetch a list of policies.
    Future<List<Policy>> _fetchPolicies() async {
        var request = new pb.Request()
            ..listPolicies = new pb.RequestListPolicies();
        request.listPolicies.page = new pb.Page()
            ..limit = 100
            ..offset = 0;
        var message = await this._server.sendRequest(request);
        var pbPolicies = message.response.listPolicies.policies;
        var policies = new List.generate(
            pbPolicies.length,
            (i) => new Policy.fromPb(pbPolicies[i])
        );
        return policies;
    }

    /// Fetch the job schedule object.
    Future<JobSchedule> _fetchSchedule(String scheduleId) async {
        var request = new pb.Request();
        request.getJobSchedule = new pb.RequestGetJobSchedule()
            ..scheduleId = convert.hex.decode(scheduleId);
        var message = await this._server.sendRequest(request);
        var schedule = new JobSchedule.fromPb(message.response.jobSchedule);
        return schedule;
    }
}
