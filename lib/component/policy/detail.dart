import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_fontawesome/ng2_fontawesome.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';
import 'package:ng2_modular_admin/validators.dart' as MaValidators;

import 'package:starbelly/model/policy.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View details about a crawl.
@Component(
    selector: 'policy-detail',
    styles: const ['''
        .edit-buttons {
            padding-left: 0.5em;
        }
        .limits-labels {
            text-align: right;
            width: 15em;
        }
        ma-input-group {
            max-width: 30em;
        }
        .metadata-labels {
            text-align: right;
            width: 10em;
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
        .url-amount {
            max-width: 5em;
        }
        .user-agent {
            width: 30em;
        }
    '''],
    templateUrl: 'detail.html',
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class PolicyDetailView implements AfterViewInit {
    bool newPolicy;
    Policy policy;
    String saveError = '';
    bool saveSuccess = false;

    var ACTION_ADD = pb.PolicyUrlRule_Action.ADD;
    var ACTION_MULTIPLY = pb.PolicyUrlRule_Action.MULTIPLY;

    var MATCHES = pb.PatternMatch.MATCHES;
    var DOES_NOT_MATCH = pb.PatternMatch.DOES_NOT_MATCH;

    var OBEY = pb.PolicyRobotsTxt_Usage.OBEY;
    var INVERT = pb.PolicyRobotsTxt_Usage.INVERT;
    var IGNORE = pb.PolicyRobotsTxt_Usage.IGNORE;

    DocumentService _document;
    Router _router;
    RouteParams _routeParams;
    ServerService _server;

    /// Constructor
    PolicyDetailView(this._document, this._router, this._routeParams,
        this._server) {
        this._document.title = 'Crawl Policy';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Crawl Policy', icon: 'cogs',
                link: ['/Policy', 'List']),
            new Breadcrumb(name: 'Policy'),
        ];

        this.newPolicy = (this._routeParams.get('id') == null);
    }

    /// Add a penultimate MIME rule.
    void addMimeRule() {
        this.policy.mimeTypeRules.insert(
            this.policy.mimeTypeRules.length - 1,
            new PolicyMimeTypeRule.defaultSettings()
        );
    }

    /// Add a proxy rule.
    void addProxyRule() {
        this.policy.proxyRules.insert(
            this.policy.proxyRules.length - 1,
            new PolicyProxyRule.defaultSettings()
        );
    }

    /// Add a penultimate URL rule.
    void addUrlRule() {
        this.policy.urlRules.insert(
            this.policy.urlRules.length - 1,
            new PolicyUrlRule.defaultSettings()
        );
    }

    /// Add a user agent to the end of the list.
    void addUserAgent() {
        this.policy.userAgents.add(new PolicyUserAgent.blank());
    }

    /// Delete an item from a list.
    void delete(List list, int index) {
        list.removeAt(index);
    }

    /// Move an item down one position in a list.
    void moveDown(List list, int index) {
        list.insert(index + 1, list.removeAt(index));
    }

    /// Move an item up one position in a list.
    void moveUp(List list, int index) {
        list.insert(index - 1, list.removeAt(index));
    }

    /// Called when Angular initializes the view.
    ngAfterViewInit() async {
        if (this.newPolicy) {

            this.policy = new Policy.defaultSettings();
            this._document.title = 'New Policy';
            this._document.breadcrumbs.last.name = 'New Policy';
        } else {
            var request = new pb.Request();
            request.getPolicy = new pb.RequestGetPolicy()
                ..policyId = convert.hex.decode(this._routeParams.get('id'));
            var message = await this._server.sendRequest(request);
            this.policy = new Policy.fromPb(message.response.policy);
            this._document.title = 'Policy: ${this.policy.name}';
            this._document.breadcrumbs.last.name = this.policy.name;
        }
    }

    /// Save the current policy.
    ///
    /// If a new policy is created, then redirect to that new policy.
    save(ButtonClick click) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.setPolicy = new pb.RequestSetPolicy();
        request.setPolicy.policy = this.policy.toPb();
        try {
            var message = await this._server.sendRequest(request);
            var response = message.response;
            saveError = '';
            saveSuccess = true;
            if (response.hasNewPolicy()) {
                var policyId = convert.hex.encode(response.newPolicy.policyId);
                this._router.navigate(['../Detail', {"id": policyId}]);
            } else {
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

    /// Set the usage field of the robots.txt policy.
    void setRobotsTxtUsage(pb.PolicyRobotsTxt_Usage usage) {
        this.policy.robotsTxt.usage = usage;
    }

    /// Sort user agents by name (ascending).
    void sortUserAgents() {
        this.policy.userAgents.sort(
            (a,b) => a.name.toUpperCase().compareTo(b.name.toUpperCase())
        );
    }
}
