///
//  Generated code. Do not modify.
///
library starbelly_shared_pbjson;

const JobRunState$json = const {
  '1': 'JobRunState',
  '2': const [
    const {'1': 'UNKNOWN', '2': 1},
    const {'1': 'CANCELLED', '2': 2},
    const {'1': 'COMPLETED', '2': 3},
    const {'1': 'PAUSED', '2': 4},
    const {'1': 'PENDING', '2': 5},
    const {'1': 'RUNNING', '2': 6},
  ],
};

const CrawlItem$json = const {
  '1': 'CrawlItem',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 12},
    const {'1': 'charset', '3': 2, '4': 1, '5': 9},
    const {'1': 'completed_at', '3': 3, '4': 1, '5': 9},
    const {'1': 'content_type', '3': 4, '4': 1, '5': 9},
    const {'1': 'cost', '3': 5, '4': 1, '5': 1},
    const {'1': 'duration', '3': 6, '4': 1, '5': 1},
    const {'1': 'exception', '3': 7, '4': 1, '5': 9},
    const {'1': 'headers', '3': 8, '4': 3, '5': 11, '6': '.starbelly.CrawlItem.HeadersEntry'},
    const {'1': 'is_body_compressed', '3': 9, '4': 1, '5': 8},
    const {'1': 'is_success', '3': 10, '4': 1, '5': 8},
    const {'1': 'job_id', '3': 11, '4': 1, '5': 12},
    const {'1': 'started_at', '3': 12, '4': 1, '5': 9},
    const {'1': 'status_code', '3': 13, '4': 1, '5': 5},
    const {'1': 'url', '3': 14, '4': 1, '5': 9},
    const {'1': 'url_can', '3': 15, '4': 1, '5': 9},
    const {'1': 'url_hash', '3': 16, '4': 1, '5': 12},
    const {'1': 'sync_token', '3': 17, '4': 1, '5': 12},
  ],
  '3': const [CrawlItem_HeadersEntry$json],
};

const CrawlItem_HeadersEntry$json = const {
  '1': 'HeadersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9},
    const {'1': 'value', '3': 2, '4': 1, '5': 9},
  ],
  '7': const {},
};

const Job$json = const {
  '1': 'Job',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'name', '3': 2, '4': 1, '5': 9},
    const {'1': 'seeds', '3': 3, '4': 3, '5': 9},
    const {'1': 'run_state', '3': 4, '4': 1, '5': 14, '6': '.starbelly.JobRunState'},
    const {'1': 'started_at', '3': 5, '4': 1, '5': 9},
    const {'1': 'completed_at', '3': 6, '4': 1, '5': 9},
    const {'1': 'item_count', '3': 7, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'http_success_count', '3': 8, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'http_error_count', '3': 9, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'exception_count', '3': 10, '4': 1, '5': 5, '7': '-1'},
    const {'1': 'http_status_counts', '3': 11, '4': 3, '5': 11, '6': '.starbelly.Job.HttpStatusCountsEntry'},
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

const RateLimit$json = const {
  '1': 'RateLimit',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9},
    const {'1': 'delay', '3': 2, '4': 1, '5': 2},
    const {'1': 'domain', '3': 3, '4': 1, '5': 9},
  ],
};

