import 'dart:html';

import 'package:angular/core.dart';

/// A service for manipulating global (i.e. document level) state.
@Injectable()
class DocumentService {
    List<Breadcrumb> breadcrumbs;
    String _title;

    /// Document title property.
    String get title => this._title;

    void set title(String t) {
        document.title = '$t — Starbelly';
    }

    /// Constructor.
    DocumentService() {
        this.breadcrumbs = [];
        this.title = 'Loading…';
    }
}

/// A breadcrumb for navigation.
class Breadcrumb {
    String icon;
    String name;
    List link;
    Breadcrumb({this.icon, this.name, this.link});
}
