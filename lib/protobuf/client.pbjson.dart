///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: library_prefixes
library starbelly_client_pbjson;

const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 5, '10': 'requestId'},
    const {'1': 'delete_job', '3': 2, '4': 1, '5': 11, '6': '.starbelly.RequestDeleteJob', '9': 0, '10': 'deleteJob'},
    const {'1': 'delete_policy', '3': 3, '4': 1, '5': 11, '6': '.starbelly.RequestDeletePolicy', '9': 0, '10': 'deletePolicy'},
    const {'1': 'get_job', '3': 4, '4': 1, '5': 11, '6': '.starbelly.RequestGetJob', '9': 0, '10': 'getJob'},
    const {'1': 'get_job_items', '3': 5, '4': 1, '5': 11, '6': '.starbelly.RequestGetJobItems', '9': 0, '10': 'getJobItems'},
    const {'1': 'get_policy', '3': 6, '4': 1, '5': 11, '6': '.starbelly.RequestGetPolicy', '9': 0, '10': 'getPolicy'},
    const {'1': 'get_rate_limits', '3': 7, '4': 1, '5': 11, '6': '.starbelly.RequestGetRateLimits', '9': 0, '10': 'getRateLimits'},
    const {'1': 'list_jobs', '3': 8, '4': 1, '5': 11, '6': '.starbelly.RequestListJobs', '9': 0, '10': 'listJobs'},
    const {'1': 'list_policies', '3': 9, '4': 1, '5': 11, '6': '.starbelly.RequestListPolicies', '9': 0, '10': 'listPolicies'},
    const {'1': 'performance_profile', '3': 10, '4': 1, '5': 11, '6': '.starbelly.RequestPerformanceProfile', '9': 0, '10': 'performanceProfile'},
    const {'1': 'ping', '3': 11, '4': 1, '5': 11, '6': '.starbelly.RequestPing', '9': 0, '10': 'ping'},
    const {'1': 'set_job', '3': 12, '4': 1, '5': 11, '6': '.starbelly.RequestSetJob', '9': 0, '10': 'setJob'},
    const {'1': 'set_policy', '3': 13, '4': 1, '5': 11, '6': '.starbelly.RequestSetPolicy', '9': 0, '10': 'setPolicy'},
    const {'1': 'set_rate_limit', '3': 14, '4': 1, '5': 11, '6': '.starbelly.RequestSetRateLimit', '9': 0, '10': 'setRateLimit'},
    const {'1': 'subscribe_job_status', '3': 15, '4': 1, '5': 11, '6': '.starbelly.RequestSubscribeJobStatus', '9': 0, '10': 'subscribeJobStatus'},
    const {'1': 'subscribe_job_sync', '3': 16, '4': 1, '5': 11, '6': '.starbelly.RequestSubscribeJobSync', '9': 0, '10': 'subscribeJobSync'},
    const {'1': 'subscribe_resource_monitor', '3': 17, '4': 1, '5': 11, '6': '.starbelly.RequestSubscribeResourceMonitor', '9': 0, '10': 'subscribeResourceMonitor'},
    const {'1': 'subscribe_task_monitor', '3': 18, '4': 1, '5': 11, '6': '.starbelly.RequestSubscribeTaskMonitor', '9': 0, '10': 'subscribeTaskMonitor'},
    const {'1': 'unsubscribe', '3': 19, '4': 1, '5': 11, '6': '.starbelly.RequestUnsubscribe', '9': 0, '10': 'unsubscribe'},
  ],
  '8': const [
    const {'1': 'Command'},
  ],
};

const RequestDeleteJob$json = const {
  '1': 'RequestDeleteJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12, '10': 'jobId'},
  ],
};

const RequestDeletePolicy$json = const {
  '1': 'RequestDeletePolicy',
  '2': const [
    const {'1': 'policy_id', '3': 1, '4': 2, '5': 12, '10': 'policyId'},
  ],
};

const RequestGetJob$json = const {
  '1': 'RequestGetJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12, '10': 'jobId'},
  ],
};

const RequestGetJobItems$json = const {
  '1': 'RequestGetJobItems',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12, '10': 'jobId'},
    const {'1': 'include_success', '3': 2, '4': 1, '5': 8, '10': 'includeSuccess'},
    const {'1': 'include_error', '3': 3, '4': 1, '5': 8, '10': 'includeError'},
    const {'1': 'include_exception', '3': 4, '4': 1, '5': 8, '10': 'includeException'},
    const {'1': 'compression_ok', '3': 5, '4': 1, '5': 8, '7': 'true', '10': 'compressionOk'},
    const {'1': 'page', '3': 6, '4': 1, '5': 11, '6': '.starbelly.Page', '10': 'page'},
  ],
};

const RequestGetPolicy$json = const {
  '1': 'RequestGetPolicy',
  '2': const [
    const {'1': 'policy_id', '3': 1, '4': 2, '5': 12, '10': 'policyId'},
  ],
};

const RequestGetRateLimits$json = const {
  '1': 'RequestGetRateLimits',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Page', '10': 'page'},
  ],
};

const RequestListJobs$json = const {
  '1': 'RequestListJobs',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Page', '10': 'page'},
    const {'1': 'started_after', '3': 2, '4': 1, '5': 9, '10': 'startedAfter'},
    const {'1': 'tag', '3': 3, '4': 1, '5': 9, '10': 'tag'},
  ],
};

const RequestListPolicies$json = const {
  '1': 'RequestListPolicies',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Page', '10': 'page'},
  ],
};

const RequestPerformanceProfile$json = const {
  '1': 'RequestPerformanceProfile',
  '2': const [
    const {'1': 'duration', '3': 1, '4': 1, '5': 1, '7': '5', '10': 'duration'},
    const {'1': 'sort_by', '3': 2, '4': 1, '5': 9, '7': 'time', '10': 'sortBy'},
    const {'1': 'top_n', '3': 3, '4': 1, '5': 5, '10': 'topN'},
  ],
};

const RequestPing$json = const {
  '1': 'RequestPing',
  '2': const [
    const {'1': 'pong', '3': 1, '4': 1, '5': 9, '10': 'pong'},
  ],
};

const RequestSetJob$json = const {
  '1': 'RequestSetJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 1, '5': 12, '10': 'jobId'},
    const {'1': 'run_state', '3': 2, '4': 1, '5': 14, '6': '.starbelly.JobRunState', '10': 'runState'},
    const {'1': 'policy_id', '3': 3, '4': 1, '5': 12, '10': 'policyId'},
    const {'1': 'seeds', '3': 4, '4': 3, '5': 9, '10': 'seeds'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'tag_list', '3': 6, '4': 1, '5': 11, '6': '.starbelly.TagList', '10': 'tagList'},
  ],
};

const RequestSetRateLimit$json = const {
  '1': 'RequestSetRateLimit',
  '2': const [
    const {'1': 'rate_limit', '3': 1, '4': 2, '5': 11, '6': '.starbelly.RateLimit', '10': 'rateLimit'},
  ],
};

const RequestSetPolicy$json = const {
  '1': 'RequestSetPolicy',
  '2': const [
    const {'1': 'policy', '3': 1, '4': 2, '5': 11, '6': '.starbelly.Policy', '10': 'policy'},
  ],
};

const RequestSubscribeJobStatus$json = const {
  '1': 'RequestSubscribeJobStatus',
  '2': const [
    const {'1': 'min_interval', '3': 1, '4': 1, '5': 1, '7': '1', '10': 'minInterval'},
  ],
};

const RequestSubscribeJobSync$json = const {
  '1': 'RequestSubscribeJobSync',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12, '10': 'jobId'},
    const {'1': 'sync_token', '3': 2, '4': 1, '5': 12, '10': 'syncToken'},
    const {'1': 'compression_ok', '3': 3, '4': 1, '5': 8, '7': 'true', '10': 'compressionOk'},
  ],
};

const RequestSubscribeResourceMonitor$json = const {
  '1': 'RequestSubscribeResourceMonitor',
  '2': const [
    const {'1': 'history', '3': 1, '4': 1, '5': 5, '7': '300', '10': 'history'},
  ],
};

const RequestSubscribeTaskMonitor$json = const {
  '1': 'RequestSubscribeTaskMonitor',
  '2': const [
    const {'1': 'period', '3': 1, '4': 1, '5': 1, '7': '3', '10': 'period'},
    const {'1': 'top_n', '3': 2, '4': 1, '5': 5, '7': '20', '10': 'topN'},
  ],
};

const RequestUnsubscribe$json = const {
  '1': 'RequestUnsubscribe',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5, '10': 'subscriptionId'},
  ],
};

