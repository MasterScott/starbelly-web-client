import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:starbelly/component/schedule/detail.dart';
import 'package:starbelly/component/schedule/jobs.dart';
import 'package:starbelly/component/schedule/list.dart';

/// A component for handling routes under /schedule.
@Component(
    selector: 'schedule-router',
    template: '<router-outlet></router-outlet>',
    directives: const [RouterLink]
)
@RouteConfig(const [
    const Route(
        path: '/new',
        name: 'Create',
        component: ScheduleDetailView),
    const Route(
        path: '/:id',
        name: 'Detail',
        component: ScheduleDetailView),
    const Route(
        path: '/:id/jobs',
        name: 'Jobs',
        component: ScheduleListJobsView),
    const Route(
        path: '/',
        name: 'List',
        component: ScheduleListView),
])
class ScheduleRouter {}
