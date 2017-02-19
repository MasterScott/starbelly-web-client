import 'dart:async';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:logging/logging.dart';

import 'package:starbelly/model/job_status.dart';
import 'package:starbelly/service/server.dart';

/// A service for tracking crawl state, statistics, etc.
@Injectable()
class JobStatusService {
    List<JobStatus> get jobs => _jobs;
    int get newJobCount => _newJobCount;
    String get newJobBadge =>
        _newJobCount == 0 ? '' : _newJobCount.toString();

    Map<int,JobStatus> _jobMap;
    List<JobStatus> _jobs;
    int _newJobCount = 0;
    ServerService _server;
    StreamSubscription _subscription;

    final Logger log = new Logger('JobStatusService');

    /// Constructor.
    JobStatusService(this._server) {
        this._jobs = [];
        this._jobMap = {};

        // Subscribe automatically whenever we connect to the server.
        this._server.connected.listen((isConnected) {
            if (isConnected) {
                this._subscribe();
            } else if (this._subscription != null) {
                // We can't cancel the subscription because we aren't connected
                // to the server. We'll assume the server cancels subscriptions
                // when it closes a socket.
                this._subscription = null;
            }
        });
    }

    /// Reset the new job count.
    void resetNewJobCount() {
        this._newJobCount = 0;
    }

    /// Subscribe to crawl status events.
    _subscribe() async {
        var response = await this._server.command(
            'subscribe_job_status',
            {'min_interval': 1}
        );

        log.info("Subscribed to crawl status.");

        this._subscription = response.subscription.listen((event) {
            event.data.forEach((jobId, status) {
                if (this._jobMap[jobId] == null) {
                    var newJob = new JobStatus(jobId.toString(), status);
                    this._jobMap[jobId] = newJob;
                    this._jobs.add(newJob);
                    this._newJobCount++;
                } else {
                    this._jobMap[jobId].merge(status);
                }
            });
        });
    }
}
