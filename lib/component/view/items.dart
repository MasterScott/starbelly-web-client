import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:angular2/core.dart';
import 'package:convert/convert.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/protobuf/protobuf.dart' as pb;
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
        var jobIdStr = hex.encode(status.jobId);
        this.following[status] = !(this.following[status] ?? false);

        if (this.following[status]) {
            var request = new pb.Request();
            request.subscribeJobSync = new pb.RequestSubscribeJobSync();
            request.subscribeJobSync.jobId = status.jobId;
            request.subscribeJobSync.compressionOk = false;

            if (this._sync_tokens.containsKey(jobIdStr)) {
                request.subscribeJobSync.syncToken = this._sync_tokens[jobIdStr];
            }

            var response = await this._server.sendRequest(request);

            this._subscriptions[jobIdStr] = response.subscription.listen(
                this._handleCrawlItem,
                onError: (error) => print('Subscription error: ' + error),
                onDone: () {
                    this._subscriptions.remove(jobIdStr);
                    this.following[status] = false;
                }
            );
        } else {
            this._subscriptions.remove(jobIdStr).cancel();
        }
    }

    /// Get title from an HTML document (or N/A if it doesn't have a title).
    void _getHtmlTitle(ByteBuffer body) {
        var parser = new DomParser();
        var doc = parser.parseFromString(body, 'text/html');
        return doc.querySelector('title').text;
    }

    /// Handle a crawl item event.
    void _handleCrawlItem(pb.Event event) {
        //TODO handle non utf-8 encodings
        var title;
        try {
            var body = UTF8.decode(event.crawlItem.body);
            title = this._getHtmlTitle(body);
        } catch (exc, stack) {
            title = 'N/A';
        }
        var crawlItem = {
            'duration': event.crawlItem.duration,
            'flash_on': true,
            'title': title,
            'url': event.crawlItem.url,
        };
        this.items.insert(0, crawlItem);
        if (this.items.length > 10) {
            this.items.removeLast();
        }
        var jobIdStr = hex.encode(event.crawlItem.jobId);
        var syncToken = event.crawlItem.syncToken;
        this._sync_tokens[jobIdStr] = syncToken;
        new Timer(new Duration(milliseconds: 500), () {
            crawlItem['flash_on'] = false;
        });
    }
}
