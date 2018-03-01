import 'package:angular/core.dart';
import 'package:angular_router/angular_router.dart';

import 'package:starbelly/component/credential/detail.dart';
import 'package:starbelly/component/credential/list.dart';

/// A component for handling routes under /credential.
@Component(
    selector: 'credential-router',
    template: '<router-outlet></router-outlet>',
    directives: const [ROUTER_DIRECTIVES]
)
@RouteConfig(const [
    const Route(
        path: '/',
        name: 'List',
        component: CredentialListView),
    const Route(
        path: '/:domain',
        name: 'Detail',
        component: CredentialDetailView),
])
class CredentialRouter {}
