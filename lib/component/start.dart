import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

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
class StartCrawlView {
    String name = '';
    String seedUrl = '';

    ControlGroup form;
    Control nameControl, seedUrlControl;

    bool _autoName = true;
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

    /// Request a new crawl.
    startCrawl() async {
        var request = new pb.Request();
        request.startJob = new pb.RequestStartJob();
        request.startJob.name = this.name;
        request.startJob.seeds.add(this.seedUrl);
        var response = await this._server.sendRequest(request);
        this._initForm();
    }

    /// Initialize form controls.
    void _initForm() {
        this.nameControl = new Control('');
        this.seedUrlControl = new Control('', Validators.compose([validate.required(), validate.url()]));
        this.form = new ControlGroup({
            'name': this.nameControl,
            'seedUrl': this.seedUrlControl,
        });
    }
}
