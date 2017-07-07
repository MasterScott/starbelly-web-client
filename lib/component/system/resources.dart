import 'package:angular2/core.dart';
import 'package:convert/convert.dart' as convert;
import 'package:fixnum/fixnum.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'resources',
    templateUrl: 'resources.html',
    directives: const [MA_DIRECTIVES]
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
            new Breadcrumb(name: 'System', icon: 'cogs'),
            new Breadcrumb(name: 'Resource Monitor', icon: 'bar-chart'),
        ];
    }

    /// Compute sum of CPU usages.
    num cpuUsage() {
        var sum = 0;

        for (var cpu in this.frame.cpus) {
            sum += cpu.usage;
        }

        return sum;
    }

    /// Compute percentage of memory usage.
    num memoryUsage() {
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
    void subscribe() async {
        var request = new pb.Request();
        request.subscribeResourceMonitor =
            new pb.RequestSubscribeResourceMonitor()
            ..history = 1;
        var response = await this._server.sendRequest(request);
        this._subscription = response.subscription.listen((event) {
            this.frame = event.resourceFrame;
            this.jobNames = {};
            for (var crawl in this.frame.crawls) {
                var jobId = convert.hex.encode(crawl.jobId);
                this.jobNames[crawl.jobId] = jobId.substring(0, 8);
                this._jobStatus.getName(jobId).then((name) {
                    this.jobNames[crawl.jobId] = name;
                });
            }
        });
    }
}
