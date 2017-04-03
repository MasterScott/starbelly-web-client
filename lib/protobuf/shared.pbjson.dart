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
    const {'1': 'completed_at', '3': 2, '4': 1, '5': 9},
    const {'1': 'cost', '3': 3, '4': 1, '5': 1},
    const {'1': 'duration', '3': 4, '4': 1, '5': 1},
    const {'1': 'headers', '3': 5, '4': 3, '5': 11, '6': '.starbelly.CrawlItem.HeadersEntry'},
    const {'1': 'job_id', '3': 6, '4': 1, '5': 12},
    const {'1': 'is_body_compressed', '3': 7, '4': 1, '5': 8},
    const {'1': 'started_at', '3': 8, '4': 1, '5': 9},
    const {'1': 'status_code', '3': 9, '4': 1, '5': 5},
    const {'1': 'url', '3': 10, '4': 1, '5': 9},
    const {'1': 'url_can', '3': 11, '4': 1, '5': 9},
    const {'1': 'url_hash', '3': 12, '4': 1, '5': 12},
    const {'1': 'sync_token', '3': 13, '4': 1, '5': 12},
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

const JobStatus$json = const {
  '1': 'JobStatus',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'name', '3': 2, '4': 1, '5': 9},
    const {'1': 'run_state', '3': 3, '4': 1, '5': 14, '6': '.starbelly.JobRunState'},
    const {'1': 'item_count', '3': 4, '4': 1, '5': 5},
    const {'1': 'http_success_count', '3': 5, '4': 1, '5': 5},
    const {'1': 'http_error_count', '3': 6, '4': 1, '5': 5},
    const {'1': 'exception_count', '3': 7, '4': 1, '5': 5},
    const {'1': 'http_status_counts', '3': 8, '4': 3, '5': 11, '6': '.starbelly.JobStatus.HttpStatusCountsEntry'},
  ],
  '3': const [JobStatus_HttpStatusCountsEntry$json],
};

const JobStatus_HttpStatusCountsEntry$json = const {
  '1': 'HttpStatusCountsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5},
    const {'1': 'value', '3': 2, '4': 1, '5': 5},
  ],
  '7': const {},
};

const JobStatuses$json = const {
  '1': 'JobStatuses',
  '2': const [
    const {'1': 'statuses', '3': 1, '4': 3, '5': 11, '6': '.starbelly.JobStatus'},
  ],
};

