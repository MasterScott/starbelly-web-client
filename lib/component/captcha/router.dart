import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:starbelly/component/captcha/detail.dart';
import 'package:starbelly/component/captcha/list.dart';

/// A component for handling routes under /captcha.
@Component(
    selector: 'captcha-router',
    template: '<router-outlet></router-outlet>',
    directives: const [RouterLink]
)
@RouteConfig(const [
    const Route(
        path: '/',
        name: 'List',
        component: CaptchaListView),
    const Route(
        path: '/new',
        name: 'Create',
        component: CaptchaDetailView),
    const Route(
        path: '/:id',
        name: 'Detail',
        component: CaptchaDetailView),
])
class CaptchaRouter {}
