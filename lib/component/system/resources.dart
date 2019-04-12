import 'dart:async';

import 'package:angular/angular.dart';
import 'package:convert/convert.dart' as convert;
import 'package:fixnum/fixnum.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/protobuf/starbelly.pb.dart' as pb;
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'resources',
    templateUrl: 'resources.html',
    directives: const [coreDirectives, modularAdminDirectives],
    pipes: const [commonPipes]
)
class ResourcesView implements AfterViewInit, OnDestroy {
    pb.ResourceFrame frame;
    Map jobNames;

    DocumentService _document;
    JobStatusService _jobStatus;
    ServerService _server;
    StreamSubscription<pb.Event> _subscription;

    /// Constructor
    ResourcesView(this._document, this._jobStatus, this._server) {
        this._document.title = 'Resources';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'System', icon: 'desktop'),
            new Breadcrumb(name: 'Resource Monitor', icon: 'chart-bar'),
        ];
    }

    /// Compute sum of CPU usages.
    num cpuUsage() {
        num sum = 0;

        for (var cpu in this.frame.cpus) {
            sum += cpu.usage;
        }

        return sum;
    }

    /// Compute percentage of memory usage.
    Int64 memoryUsage() {
        return new Int64(100) * this.frame.memory.used ~/ this.frame.memory.total;
    }

    /// Called when Angular initializes the view.
    void ngAfterViewInit() {
        this.subscribe();
    }

    /// Called when Angular destroys the view.
    void ngOnDestroy() {
        if (this._subscription != null) {
            this._subscription.cancel();
        }
    }

    /// Subscribe to resource monitor events.
    subscribe() async {
        var request = new pb.Request();
        request.subscribeResourceMonitor =
            new pb.RequestSubscribeResourceMonitor()
            ..history = 1;
        var response = await this._server.sendRequest(request);
        this._subscription = response.subscription.listen((event) {
            this.frame = event.resourceFrame;
            this.jobNames = {};
            for (var job in this.frame.jobs) {
                var jobId = convert.hex.encode(job.jobId);
                this.jobNames[job.jobId] = jobId.substring(0, 8);
                this._jobStatus.getName(jobId).then((name) {
                    this.jobNames[job.jobId] = name;
                });
            }
        });
    }
}
