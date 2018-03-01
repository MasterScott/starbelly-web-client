import 'package:angular/core.dart';
import 'package:angular_router/angular_router.dart';

import 'package:starbelly/component/results/detail.dart';
import 'package:starbelly/component/results/error.dart';
import 'package:starbelly/component/results/exception.dart';
import 'package:starbelly/component/results/list.dart';
import 'package:starbelly/component/results/policy.dart';
import 'package:starbelly/component/results/success.dart';

/// A component for handling routes under /results.
@Component(
    selector: 'result-router',
    template: '<router-outlet></router-outlet>',
    directives: const [ROUTER_DIRECTIVES]
)
@RouteConfig(const [
    const Route(
        path: '/',
        name: 'List',
        component: ResultListView),
    const Route(
        path: '/:id',
        name: 'Detail',
        component: ResultDetailView),
    const Route(
        path: '/:id/error',
        name: 'Error',
        component: ResultErrorView),
    const Route(
        path: '/:id/exception',
        name: 'Exception',
        component: ResultExceptionView),
    const Route(
        path: '/:id/policy',
        name: 'Policy',
        component: ResultPolicyView),
    const Route(
        path: '/:id/success',
        name: 'Success',
        component: ResultSuccessView),
])
class ResultRouter {}
