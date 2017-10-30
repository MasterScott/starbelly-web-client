import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:starbelly/component/captcha/detail.dart';
import 'package:starbelly/component/captcha/list.dart';

/// A component for handling routes under /captcha.
@Component(
    selector: 'captcha-router',
    template: '<router-outlet></router-outlet>',
    directives: const [ROUTER_DIRECTIVES]
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
