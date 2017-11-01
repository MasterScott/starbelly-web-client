///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: library_prefixes
library starbelly_server_pbjson;

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5, '10': 'subscriptionId'},
    const {'1': 'job_list', '3': 2, '4': 1, '5': 11, '6': '.starbelly.JobList', '9': 0, '10': 'jobList'},
    const {'1': 'job_schedule_list', '3': 7, '4': 1, '5': 11, '6': '.starbelly.JobScheduleList', '9': 0, '10': 'jobScheduleList'},
    const {'1': 'resource_frame', '3': 3, '4': 1, '5': 11, '6': '.starbelly.ResourceFrame', '9': 0, '10': 'resourceFrame'},
    const {'1': 'subscription_closed', '3': 4, '4': 1, '5': 11, '6': '.starbelly.SubscriptionClosed', '9': 0, '10': 'subscriptionClosed'},
    const {'1': 'sync_item', '3': 5, '4': 1, '5': 11, '6': '.starbelly.SyncItem', '9': 0, '10': 'syncItem'},
    const {'1': 'task_monitor', '3': 6, '4': 1, '5': 11, '6': '.starbelly.TaskMonitor', '9': 0, '10': 'taskMonitor'},
  ],
  '8': const [
    const {'1': 'Body'},
  ],
};

const PerformanceProfileFunction$json = const {
  '1': 'PerformanceProfileFunction',
  '2': const [
    const {'1': 'file', '3': 1, '4': 1, '5': 9, '10': 'file'},
    const {'1': 'line_number', '3': 2, '4': 1, '5': 5, '10': 'lineNumber'},
    const {'1': 'function', '3': 3, '4': 1, '5': 9, '10': 'function'},
    const {'1': 'calls', '3': 4, '4': 1, '5': 5, '10': 'calls'},
    const {'1': 'non_recursive_calls', '3': 5, '4': 1, '5': 5, '10': 'nonRecursiveCalls'},
    const {'1': 'total_time', '3': 6, '4': 1, '5': 1, '10': 'totalTime'},
    const {'1': 'cumulative_time', '3': 7, '4': 1, '5': 1, '10': 'cumulativeTime'},
  ],
};

const ResourceFrame$json = const {
  '1': 'ResourceFrame',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 9, '10': 'timestamp'},
    const {'1': 'cpus', '3': 2, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameCpu', '10': 'cpus'},
    const {'1': 'memory', '3': 3, '4': 1, '5': 11, '6': '.starbelly.ResourceFrameMemory', '10': 'memory'},
    const {'1': 'disks', '3': 4, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameDisk', '10': 'disks'},
    const {'1': 'networks', '3': 5, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameNetwork', '10': 'networks'},
    const {'1': 'crawls', '3': 6, '4': 3, '5': 11, '6': '.starbelly.ResourceFrameCrawl', '10': 'crawls'},
    const {'1': 'rate_limiter', '3': 7, '4': 1, '5': 11, '6': '.starbelly.ResourceFrameRateLimiter', '10': 'rateLimiter'},
    const {'1': 'downloader', '3': 8, '4': 1, '5': 11, '6': '.starbelly.ResourceFrameDownloader', '10': 'downloader'},
  ],
};

const ResourceFrameCpu$json = const {
  '1': 'ResourceFrameCpu',
  '2': const [
    const {'1': 'usage', '3': 1, '4': 1, '5': 1, '10': 'usage'},
  ],
};

const ResourceFrameCrawl$json = const {
  '1': 'ResourceFrameCrawl',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 1, '5': 12, '10': 'jobId'},
    const {'1': 'frontier', '3': 2, '4': 1, '5': 5, '10': 'frontier'},
    const {'1': 'pending', '3': 3, '4': 1, '5': 5, '10': 'pending'},
    const {'1': 'extraction', '3': 4, '4': 1, '5': 5, '10': 'extraction'},
  ],
};

const ResourceFrameDisk$json = const {
  '1': 'ResourceFrameDisk',
  '2': const [
    const {'1': 'mount', '3': 1, '4': 1, '5': 9, '10': 'mount'},
    const {'1': 'used', '3': 2, '4': 1, '5': 3, '10': 'used'},
    const {'1': 'total', '3': 3, '4': 1, '5': 3, '10': 'total'},
  ],
};

const ResourceFrameDownloader$json = const {
  '1': 'ResourceFrameDownloader',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

const ResourceFrameMemory$json = const {
  '1': 'ResourceFrameMemory',
  '2': const [
    const {'1': 'used', '3': 1, '4': 1, '5': 3, '10': 'used'},
    const {'1': 'total', '3': 2, '4': 1, '5': 3, '10': 'total'},
  ],
};

const ResourceFrameNetwork$json = const {
  '1': 'ResourceFrameNetwork',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'sent', '3': 2, '4': 1, '5': 3, '10': 'sent'},
    const {'1': 'received', '3': 3, '4': 1, '5': 3, '10': 'received'},
  ],
};

const ResourceFrameRateLimiter$json = const {
  '1': 'ResourceFrameRateLimiter',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 5, '10': 'requestId'},
    const {'1': 'is_success', '3': 2, '4': 2, '5': 8, '10': 'isSuccess'},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'solver', '3': 22, '4': 1, '5': 11, '6': '.starbelly.CaptchaSolver', '9': 0, '10': 'solver'},
    const {'1': 'domain_login', '3': 5, '4': 1, '5': 11, '6': '.starbelly.DomainLogin', '9': 0, '10': 'domainLogin'},
    const {'1': 'domain_login_user', '3': 6, '4': 1, '5': 11, '6': '.starbelly.DomainLoginUser', '9': 0, '10': 'domainLoginUser'},
    const {'1': 'job', '3': 7, '4': 1, '5': 11, '6': '.starbelly.Job', '9': 0, '10': 'job'},
    const {'1': 'job_schedule', '3': 19, '4': 1, '5': 11, '6': '.starbelly.JobSchedule', '9': 0, '10': 'jobSchedule'},
    const {'1': 'policy', '3': 8, '4': 1, '5': 11, '6': '.starbelly.Policy', '9': 0, '10': 'policy'},
    const {'1': 'list_captcha_solvers', '3': 23, '4': 1, '5': 11, '6': '.starbelly.ResponseListCaptchaSolvers', '9': 0, '10': 'listCaptchaSolvers'},
    const {'1': 'list_domain_logins', '3': 9, '4': 1, '5': 11, '6': '.starbelly.ResponseListDomainLogins', '9': 0, '10': 'listDomainLogins'},
    const {'1': 'list_items', '3': 10, '4': 1, '5': 11, '6': '.starbelly.ResponseListItems', '9': 0, '10': 'listItems'},
    const {'1': 'list_jobs', '3': 11, '4': 1, '5': 11, '6': '.starbelly.ResponseListJobs', '9': 0, '10': 'listJobs'},
    const {'1': 'list_job_schedules', '3': 20, '4': 1, '5': 11, '6': '.starbelly.ResponseListJobSchedules', '9': 0, '10': 'listJobSchedules'},
    const {'1': 'list_policies', '3': 12, '4': 1, '5': 11, '6': '.starbelly.ResponseListPolicies', '9': 0, '10': 'listPolicies'},
    const {'1': 'list_rate_limits', '3': 13, '4': 1, '5': 11, '6': '.starbelly.ResponseListRateLimits', '9': 0, '10': 'listRateLimits'},
    const {'1': 'new_solver', '3': 24, '4': 1, '5': 11, '6': '.starbelly.ResponseNewCaptchaSolver', '9': 0, '10': 'newSolver'},
    const {'1': 'new_job', '3': 14, '4': 1, '5': 11, '6': '.starbelly.ResponseNewJob', '9': 0, '10': 'newJob'},
    const {'1': 'new_job_schedule', '3': 21, '4': 1, '5': 11, '6': '.starbelly.ResponseNewJobSchedule', '9': 0, '10': 'newJobSchedule'},
    const {'1': 'new_policy', '3': 15, '4': 1, '5': 11, '6': '.starbelly.ResponseNewPolicy', '9': 0, '10': 'newPolicy'},
    const {'1': 'new_subscription', '3': 16, '4': 1, '5': 11, '6': '.starbelly.ResponseNewSubscription', '9': 0, '10': 'newSubscription'},
    const {'1': 'performance_profile', '3': 17, '4': 1, '5': 11, '6': '.starbelly.ResponsePerformanceProfile', '9': 0, '10': 'performanceProfile'},
    const {'1': 'ping', '3': 18, '4': 1, '5': 11, '6': '.starbelly.ResponsePing', '9': 0, '10': 'ping'},
  ],
  '8': const [
    const {'1': 'Body'},
  ],
};

const ResponseListCaptchaSolvers$json = const {
  '1': 'ResponseListCaptchaSolvers',
  '2': const [
    const {'1': 'solvers', '3': 1, '4': 3, '5': 11, '6': '.starbelly.CaptchaSolver', '10': 'solvers'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseListDomainLogins$json = const {
  '1': 'ResponseListDomainLogins',
  '2': const [
    const {'1': 'logins', '3': 1, '4': 3, '5': 11, '6': '.starbelly.DomainLogin', '10': 'logins'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseListItems$json = const {
  '1': 'ResponseListItems',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.starbelly.CrawlResponse', '10': 'items'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseListJobs$json = const {
  '1': 'ResponseListJobs',
  '2': const [
    const {'1': 'jobs', '3': 1, '4': 3, '5': 11, '6': '.starbelly.Job', '10': 'jobs'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseListJobSchedules$json = const {
  '1': 'ResponseListJobSchedules',
  '2': const [
    const {'1': 'job_schedules', '3': 1, '4': 3, '5': 11, '6': '.starbelly.JobSchedule', '10': 'jobSchedules'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseListPolicies$json = const {
  '1': 'ResponseListPolicies',
  '2': const [
    const {'1': 'policies', '3': 1, '4': 3, '5': 11, '6': '.starbelly.Policy', '10': 'policies'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseListRateLimits$json = const {
  '1': 'ResponseListRateLimits',
  '2': const [
    const {'1': 'rate_limits', '3': 1, '4': 3, '5': 11, '6': '.starbelly.RateLimit', '10': 'rateLimits'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

const ResponseNewCaptchaSolver$json = const {
  '1': 'ResponseNewCaptchaSolver',
  '2': const [
    const {'1': 'solver_id', '3': 1, '4': 2, '5': 12, '10': 'solverId'},
  ],
};

const ResponseNewJob$json = const {
  '1': 'ResponseNewJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12, '10': 'jobId'},
  ],
};

const ResponseNewJobSchedule$json = const {
  '1': 'ResponseNewJobSchedule',
  '2': const [
    const {'1': 'schedule_id', '3': 1, '4': 2, '5': 12, '10': 'scheduleId'},
  ],
};

const ResponseNewPolicy$json = const {
  '1': 'ResponseNewPolicy',
  '2': const [
    const {'1': 'policy_id', '3': 1, '4': 2, '5': 12, '10': 'policyId'},
  ],
};

const ResponseNewSubscription$json = const {
  '1': 'ResponseNewSubscription',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5, '10': 'subscriptionId'},
  ],
};

const ResponsePerformanceProfile$json = const {
  '1': 'ResponsePerformanceProfile',
  '2': const [
    const {'1': 'total_calls', '3': 1, '4': 1, '5': 5, '10': 'totalCalls'},
    const {'1': 'total_time', '3': 2, '4': 1, '5': 1, '10': 'totalTime'},
    const {'1': 'functions', '3': 3, '4': 3, '5': 11, '6': '.starbelly.PerformanceProfileFunction', '10': 'functions'},
  ],
};

const ResponsePing$json = const {
  '1': 'ResponsePing',
  '2': const [
    const {'1': 'pong', '3': 1, '4': 1, '5': 9, '10': 'pong'},
  ],
};

const SyncItem$json = const {
  '1': 'SyncItem',
  '2': const [
    const {'1': 'item', '3': 1, '4': 2, '5': 11, '6': '.starbelly.CrawlResponse', '10': 'item'},
    const {'1': 'token', '3': 2, '4': 2, '5': 12, '10': 'token'},
  ],
};

const ServerMessage$json = const {
  '1': 'ServerMessage',
  '2': const [
    const {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Event', '9': 0, '10': 'event'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.starbelly.Response', '9': 0, '10': 'response'},
  ],
  '8': const [
    const {'1': 'MessageType'},
  ],
};

const SubscriptionClosed$json = const {
  '1': 'SubscriptionClosed',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 2, '5': 14, '6': '.starbelly.SubscriptionClosed.Reason', '10': 'reason'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
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
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

const TaskMonitor$json = const {
  '1': 'TaskMonitor',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'tasks', '3': 2, '4': 3, '5': 11, '6': '.starbelly.Task', '10': 'tasks'},
  ],
};

