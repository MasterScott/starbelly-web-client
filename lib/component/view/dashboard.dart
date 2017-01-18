import 'package:angular2/core.dart';

import 'package:starbelly/service/document.dart';

/// Crawl dashboard.
@Component(
    selector: 'dashboard',
    templateUrl: 'dashboard.html'
)
class CrawlDashboardView {
    DocumentService _doc;

    CrawlDashboardView(this._doc) {
        this._doc.title = 'Crawl Dashboard';
    }
}
