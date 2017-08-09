///
//  Generated code. Do not modify.
///
library starbelly_shared_pbjson;

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

const PatternMatch$json = const {
  '1': 'PatternMatch',
  '2': const [
    const {'1': 'MATCHES', '2': 1},
    const {'1': 'DOES_NOT_MATCH', '2': 2},
  ],
};

const DomainLogin$json = const {
  '1': 'DomainLogin',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 1, '5': 9},
    const {'1': 'login_url', '3': 2, '4': 1, '5': 9},
    const {'1': 'login_test', '3': 3, '4': 1, '5': 9},
    const {'1': 'auth_count', '3': 4, '4': 1, '5': 5},
    const {'1': 'users', '3': 5, '4': 3, '5': 11, '6': '.starbelly.DomainLoginUser'},
  ],
};

const DomainLoginUser$json = const {
  '1': 'DomainLoginUser',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9},
    const {'1': 'password', '3': 2, '4': 1, '5': 9},
    const {'1': 'working', '3': 3, '4': 1, '5': 8},
  ],
};

const CrawlResponse$json = const {
  '1': 'CrawlResponse',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 12},
    const {'1': 'completed_at', '3': 2, '4': 1, '5': 9},
    const {'1': 'content_type', '3': 3, '4': 1, '5': 9},
    const {'1': 'cost', '3': 4, '4': 1, '5': 1},
    const {'1': 'duration', '3': 5, '4': 1, '5': 1},
    const {'1': 'exception', '3': 6, '4': 1, '5': 9},
    const {'1': 'headers', '3': 7, '4': 3, '5': 11, '6': '.starbelly.Header'},
    const {'1': 'is_body_compressed', '3': 8, '4': 1, '5': 8},
    const {'1': 'is_success', '3': 9, '4': 1, '5': 8},
    const {'1': 'job_id', '3': 10, '4': 1, '5': 12},
    const {'1': 'started_at', '3': 11, '4': 1, '5': 9},
    const {'1': 'status_code', '3': 12, '4': 1, '5': 5},
    const {'1': 'url', '3': 13, '4': 1, '5': 9},
    const {'1': 'url_can', '3': 14, '4': 1, '5': 9},
  ],
};

const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9},
    const {'1': 'value', '3': 2, '4': 1, '5': 9},
  ],
};

const Job$json = const {
  '1': 'Job',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'seeds', '3': 2, '4': 3, '5': 9},
    const {'1': 'policy', '3': 3, '4': 1, '5': 11, '6': '.starbelly.Policy'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9},
    const {'1': 'tag_list', '3': 5, '4': 1, '5': 11, '6': '.starbelly.TagList'},
    const {'1': 'run_state', '3': 6, '4': 1, '5': 14, '6': '.starbelly.JobRunState'},
    const {'1': 'started_at', '3': 7, '4': 1, '5': 9},
    const {'1': 'completed_at', '3': 8, '4': 1, '5': 9},
    const {'1': 'item_count', '3': 9, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'http_success_count', '3': 10, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'http_error_count', '3': 11, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'exception_count', '3': 12, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'http_status_counts', '3': 13, '4': 3, '5': 11, '6': '.starbelly.Job.HttpStatusCountsEntry'},
  ],
  '3': const [Job_HttpStatusCountsEntry$json],
};

const Job_HttpStatusCountsEntry$json = const {
  '1': 'HttpStatusCountsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5},
    const {'1': 'value', '3': 2, '4': 1, '5': 5},
  ],
  '7': const {},
};

const JobList$json = const {
  '1': 'JobList',
  '2': const [
    const {'1': 'jobs', '3': 1, '4': 3, '5': 11, '6': '.starbelly.Job'},
  ],
};

const Page$json = const {
  '1': 'Page',
  '2': const [
    const {'1': 'limit', '3': 1, '4': 1, '5': 5, '7': '10'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 5},
  ],
};

const Policy$json = const {
  '1': 'Policy',
  '2': const [
    const {'1': 'policy_id', '3': 1, '4': 1, '5': 12},
    const {'1': 'name', '3': 2, '4': 1, '5': 9},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 9},
    const {'1': 'updated_at', '3': 4, '4': 1, '5': 9},
    const {'1': 'authentication', '3': 6, '4': 1, '5': 11, '6': '.starbelly.PolicyAuthentication'},
    const {'1': 'limits', '3': 7, '4': 1, '5': 11, '6': '.starbelly.PolicyLimits'},
    const {'1': 'proxy_rules', '3': 8, '4': 3, '5': 11, '6': '.starbelly.PolicyProxyRule'},
    const {'1': 'mime_type_rules', '3': 9, '4': 3, '5': 11, '6': '.starbelly.PolicyMimeTypeRule'},
    const {'1': 'robots_txt', '3': 10, '4': 1, '5': 11, '6': '.starbelly.PolicyRobotsTxt'},
    const {'1': 'url_rules', '3': 11, '4': 3, '5': 11, '6': '.starbelly.PolicyUrlRule'},
    const {'1': 'user_agents', '3': 12, '4': 3, '5': 11, '6': '.starbelly.PolicyUserAgent'},
  ],
};

const PolicyAuthentication$json = const {
  '1': 'PolicyAuthentication',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8},
  ],
};

const PolicyLimits$json = const {
  '1': 'PolicyLimits',
  '2': const [
    const {'1': 'max_cost', '3': 1, '4': 1, '5': 1},
    const {'1': 'max_duration', '3': 2, '4': 1, '5': 1},
    const {'1': 'max_items', '3': 3, '4': 1, '5': 5},
  ],
};

const PolicyMimeTypeRule$json = const {
  '1': 'PolicyMimeTypeRule',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9},
    const {'1': 'match', '3': 2, '4': 1, '5': 14, '6': '.starbelly.PatternMatch'},
    const {'1': 'save', '3': 3, '4': 1, '5': 8},
  ],
};

const PolicyProxyRule$json = const {
  '1': 'PolicyProxyRule',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9},
    const {'1': 'match', '3': 2, '4': 1, '5': 14, '6': '.starbelly.PatternMatch'},
    const {'1': 'proxy_url', '3': 3, '4': 1, '5': 9},
  ],
};

const PolicyRobotsTxt$json = const {
  '1': 'PolicyRobotsTxt',
  '2': const [
    const {'1': 'usage', '3': 1, '4': 2, '5': 14, '6': '.starbelly.PolicyRobotsTxt.Usage'},
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

const PolicyUrlRule$json = const {
  '1': 'PolicyUrlRule',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9},
    const {'1': 'match', '3': 2, '4': 1, '5': 14, '6': '.starbelly.PatternMatch'},
    const {'1': 'action', '3': 3, '4': 1, '5': 14, '6': '.starbelly.PolicyUrlRule.Action'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 1},
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
    const {'1': 'name', '3': 1, '4': 2, '5': 9},
  ],
};

const RateLimit$json = const {
  '1': 'RateLimit',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9},
    const {'1': 'delay', '3': 2, '4': 1, '5': 2},
    const {'1': 'domain', '3': 3, '4': 1, '5': 9},
  ],
};

const TagList$json = const {
  '1': 'TagList',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 9},
  ],
};

