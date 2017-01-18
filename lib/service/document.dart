import 'dart:html';

import 'package:angular2/core.dart';

/// A service for manipulating global (i.e. document level) state.
@Injectable()
class DocumentService {
    String _title;

    /// Document title property.
    String get title => this._title;

    void set title(String t) {
        document.title = '$t — Starbelly';
    }

    /// Constructor.
    DocumentService() {
        this.title = 'Loading…';
    }
}
