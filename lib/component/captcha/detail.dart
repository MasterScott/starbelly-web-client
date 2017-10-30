import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';
import 'package:ng2_modular_admin/validators.dart' as MaValidators;

import 'package:starbelly/model/captcha.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a CAPTCHA solver.
@Component(
    selector: 'captcha-detail',
    styles: const ['''
        label input[type="checkbox"] {
            margin-left: 0.7em;
        }
        ma-input-group {
            max-width: 75%;
        }
        .form-labels {
            text-align: right;
            width: 10em;
        }
        ma-checkbox-group.inline label {
            display: inherit;
            margin-left: -0.9em;
        }
        p.legend {
            margin-left: 10.4em;
            margin-top: -0.8em;
            font-size: 10pt;
        }
        .row.buttons {
            /* Make space for success/error message. Kind of a hack: would be
             * better to scroll the view port?
             */
            min-height: 5em;
        }
        .result {
            position: relative;
            top: -1em;
        }
    '''],
    templateUrl: 'detail.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class CaptchaDetailView implements AfterViewInit {
    bool newSolver;
    CaptchaSolver solver;
    String saveError = '';
    bool saveSuccess = false;

    var ALPHANUMERIC = pb.CaptchaSolverAntigateCharacters.ALPHANUMERIC;
    var NUMBERS_ONLY = pb.CaptchaSolverAntigateCharacters.NUMBERS_ONLY;
    var ALPHA_ONLY = pb.CaptchaSolverAntigateCharacters.ALPHA_ONLY;

    DocumentService _document;
    Router _router;
    RouteParams _routeParams;
    ServerService _server;

    /// Constructor
    CaptchaDetailView(this._document, this._router, this._routeParams,
        this._server) {
        this._document.title = 'CAPTCHA Solver';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'CAPTCHA Solvers', icon: 'eye',
                link: ['/Captcha', 'List']),
            new Breadcrumb(name: 'CAPTCHA Solver'),
        ];

        this.newSolver = (this._routeParams.get('id') == null);
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        if (this.newSolver) {
            this.solver = new CaptchaSolver('New Solver');
            this._document.title = 'New Solver';
            this._document.breadcrumbs.last.name = 'New Solver';
        } else {
            var request = new pb.Request();
            request.getCaptchaSolver = new pb.RequestGetCaptchaSolver()
                ..solverId = convert.hex.decode(this._routeParams.get('id'));
            var message = await this._server.sendRequest(request);
            this.solver = new CaptchaSolver.fromPb(message.response.solver);
            this._document.title = 'CAPTCHA Solver: ${this.solver.name}';
            this._document.breadcrumbs.last.name = this.solver.name;
        }
    }

    /// Save the current CAPTCHA solver.
    ///
    /// If a new solver is created, then redirect to that new solver.
    save(ButtonClick click) async {
        click.button.busy = true;
        var request = new pb.Request()
            ..setCaptchaSolver = new pb.RequestSetCaptchaSolver();
        request.setCaptchaSolver.solver = this.solver.toPb();

        try {
            var message = await this._server.sendRequest(request);
            var response = message.response;
            saveError = '';
            saveSuccess = true;
            if (response.hasNewSolver()) {
                var solverId = convert.hex.encode(response.newSolver.solverId);
                this._router.navigate(['../Detail', {"id": solverId}]);
            } else {
                this._document.breadcrumbs.last.name = this.solver.name;
                new Timer(new Duration(seconds: 3), () {
                    this.saveSuccess = false;
                });
            }
        } on ServerException catch (exc) {
            saveError = 'Cannot save: ${exc.message}';
            saveSuccess = false;
        }
        click.button.busy = false;
    }
}
