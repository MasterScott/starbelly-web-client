import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:starbelly/component/policy/detail.dart';
import 'package:starbelly/component/policy/list.dart';

/// A component for handling routes under /policy.
@Component(
    selector: 'policy-router',
    template: '<router-outlet></router-outlet>',
    directives: const [RouterLink]
)
@RouteConfig(const [
    const Route(
        path: '/',
        name: 'List',
        component: PolicyListView),
    const Route(
        path: '/new',
        name: 'Create',
        component: PolicyDetailView),
    const Route(
        path: '/:id',
        name: 'Detail',
        component: PolicyDetailView),
])
class PolicyRouter {}
