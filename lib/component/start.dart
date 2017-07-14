import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:convert/convert.dart' as convert;
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/policy.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/validate.dart' as validate;

/// Start a new crawl job.
@Component(
    selector: 'crawl-start',
    templateUrl: 'start.html',
    styles: const ['''
        form {
            max-width: 30em;
        }
    '''],
    directives: const [MA_DIRECTIVES]
)
class StartCrawlView implements AfterViewInit {
    ControlGroup form;
    List<Policy> policies;
    String name = '';
    Control nameControl;
    String policyId;
    String seedUrl = '';
    Control seedUrlControl;
    Policy selectedPolicy;
    String tags = '';
    Control tagsControl;

    bool _autoName = true;
    List<int> policyIds;
    ServerService _server;
    DocumentService _document;

    /// Constructor
    StartCrawlView(this._document, this._server) {
        this._document.title = 'Start Crawl';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'Start Crawl', icon: 'play-circle')
        ];
        this._initForm();
    }

    /// Load policy names into select.
    ngAfterViewInit() async {
        var request = new pb.Request()
            ..listPolicies = new pb.RequestListPolicies();
        request.listPolicies.page = new pb.Page()
            ..limit = 100
            ..offset = 0;
        var message = await this._server.sendRequest(request);
        var policies = message.response.listPolicies.policies;
        if (policies.length > 0) {
            this.policies = new List<PolicyOptionView>.generate(
                policies.length,
                (i) => new Policy.fromPb(policies[i])
            );
            this.selectedPolicy = this.policies[0];
        }
    }

    /// Request a new crawl.
    startCrawl() async {
        var request = new pb.Request();
        request.setJob = new pb.RequestSetJob()
            ..name = this.name
            ..runState = pb.JobRunState.RUNNING
            ..policyId = convert.hex.decode(this.selectedPolicy.policyId)
            ..seeds.add(this.seedUrl)
            ..tagList = new pb.TagList();
        for (var tagStr in this.tags.split(new RegExp('\s+'))) {
            request.setJob.tagList.tags.add(tagStr.trim());
        }
        var response = await this._server.sendRequest(request);
        this._initForm();
    }

    /// Initialize form controls.
    void _initForm() {
        this.nameControl = new Control('');
        this.seedUrlControl = new Control('', Validators.compose([
            validate.required(), validate.url()]));
        this.tagsControl = new Control('');
        this.form = new ControlGroup({
            'name': this.nameControl,
            'seedUrl': this.seedUrlControl,
            'tags': this.tagsControl,
        });
    }
}
