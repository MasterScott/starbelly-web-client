import 'package:angular/core.dart';
import 'package:ng_fontawesome/ng_fontawesome.dart';

/// Display an external URL.
///
/// If the URL is on the open web, then turn it into a hyperlink. Otherwise,
/// display the URL as plain text.
@Component(
    selector: 'external-link',
    templateUrl: 'external_link.html',
    styles: const ['''
        :host {
            display: inline;
        }
    '''],
    directives: const [FA_DIRECTIVES]
)
class ExternalLinkComponent implements OnChanges {
    @Input()
    String href;

    bool link = false;

    /// Implementation of OnChanges.
    void ngOnChanges(var changes) {
        if (this.href != null) {
            var uri = Uri.parse(this.href);
            var dark = uri.host.endsWith('.onion') || uri.host.endsWith('.i2p');
            this.link = !dark;
        }
    }
}
