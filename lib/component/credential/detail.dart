import 'dart:async';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/domain_login.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a credential.
@Component(
    selector: 'credential-detail',
    styles: const ['''
        table {
            table-layout: fixed;
        }
        th:nth-child(1) {
            width: 35%;
        }
        th:nth-child(2) {
            width: 40%;
        }
        th:nth-child(3) {
            width: 25%;
        }
        td span.masked, td:hover span.unmasked {
            display: inline;
        }
        td span.unmasked, td:hover span.masked {
            display: none;
        }
        label {
            width: 8em;
        }
    '''],
    templateUrl: 'detail.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class CredentialDetailView implements AfterViewInit {
    String addError;
    String domain;
    DomainLogin domainLogin;
    bool dirty = false;
    String saveError = '';
    bool saveSuccess;
    bool showAddUser = false;

    DocumentService _document;
    RouteParams _routeParams;
    ServerService _server;

    /// Constructor
    CredentialDetailView(this._document, this._routeParams, this._server) {
        this.domain = this._routeParams.get('domain');
        this._document.title = domain;
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Configuration', icon: 'cogs'),
            new Breadcrumb(name: 'Credentials', icon: 'key',
                link: ['/Credential', 'List']),
            new Breadcrumb(name: domain),
        ];

    }

    /// Add a user.
    addUser(MaClick click, Element usernameEl, Element passwordEl) async {
        var username = usernameEl.value;
        var password = passwordEl.value;
        if (username.isEmpty || password.isEmpty) {
            this.addError = 'Username and password are required.';
        } else {
            this.addError = null;
            this.dirty = true;
            var user = new DomainLoginUser(username, password);
            this.domainLogin.users.add(user);
            usernameEl.value = '';
            passwordEl.value = '';
            this.showAddUser = false;
        }
    }

    /// Delete a user.
    deleteUser(MaClick click, int index) async {
        this.dirty = true;
        this.domainLogin.users.removeAt(index);
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        var request = new pb.Request();
        request.getDomainLogin = new pb.RequestGetDomainLogin()
            ..domain = this.domain;
        var message = await this._server.sendRequest(request);
        this.domainLogin = new DomainLogin.fromPb(message.response.domainLogin);
    }

    /// Save credential.
    save(MaClick click) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.setDomainLogin = new pb.RequestSetDomainLogin()
            ..login = this.domainLogin.toPb();
        var message = await this._server.sendRequest(request);
        this.saveError = '';
        click.button.busy = false;
        if (message.response.isSuccess) {
            this.saveSuccess = true;
            new Timer(new Duration(seconds: 3), () {
                this.saveSuccess = false;
            });
        } else {
            this.saveError = message.response.errorMessage;
        }
    }

    /// Set the login URL.
    setLoginUrl(String loginUrl) {
        this.dirty = true;
        this.domainLogin.loginUrl = loginUrl;
    }
}
