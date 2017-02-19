import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';

import 'package:starbelly/service/job_status.dart';
import 'package:starbelly/service/document.dart';

/// View status of each crawl.
@Component(
    selector: 'crawl-status',
    templateUrl: 'status.html',
    directives: const [MA_DIRECTIVES, ROUTER_DIRECTIVES]
)
class JobStatusView implements OnInit {
    String rateLimit = '';
    String seedUrl = '';

    JobStatusService jobStatus;

    StreamSubscription _subscription;
    DocumentService _document;

    /// Constructor
    JobStatusView(this.jobStatus, this._document) {
        this._document.title = 'Job Status';
    }

    /// When this component is created, reset the new job count.
    void ngOnInit() {
        this.jobStatus.resetNewJobCount();
    }
}
