import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

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
class CrawlStartView {
    String name = '';
    String seedUrl = '';

    ControlGroup form;
    Control nameControl, seedUrlControl;

    ToastService toast;

    bool _autoName = true;
    ServerService _server;
    DocumentService _document;

    /// Constructor
    CrawlStartView(this._document, this._server, this.toast) {
        this._document.title = 'Start Crawl';
        this._initForm();
    }

    /// Request a new crawl.
    startCrawl() async {
        var response = await this._server.command('job.start', {
            'name': this.name,
            'seeds': [this.seedUrl],
        });

        var message;

        if (this.name.isEmpty) {
            var uri = Uri.parse(this.seedUrl);
            message = uri.host;
        } else {
            message = this.name;
        }

        this.toast.add(
            'primary',
            'Crawl started.',
            message,
            icon: 'play-circle'
        );

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
