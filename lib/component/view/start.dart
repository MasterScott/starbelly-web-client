import 'dart:async';
import 'dart:html';

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/validate.dart' as validate;

/// View and manage crawls.
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
    String rateLimit = '';
    String seedUrl = '';

    ControlGroup form;
    Control seedUrlControl, rateLimitControl;

    ToastService toast;

    ServerService _server;
    DocumentService _document;

    /// Constructor
    CrawlStartView(this._document, this._server, this.toast) {
        this._document.title = 'Start Crawl';

        this.seedUrlControl = new Control('', Validators.compose([validate.required(), validate.url()]));
        this.rateLimitControl = new Control('', validate.number(min: 0));
        this.form = new ControlGroup({
            'seedUrl': this.seedUrlControl,
            'rateLimit': this.rateLimitControl,
        });
    }

    /// Request a new crawl.
    startCrawl() async {
        var command_arg = {'url': this.seedUrl};

        if (this.rateLimit.isNotEmpty) {
            command_arg['rate_limit'] = num.parse(this.rateLimit);
        }

        var response = await this._server.command('start_crawl', {
            'seeds': [command_arg]
        });

        var uri = Uri.parse(this.seedUrl);
        this.toast.add(
            'primary',
            'Crawl started.',
            uri.host,
            icon: 'play-circle'
        );

        this.seedUrl = '';
        this.seedUrlControl = new Control('', Validators.compose([validate.required(), validate.url()]));
        this.form = new ControlGroup({
            'seedUrl': this.seedUrlControl,
            'rateLimit': this.rateLimitControl,
        });
    }
}
