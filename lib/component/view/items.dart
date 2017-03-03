import 'dart:async';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/model/job_status.dart';
import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';

/// View crawl items.
@Component(
    selector: 'crawl-items',
    styles: const ['''
        .flashable { transition: background-color var(--ma-slow-animation) ease-out; }
        .flash-on { background-color: var(--ma-info-color-light) !important; }
    '''],
    templateUrl: 'items.html',
    directives: const [MA_DIRECTIVES]
)
class CrawlItemsView implements OnDestroy {
    JobStatusService jobStatus;
    Map<JobStatus,bool> following;
    List<Map> items;

    DocumentService _document;
    ServerService _server;
    Map<String,StreamSubscription> _subscriptions;
    Map<String,String> _sync_tokens;

    /// Constructor
    CrawlItemsView(this.jobStatus, this._document, this._server) {
        this._document.title = 'Crawl Items';
        this.following = {};
        this.items = [];
        this._subscriptions = {};
        this._sync_tokens = {};
    }

    /// Cancel all subscriptions before the component is destroyed.
    Future<Null> ngOnDestroy() async {
        this._subscriptions.values.forEach((sub) => sub.cancel());
    }

    /// Toggle the follow status for the specified crawl.
    Future<Null> toggleFollow(JobStatus status) async {
        this.following[status] = !(this.following[status] ?? false);

        if (this.following[status]) {
            var args = {'job_id': status.jobId};

            if (this._sync_tokens.containsKey(status.jobId)) {
                args['sync_token'] = this._sync_tokens[status.jobId];
            }

            var response = await this._server.command(
                'subscribe_crawl_sync', args
            );

            this._subscriptions[status.jobId] = response.subscription.listen(
                this._handleCrawlItem
            );
        } else {
            this._subscriptions.remove(status.jobId).cancel();
        }
    }

    /// Get title from an HTML document (or N/A if it doesn't have a title).
    void _getHtmlTitle(String body) {
        var parser = new DomParser();
        var doc = parser.parseFromString(body, 'text/html');
        return doc.querySelector('title').text;
    }

    /// Handle a crawl item event.
    void _handleCrawlItem(ServerEvent event) {
        var crawlItem = event.data;
        crawlItem['title'] = this._getHtmlTitle(window.atob(crawlItem['body']));
        crawlItem['flash_on'] = true;
        this.items.insert(0, crawlItem);
        if (this.items.length > 10) {
            this.items.removeLast();
        }
        var jobId = event.data['job_id'];
        var syncToken = event.data['sync_token'];
        this._sync_tokens[jobId] = syncToken;
        new Timer(new Duration(milliseconds: 500), () {
            crawlItem['flash_on'] = false;
        });
    }
}
