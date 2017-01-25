import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/service/crawl_status.dart';
import 'package:starbelly/service/document.dart';

/// View status of each crawl.
@Component(
    selector: 'crawl-status',
    templateUrl: 'status.html',
    directives: const [MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class CrawlStatusView implements OnInit {
    List<Map> crawls;
    String rateLimit = '';
    String seedUrl = '';

    CrawlStatusService crawlStatus;

    StreamSubscription _subscription;
    DocumentService _document;

    /// Constructor
    CrawlStatusView(this.crawlStatus, this._document) {
        this._document.title = 'Crawl Status';
    }

    /// When this component is created, reset the new crawl count.
    void ngOnInit() {
        this.crawlStatus.resetNewCrawlCount();
    }
}
