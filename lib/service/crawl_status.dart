import 'dart:async';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:logging/logging.dart';

import 'package:starbelly/model/crawl_status.dart';
import 'package:starbelly/service/server.dart';

/// A service for tracking crawl state, statistics, etc.
@Injectable()
class CrawlStatusService {
    List<CrawlStatus> get crawls => _crawls;
    int get newCrawlCount => _newCrawlCount;
    String get newCrawlBadge =>
        _newCrawlCount == 0 ? '' : _newCrawlCount.toString();

    Map<int,CrawlStatus> _crawlMap;
    List<CrawlStatus> _crawls;
    int _newCrawlCount = 0;
    ServerService _server;
    StreamSubscription _subscription;

    final Logger log = new Logger('CrawlStatusService');

    /// Constructor.
    CrawlStatusService(this._server) {
        this._crawls = [];
        this._crawlMap = {};
        this._ensureSubscription();
    }

    /// Reset the new crawl count.
    void resetNewCrawlCount() {
        this._newCrawlCount = 0;
    }

    /// Make sure we are subscribed to crawl status events.
    _ensureSubscription() async {
        if (this._subscription != null) {
            return;
        }

        var response = await this._server.command(
            'subscribe_crawl_status',
            {'min_interval': 1}
        );

        log.info("Subscribed to crawl status.");

        this._subscription = response.subscription.listen((event) {
            event.data.forEach((crawlId, status) {
                if (this._crawlMap[crawlId] == null) {
                    var newCrawl = new CrawlStatus(crawlId.toString(), status);
                    this._crawlMap[crawlId] = newCrawl;
                    this._crawls.add(newCrawl);
                    this._newCrawlCount++;
                } else {
                    this._crawlMap[crawlId].update(status);
                }
            });
        });
    }
}
