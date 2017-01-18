import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/component/view/dashboard.dart';
import 'package:starbelly/component/view/items.dart';
import 'package:starbelly/component/view/start.dart';
import 'package:starbelly/component/view/status.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/service/document.dart';

@Component(
    selector: 'app',
    templateUrl: 'app.html',
    directives: const [MA_DIRECTIVES, ROUTER_DIRECTIVES, FaIcon],
    providers: const [ROUTER_PROVIDERS, DocumentService, ServerService]
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
        name: 'CrawlDashboard',
        path: '/dashboard',
        component: CrawlDashboardView,
        useAsDefault: true
    ),
    const Route(
        name: 'CrawlItems',
        path: '/crawl/items',
        component: CrawlItemsView
    ),
])
class AppComponent {}
