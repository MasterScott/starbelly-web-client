import 'package:angular2/core.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/task.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'tasks',
    templateUrl: 'tasks.html',
    directives: const [MA_DIRECTIVES]
)
class TasksView implements AfterViewInit, OnDestroy {
    TaskMonitor taskMonitor;

    DocumentService _document;
    ServerService _server;
    StreamSubscription<pb.Event> _subscription;

    /// Constructor
    TasksView(this._document, this._server) {
        this._document.title = 'Task Monitor';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'System', icon: 'cogs'),
            new Breadcrumb(name: 'Tasks', icon: 'tasks'),
        ];
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

    /// Subscribe to task monitor events.
    void subscribe() async {
        var request = new pb.Request();
        request.subscribeTaskMonitor = new pb.RequestSubscribeTaskMonitor()
            ..period = 1.0
            ..topN = 25;
        var response = await this._server.sendRequest(request);
        this._subscription = response.subscription.listen((event) {
            this.taskMonitor = new TaskMonitor.fromPb(event.taskMonitor);
        });
    }
}
