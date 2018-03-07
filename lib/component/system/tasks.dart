import 'dart:async';

import 'package:angular/angular.dart';
import 'package:ng_modular_admin/ng_modular_admin.dart';

import 'package:starbelly/model/task.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'tasks',
    templateUrl: 'tasks.html',
    directives: const [CORE_DIRECTIVES, MA_DIRECTIVES]
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
            new Breadcrumb(name: 'System', icon: 'desktop'),
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
    subscribe() async {
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
