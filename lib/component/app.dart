import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:logging/logging.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/component/view/items.dart';
import 'package:starbelly/component/view/start.dart';
import 'package:starbelly/component/view/status.dart';
import 'package:starbelly/service/crawl_status.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/service/document.dart';

@Component(
    selector: 'app',
    templateUrl: 'app.html',
    styles: const ['''
        ma-side-nav-header {
            font-size: 1.5em;
            font-weight: 600;
        }

        ma-side-nav-header img {
            margin-left: -0.2em;
        }
    '''],
    directives: const [MA_DIRECTIVES, ROUTER_DIRECTIVES, FaIcon],
    providers: const [MA_PROVIDERS, ROUTER_PROVIDERS, CrawlStatusService,
        DocumentService, ServerService]
)
@RouteConfig(const [
    const Route(
        name: 'CrawlStart',
        path: '/crawl/start',
        component: CrawlStartView,
    ),
    const Route(
        name: 'CrawlStatus',
        path: '/crawl/status',
        component: CrawlStatusView,
    ),
    const Route(
        name: 'CrawlItems',
        path: '/crawl/items',
        component: CrawlItemsView
    ),
])
class AppComponent {
    /// Service for creating toast notifications.
    CrawlStatusService crawlStatus;

    /// Service for creating toast notifications.
    ToastService toast;

    /// Constructor.
    AppComponent(this.crawlStatus, this.toast) {
        if (window.localStorage['starbelly-debug'] == 'true') {
            Logger.root.level = Level.ALL;
        } else {
            Logger.root.level = Level.SEVERE;
        }

        Logger.root.onRecord.listen((LogRecord r) {
            var msg = '[${r.level.name}] ${r.loggerName}: ${r.message}';
            if (r.object != null) {
                msg += ' (Object: ${r.object.toString()})';
            }
            print(msg);
        });
    }
}
