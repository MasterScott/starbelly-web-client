///
//  Generated code. Do not modify.
///
library starbelly_client_pbjson;

const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 5},
    const {'1': 'delete_job', '3': 2, '4': 1, '5': 11, '6': '.starbelly.RequestDeleteJob'},
    const {'1': 'list_jobs', '3': 3, '4': 1, '5': 11, '6': '.starbelly.RequestListJobs'},
    const {'1': 'get_job', '3': 4, '4': 1, '5': 11, '6': '.starbelly.RequestGetJob'},
    const {'1': 'get_job_items', '3': 5, '4': 1, '5': 11, '6': '.starbelly.RequestGetJobItems'},
    const {'1': 'get_rate_limits', '3': 6, '4': 1, '5': 11, '6': '.starbelly.RequestGetRateLimits'},
    const {'1': 'ping', '3': 7, '4': 1, '5': 11, '6': '.starbelly.RequestPing'},
    const {'1': 'set_job_run_state', '3': 8, '4': 1, '5': 11, '6': '.starbelly.RequestSetJobRunState'},
    const {'1': 'set_rate_limit', '3': 9, '4': 1, '5': 11, '6': '.starbelly.RequestSetRateLimit'},
    const {'1': 'start_job', '3': 10, '4': 1, '5': 11, '6': '.starbelly.RequestStartJob'},
    const {'1': 'subscribe_job_status', '3': 11, '4': 1, '5': 11, '6': '.starbelly.RequestSubscribeJobStatus'},
    const {'1': 'subscribe_job_sync', '3': 12, '4': 1, '5': 11, '6': '.starbelly.RequestSubscribeJobSync'},
    const {'1': 'unsubscribe', '3': 13, '4': 1, '5': 11, '6': '.starbelly.RequestUnsubscribe'},
  ],
};

const RequestDeleteJob$json = const {
  '1': 'RequestDeleteJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
  ],
};

const RequestListJobs$json = const {
  '1': 'RequestListJobs',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Page'},
  ],
};

const RequestGetJob$json = const {
  '1': 'RequestGetJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
  ],
};

const RequestGetJobItems$json = const {
  '1': 'RequestGetJobItems',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'include_success', '3': 2, '4': 1, '5': 8},
    const {'1': 'include_error', '3': 3, '4': 1, '5': 8},
    const {'1': 'include_exception', '3': 4, '4': 1, '5': 8},
    const {'1': 'compression_ok', '3': 5, '4': 1, '5': 8, '7': 'true'},
    const {'1': 'page', '3': 6, '4': 1, '5': 11, '6': '.starbelly.Page'},
  ],
};

const RequestGetRateLimits$json = const {
  '1': 'RequestGetRateLimits',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Page'},
  ],
};

const RequestPing$json = const {
  '1': 'RequestPing',
  '2': const [
    const {'1': 'pong', '3': 1, '4': 1, '5': 9},
  ],
};

const RequestSetJobRunState$json = const {
  '1': 'RequestSetJobRunState',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'run_state', '3': 2, '4': 2, '5': 14, '6': '.starbelly.JobRunState'},
  ],
};

const RequestSetRateLimit$json = const {
  '1': 'RequestSetRateLimit',
  '2': const [
    const {'1': 'rate_limit', '3': 1, '4': 2, '5': 11, '6': '.starbelly.RateLimit'},
  ],
};

const RequestStartJob$json = const {
  '1': 'RequestStartJob',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9},
    const {'1': 'seeds', '3': 2, '4': 3, '5': 9},
  ],
};

const RequestSubscribeJobStatus$json = const {
  '1': 'RequestSubscribeJobStatus',
  '2': const [
    const {'1': 'min_interval', '3': 1, '4': 1, '5': 1, '7': '1'},
  ],
};

const RequestSubscribeJobSync$json = const {
  '1': 'RequestSubscribeJobSync',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'sync_token', '3': 2, '4': 1, '5': 12},
    const {'1': 'compression_ok', '3': 3, '4': 1, '5': 8, '7': 'true'},
  ],
};

const RequestUnsubscribe$json = const {
  '1': 'RequestUnsubscribe',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5},
  ],
};

