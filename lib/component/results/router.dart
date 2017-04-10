import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:starbelly/component/results/detail.dart';
import 'package:starbelly/component/results/error.dart';
import 'package:starbelly/component/results/exception.dart';
import 'package:starbelly/component/results/list.dart';
import 'package:starbelly/component/results/success.dart';

/// A component for handling routes under /results.
@Component(
    selector: 'results-router',
    template: '<router-outlet></router-outlet>',
    directives: const [ROUTER_DIRECTIVES]
)
@RouteConfig(const [
    const Route(
        path: '/',
        name: 'List',
        component: ResultsListView),
    const Route(
        path: '/:id',
        name: 'Detail',
        component: ResultsDetailView),
    const Route(
        path: '/:id/error',
        name: 'Error',
        component: ResultsErrorView),
    const Route(
        path: '/:id/exception',
        name: 'Exception',
        component: ResultsExceptionView),
    const Route(
        path: '/:id/success',
        name: 'Success',
        component: ResultsSuccessView),
])
class ResultsRouter {}
