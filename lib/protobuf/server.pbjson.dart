///
//  Generated code. Do not modify.
///
library starbelly_server_pbjson;

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5},
    const {'1': 'job_list', '3': 2, '4': 1, '5': 11, '6': '.starbelly.JobList'},
    const {'1': 'job_schedule_list', '3': 7, '4': 1, '5': 11, '6': '.starbelly.JobScheduleList'},
    const {'1': 'resource_frame', '3': 3, '4': 1, '5': 11, '6': '.starbelly.ResourceFrame'},
    const {'1': 'subscription_closed', '3': 4, '4': 1, '5': 11, '6': '.starbelly.SubscriptionClosed'},
    const {'1': 'sync_item', '3': 5, '4': 1, '5': 11, '6': '.starbelly.SyncItem'},
    const {'1': 'task_monitor', '3': 6, '4': 1, '5': 11, '6': '.starbelly.TaskMonitor'},
  ],
};

const PerformanceProfileFunction$json = const {
  '1': 'PerformanceProfileFunction',
  '2': const [
    const {'1': 'file', '3': 1, '4': 1, '5': 9},
    const {'1': 'line_number', '3': 2, '4': 1, '5': 5},
    const {'1': 'function', '3': 3, '4': 1, '5': 9},
    const {'1': 'calls', '3': 4, '4': 1, '5': 5},
    const {'1': 'non_recursive_calls', '3': 5, '4': 1, '5': 5},
    const {'1': 'total_time', '3': 6, '4': 1, '5': 1},
    const {'1': 'cumulative_time', '3': 7, '4': 1, '5': 1},
  ],
};

const ResourceFrame$json = const {
  '1': 'ResourceFrame',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 9},
    const {'1': 'cpus', '3': 2, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameCpu'},
    const {'1': 'memory', '3': 3, '4': 1, '5': 11, '6': '.starbelly.ResourceFrameMemory'},
    const {'1': 'disks', '3': 4, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameDisk'},
    const {'1': 'networks', '3': 5, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameNetwork'},
    const {'1': 'crawls', '3': 6, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameCrawl'},
    const {'1': 'rate_limiter', '3': 7, '4': 1, '5': 11, '6': '.starbelly.ResourceFrameRateLimiter'},
    const {'1': 'downloader', '3': 8, '4': 1, '5': 11, '6': '.starbelly.ResourceFrameDownloader'},
  ],
};

const ResourceFrameCpu$json = const {
  '1': 'ResourceFrameCpu',
  '2': const [
    const {'1': 'usage', '3': 1, '4': 1, '5': 1},
  ],
};

const ResourceFrameCrawl$json = const {
  '1': 'ResourceFrameCrawl',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 1, '5': 12},
    const {'1': 'frontier', '3': 2, '4': 1, '5': 5},
    const {'1': 'pending', '3': 3, '4': 1, '5': 5},
    const {'1': 'extraction', '3': 4, '4': 1, '5': 5},
  ],
};

const ResourceFrameDisk$json = const {
  '1': 'ResourceFrameDisk',
  '2': const [
    const {'1': 'mount', '3': 1, '4': 1, '5': 9},
    const {'1': 'used', '3': 2, '4': 1, '5': 3},
    const {'1': 'total', '3': 3, '4': 1, '5': 3},
  ],
};

const ResourceFrameDownloader$json = const {
  '1': 'ResourceFrameDownloader',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5},
  ],
};

const ResourceFrameMemory$json = const {
  '1': 'ResourceFrameMemory',
  '2': const [
    const {'1': 'used', '3': 1, '4': 1, '5': 3},
    const {'1': 'total', '3': 2, '4': 1, '5': 3},
  ],
};

const ResourceFrameNetwork$json = const {
  '1': 'ResourceFrameNetwork',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9},
    const {'1': 'sent', '3': 2, '4': 1, '5': 3},
    const {'1': 'received', '3': 3, '4': 1, '5': 3},
  ],
};

const ResourceFrameRateLimiter$json = const {
  '1': 'ResourceFrameRateLimiter',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5},
  ],
};

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 5},
    const {'1': 'is_success', '3': 2, '4': 2, '5': 8},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9},
    const {'1': 'domain_login', '3': 5, '4': 1, '5': 11, '6': '.starbelly.DomainLogin'},
    const {'1': 'domain_login_user', '3': 6, '4': 1, '5': 11, '6': '.starbelly.DomainLoginUser'},
    const {'1': 'job', '3': 7, '4': 1, '5': 11, '6': '.starbelly.Job'},
    const {'1': 'job_schedule', '3': 19, '4': 1, '5': 11, '6': '.starbelly.JobSchedule'},
    const {'1': 'policy', '3': 8, '4': 1, '5': 11, '6': '.starbelly.Policy'},
    const {'1': 'list_domain_logins', '3': 9, '4': 1, '5': 11, '6': '.starbelly.ResponseListDomainLogins'},
    const {'1': 'list_items', '3': 10, '4': 1, '5': 11, '6': '.starbelly.ResponseListItems'},
    const {'1': 'list_jobs', '3': 11, '4': 1, '5': 11, '6': '.starbelly.ResponseListJobs'},
    const {'1': 'list_job_schedules', '3': 20, '4': 1, '5': 11, '6': '.starbelly.ResponseListJobSchedules'},
    const {'1': 'list_policies', '3': 12, '4': 1, '5': 11, '6': '.starbelly.ResponseListPolicies'},
    const {'1': 'list_rate_limits', '3': 13, '4': 1, '5': 11, '6': '.starbelly.ResponseListRateLimits'},
    const {'1': 'new_job', '3': 14, '4': 1, '5': 11, '6': '.starbelly.ResponseNewJob'},
    const {'1': 'new_job_schedule', '3': 21, '4': 1, '5': 11, '6': '.starbelly.ResponseNewJobSchedule'},
    const {'1': 'new_policy', '3': 15, '4': 1, '5': 11, '6': '.starbelly.ResponseNewPolicy'},
    const {'1': 'new_subscription', '3': 16, '4': 1, '5': 11, '6': '.starbelly.ResponseNewSubscription'},
    const {'1': 'performance_profile', '3': 17, '4': 1, '5': 11, '6': '.starbelly.ResponsePerformanceProfile'},
    const {'1': 'ping', '3': 18, '4': 1, '5': 11, '6': '.starbelly.ResponsePing'},
  ],
};

const ResponseListDomainLogins$json = const {
  '1': 'ResponseListDomainLogins',
  '2': const [
    const {'1': 'logins', '3': 1, '4': 3, '5': 11, '6': '.starbelly.DomainLogin'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5},
  ],
};

const ResponseListItems$json = const {
  '1': 'ResponseListItems',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.starbelly.CrawlResponse'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5},
  ],
};

const ResponseListJobs$json = const {
  '1': 'ResponseListJobs',
  '2': const [
    const {'1': 'jobs', '3': 1, '4': 3, '5': 11, '6': '.starbelly.Job'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5},
  ],
};

const ResponseListJobSchedules$json = const {
  '1': 'ResponseListJobSchedules',
  '2': const [
    const {'1': 'job_schedules', '3': 1, '4': 3, '5': 11, '6': '.starbelly.JobSchedule'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5},
  ],
};

const ResponseListPolicies$json = const {
  '1': 'ResponseListPolicies',
  '2': const [
    const {'1': 'policies', '3': 1, '4': 3, '5': 11, '6': '.starbelly.Policy'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5},
  ],
};

const ResponseListRateLimits$json = const {
  '1': 'ResponseListRateLimits',
  '2': const [
    const {'1': 'rate_limits', '3': 1, '4': 3, '5': 11, '6': '.starbelly.RateLimit'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5},
  ],
};

const ResponseNewJob$json = const {
  '1': 'ResponseNewJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
  ],
};

const ResponseNewJobSchedule$json = const {
  '1': 'ResponseNewJobSchedule',
  '2': const [
    const {'1': 'schedule_id', '3': 1, '4': 2, '5': 12},
  ],
};

const ResponseNewPolicy$json = const {
  '1': 'ResponseNewPolicy',
  '2': const [
    const {'1': 'policy_id', '3': 1, '4': 2, '5': 12},
  ],
};

const ResponseNewSubscription$json = const {
  '1': 'ResponseNewSubscription',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5},
  ],
};

const ResponsePerformanceProfile$json = const {
  '1': 'ResponsePerformanceProfile',
  '2': const [
    const {'1': 'total_calls', '3': 1, '4': 1, '5': 5},
    const {'1': 'total_time', '3': 2, '4': 1, '5': 1},
    const {'1': 'functions', '3': 3, '4': 3, '5': 11, '6': '.starbelly.PerformanceProfileFunction'},
  ],
};

const ResponsePing$json = const {
  '1': 'ResponsePing',
  '2': const [
    const {'1': 'pong', '3': 1, '4': 1, '5': 9},
  ],
};

const SyncItem$json = const {
  '1': 'SyncItem',
  '2': const [
    const {'1': 'item', '3': 1, '4': 2, '5': 11, '6': '.starbelly.CrawlResponse'},
    const {'1': 'token', '3': 2, '4': 2, '5': 12},
  ],
};

const ServerMessage$json = const {
  '1': 'ServerMessage',
  '2': const [
    const {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Event'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.starbelly.Response'},
  ],
};

const SubscriptionClosed$json = const {
  '1': 'SubscriptionClosed',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 2, '5': 14, '6': '.starbelly.SubscriptionClosed.Reason'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9},
  ],
  '4': const [SubscriptionClosed_Reason$json],
};

const SubscriptionClosed_Reason$json = const {
  '1': 'Reason',
  '2': const [
    const {'1': 'COMPLETE', '2': 1},
    const {'1': 'ERROR', '2': 2},
  ],
};

const Task$json = const {
  '1': 'Task',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9},
    const {'1': 'count', '3': 2, '4': 1, '5': 5},
  ],
};

const TaskMonitor$json = const {
  '1': 'TaskMonitor',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5},
    const {'1': 'tasks', '3': 2, '4': 3, '5': 11, '6': '.starbelly.Task'},
  ],
};

