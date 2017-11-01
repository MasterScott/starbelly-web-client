///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: library_prefixes
library starbelly_shared_pbjson;

const CaptchaSolverAntigateCharacters$json = const {
  '1': 'CaptchaSolverAntigateCharacters',
  '2': const [
    const {'1': 'ALPHANUMERIC', '2': 1},
    const {'1': 'NUMBERS_ONLY', '2': 2},
    const {'1': 'ALPHA_ONLY', '2': 3},
  ],
};

const JobRunState$json = const {
  '1': 'JobRunState',
  '2': const [
    const {'1': 'CANCELLED', '2': 1},
    const {'1': 'COMPLETED', '2': 2},
    const {'1': 'PAUSED', '2': 3},
    const {'1': 'PENDING', '2': 4},
    const {'1': 'RUNNING', '2': 5},
    const {'1': 'DELETED', '2': 6},
  ],
};

const JobScheduleTimeUnit$json = const {
  '1': 'JobScheduleTimeUnit',
  '2': const [
    const {'1': 'MINUTES', '2': 1},
    const {'1': 'HOURS', '2': 2},
    const {'1': 'DAYS', '2': 3},
    const {'1': 'WEEKS', '2': 4},
    const {'1': 'MONTHS', '2': 5},
    const {'1': 'YEARS', '2': 6},
  ],
};

const JobScheduleTiming$json = const {
  '1': 'JobScheduleTiming',
  '2': const [
    const {'1': 'AFTER_PREVIOUS_JOB_FINISHED', '2': 1},
    const {'1': 'REGULAR_INTERVAL', '2': 2},
  ],
};

const PatternMatch$json = const {
  '1': 'PatternMatch',
  '2': const [
    const {'1': 'MATCHES', '2': 1},
    const {'1': 'DOES_NOT_MATCH', '2': 2},
  ],
};

const CaptchaSolver$json = const {
  '1': 'CaptchaSolver',
  '2': const [
    const {'1': 'solver_id', '3': 1, '4': 1, '5': 12, '10': 'solverId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 4, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'antigate', '3': 5, '4': 1, '5': 11, '6': '.starbelly.CaptchaSolverAntigate', '9': 0, '10': 'antigate'},
  ],
  '8': const [
    const {'1': 'SolverType'},
  ],
};

const CaptchaSolverAntigate$json = const {
  '1': 'CaptchaSolverAntigate',
  '2': const [
    const {'1': 'service_url', '3': 1, '4': 1, '5': 9, '10': 'serviceUrl'},
    const {'1': 'api_key', '3': 2, '4': 1, '5': 9, '10': 'apiKey'},
    const {'1': 'require_phrase', '3': 3, '4': 1, '5': 8, '10': 'requirePhrase'},
    const {'1': 'case_sensitive', '3': 4, '4': 1, '5': 8, '10': 'caseSensitive'},
    const {'1': 'characters', '3': 5, '4': 1, '5': 14, '6': '.starbelly.CaptchaSolverAntigateCharacters', '10': 'characters'},
    const {'1': 'require_math', '3': 6, '4': 1, '5': 8, '10': 'requireMath'},
    const {'1': 'min_length', '3': 7, '4': 1, '5': 5, '10': 'minLength'},
    const {'1': 'max_length', '3': 8, '4': 1, '5': 5, '10': 'maxLength'},
  ],
};

const DomainLogin$json = const {
  '1': 'DomainLogin',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    const {'1': 'login_url', '3': 2, '4': 1, '5': 9, '10': 'loginUrl'},
    const {'1': 'login_test', '3': 3, '4': 1, '5': 9, '10': 'loginTest'},
    const {'1': 'auth_count', '3': 4, '4': 1, '5': 5, '10': 'authCount'},
    const {'1': 'users', '3': 5, '4': 3, '5': 11, '6': '.starbelly.DomainLoginUser', '10': 'users'},
  ],
};

const DomainLoginUser$json = const {
  '1': 'DomainLoginUser',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'working', '3': 3, '4': 1, '5': 8, '10': 'working'},
  ],
};

const CrawlResponse$json = const {
  '1': 'CrawlResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 12, '10': 'body'},
    const {'1': 'completed_at', '3': 2, '4': 1, '5': 9, '10': 'completedAt'},
    const {'1': 'content_type', '3': 3, '4': 1, '5': 9, '10': 'contentType'},
    const {'1': 'cost', '3': 4, '4': 1, '5': 1, '10': 'cost'},
    const {'1': 'duration', '3': 5, '4': 1, '5': 1, '10': 'duration'},
    const {'1': 'exception', '3': 6, '4': 1, '5': 9, '10': 'exception'},
    const {'1': 'headers', '3': 7, '4': 3, '5': 11, '6': '.starbelly.Header', '10': 'headers'},
    const {'1': 'is_body_compressed', '3': 8, '4': 1, '5': 8, '10': 'isBodyCompressed'},
    const {'1': 'is_success', '3': 9, '4': 1, '5': 8, '10': 'isSuccess'},
    const {'1': 'job_id', '3': 10, '4': 1, '5': 12, '10': 'jobId'},
    const {'1': 'started_at', '3': 11, '4': 1, '5': 9, '10': 'startedAt'},
    const {'1': 'status_code', '3': 12, '4': 1, '5': 5, '10': 'statusCode'},
    const {'1': 'url', '3': 13, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'url_can', '3': 14, '4': 1, '5': 9, '10': 'urlCan'},
  ],
};

const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

const Job$json = const {
  '1': 'Job',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12, '10': 'jobId'},
    const {'1': 'seeds', '3': 2, '4': 3, '5': 9, '10': 'seeds'},
    const {'1': 'policy', '3': 3, '4': 1, '5': 11, '6': '.starbelly.Policy', '10': 'policy'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'tag_list', '3': 5, '4': 1, '5': 11, '6': '.starbelly.TagList', '10': 'tagList'},
    const {'1': 'run_state', '3': 6, '4': 1, '5': 14, '6': '.starbelly.JobRunState', '10': 'runState'},
    const {'1': 'started_at', '3': 7, '4': 1, '5': 9, '10': 'startedAt'},
    const {'1': 'completed_at', '3': 8, '4': 1, '5': 9, '10': 'completedAt'},
    const {'1': 'item_count', '3': 9, '4': 1, '5': 5, '7': '-1', '10': 'itemCount'},
    const {'1': 'http_success_count', '3': 10, '4': 1, '5': 5, '7': '-1', '10': 'httpSuccessCount'},
    const {'1': 'http_error_count', '3': 11, '4': 1, '5': 5, '7': '-1', '10': 'httpErrorCount'},
    const {'1': 'exception_count', '3': 12, '4': 1, '5': 5, '7': '-1', '10': 'exceptionCount'},
    const {'1': 'http_status_counts', '3': 13, '4': 3, '5': 11, '6': '.starbelly.Job.HttpStatusCountsEntry', '10': 'httpStatusCounts'},
  ],
  '3': const [Job_HttpStatusCountsEntry$json],
};

const Job_HttpStatusCountsEntry$json = const {
  '1': 'HttpStatusCountsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

const JobList$json = const {
  '1': 'JobList',
  '2': const [
    const {'1': 'jobs', '3': 1, '4': 3, '5': 11, '6': '.starbelly.Job', '10': 'jobs'},
  ],
};

const JobSchedule$json = const {
  '1': 'JobSchedule',
  '2': const [
    const {'1': 'schedule_id', '3': 1, '4': 2, '5': 12, '10': 'scheduleId'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'enabled', '3': 4, '4': 1, '5': 8, '10': 'enabled'},
    const {'1': 'time_unit', '3': 5, '4': 1, '5': 14, '6': '.starbelly.JobScheduleTimeUnit', '10': 'timeUnit'},
    const {'1': 'num_units', '3': 6, '4': 1, '5': 5, '10': 'numUnits'},
    const {'1': 'timing', '3': 7, '4': 1, '5': 14, '6': '.starbelly.JobScheduleTiming', '10': 'timing'},
    const {'1': 'schedule_name', '3': 8, '4': 1, '5': 9, '10': 'scheduleName'},
    const {'1': 'job_name', '3': 9, '4': 1, '5': 9, '10': 'jobName'},
    const {'1': 'seeds', '3': 10, '4': 3, '5': 9, '10': 'seeds'},
    const {'1': 'policy_id', '3': 11, '4': 1, '5': 12, '10': 'policyId'},
    const {'1': 'tag_list', '3': 12, '4': 1, '5': 11, '6': '.starbelly.TagList', '10': 'tagList'},
    const {'1': 'latest_job_id', '3': 13, '4': 1, '5': 12, '10': 'latestJobId'},
    const {'1': 'job_count', '3': 14, '4': 1, '5': 5, '10': 'jobCount'},
  ],
};

const JobScheduleList$json = const {
  '1': 'JobScheduleList',
  '2': const [
    const {'1': 'job_schedules', '3': 1, '4': 3, '5': 11, '6': '.starbelly.JobSchedule', '10': 'jobSchedules'},
  ],
};

const Page$json = const {
  '1': 'Page',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 5, '7': '10', '10': 'limit'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 5, '10': 'offset'},
  ],
};

const Policy$json = const {
  '1': 'Policy',
  '2': const [
    const {'1': 'policy_id', '3': 1, '4': 1, '5': 12, '10': 'policyId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 4, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'authentication', '3': 6, '4': 1, '5': 11, '6': '.starbelly.PolicyAuthentication', '10': 'authentication'},
    const {'1': 'captcha_solver_id', '3': 14, '4': 1, '5': 12, '10': 'captchaSolverId'},
    const {'1': 'limits', '3': 7, '4': 1, '5': 11, '6': '.starbelly.PolicyLimits', '10': 'limits'},
    const {'1': 'proxy_rules', '3': 8, '4': 3, '5': 11, '6': '.starbelly.PolicyProxyRule', '10': 'proxyRules'},
    const {'1': 'mime_type_rules', '3': 9, '4': 3, '5': 11, '6': '.starbelly.PolicyMimeTypeRule', '10': 'mimeTypeRules'},
    const {'1': 'robots_txt', '3': 10, '4': 1, '5': 11, '6': '.starbelly.PolicyRobotsTxt', '10': 'robotsTxt'},
    const {'1': 'url_normalization', '3': 13, '4': 1, '5': 11, '6': '.starbelly.PolicyUrlNormalization', '10': 'urlNormalization'},
    const {'1': 'url_rules', '3': 11, '4': 3, '5': 11, '6': '.starbelly.PolicyUrlRule', '10': 'urlRules'},
    const {'1': 'user_agents', '3': 12, '4': 3, '5': 11, '6': '.starbelly.PolicyUserAgent', '10': 'userAgents'},
  ],
};

const PolicyAuthentication$json = const {
  '1': 'PolicyAuthentication',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

const PolicyLimits$json = const {
  '1': 'PolicyLimits',
  '2': const [
    const {'1': 'max_cost', '3': 1, '4': 1, '5': 1, '10': 'maxCost'},
    const {'1': 'max_duration', '3': 2, '4': 1, '5': 1, '10': 'maxDuration'},
    const {'1': 'max_items', '3': 3, '4': 1, '5': 5, '10': 'maxItems'},
  ],
};

const PolicyMimeTypeRule$json = const {
  '1': 'PolicyMimeTypeRule',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'match', '3': 2, '4': 1, '5': 14, '6': '.starbelly.PatternMatch', '10': 'match'},
    const {'1': 'save', '3': 3, '4': 1, '5': 8, '10': 'save'},
  ],
};

const PolicyProxyRule$json = const {
  '1': 'PolicyProxyRule',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'match', '3': 2, '4': 1, '5': 14, '6': '.starbelly.PatternMatch', '10': 'match'},
    const {'1': 'proxy_url', '3': 3, '4': 1, '5': 9, '10': 'proxyUrl'},
  ],
};

const PolicyRobotsTxt$json = const {
  '1': 'PolicyRobotsTxt',
  '2': const [
    const {'1': 'usage', '3': 1, '4': 2, '5': 14, '6': '.starbelly.PolicyRobotsTxt.Usage', '10': 'usage'},
  ],
  '4': const [PolicyRobotsTxt_Usage$json],
};

const PolicyRobotsTxt_Usage$json = const {
  '1': 'Usage',
  '2': const [
    const {'1': 'OBEY', '2': 1},
    const {'1': 'INVERT', '2': 2},
    const {'1': 'IGNORE', '2': 3},
  ],
};

const PolicyUrlNormalization$json = const {
  '1': 'PolicyUrlNormalization',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    const {'1': 'strip_parameters', '3': 2, '4': 3, '5': 9, '10': 'stripParameters'},
  ],
};

const PolicyUrlRule$json = const {
  '1': 'PolicyUrlRule',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'match', '3': 2, '4': 1, '5': 14, '6': '.starbelly.PatternMatch', '10': 'match'},
    const {'1': 'action', '3': 3, '4': 1, '5': 14, '6': '.starbelly.PolicyUrlRule.Action', '10': 'action'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 1, '10': 'amount'},
  ],
  '4': const [PolicyUrlRule_Action$json],
};

const PolicyUrlRule_Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'ADD', '2': 1},
    const {'1': 'MULTIPLY', '2': 2},
  ],
};

const PolicyUserAgent$json = const {
  '1': 'PolicyUserAgent',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
  ],
};

const RateLimit$json = const {
  '1': 'RateLimit',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'delay', '3': 2, '4': 1, '5': 2, '10': 'delay'},
    const {'1': 'domain', '3': 3, '4': 1, '5': 9, '10': 'domain'},
  ],
};

const TagList$json = const {
  '1': 'TagList',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 9, '10': 'tags'},
  ],
};

