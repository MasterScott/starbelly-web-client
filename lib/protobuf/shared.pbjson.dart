///
//  Generated code. Do not modify.
///
library starbelly_shared_pbjson;

const CrawlItem$json = const {
  '1': 'CrawlItem',
  '2': const [
    const {'1': 'body', '3': 1, '4': 1, '5': 12},
    const {'1': 'completed_at', '3': 2, '4': 1, '5': 9},
    const {'1': 'job_id', '3': 3, '4': 1, '5': 12},
    const {'1': 'duration', '3': 4, '4': 1, '5': 1},
    const {'1': 'headers', '3': 5, '4': 3, '5': 11, '6': '.starbelly.CrawlItem.HttpHeader'},
    const {'1': 'started_at', '3': 6, '4': 1, '5': 9},
    const {'1': 'status_code', '3': 7, '4': 1, '5': 5},
    const {'1': 'string_token', '3': 8, '4': 1, '5': 12},
    const {'1': 'url', '3': 9, '4': 1, '5': 9},
    const {'1': 'url_can', '3': 10, '4': 1, '5': 9},
    const {'1': 'url_hash', '3': 11, '4': 1, '5': 12},
    const {'1': 'sync_token', '3': 12, '4': 2, '5': 12},
  ],
  '3': const [CrawlItem_HttpHeader$json],
};

const CrawlItem_HttpHeader$json = const {
  '1': 'HttpHeader',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9},
    const {'1': 'value', '3': 2, '4': 1, '5': 9},
  ],
};

const JobStatus$json = const {
  '1': 'JobStatus',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
    const {'1': 'name', '3': 2, '4': 1, '5': 9},
    const {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.starbelly.JobStatus.JobState'},
    const {'1': 'item_count', '3': 4, '4': 1, '5': 5},
    const {'1': 'http_success_count', '3': 5, '4': 1, '5': 5},
    const {'1': 'http_error_count', '3': 6, '4': 1, '5': 5},
    const {'1': 'exception_count', '3': 7, '4': 1, '5': 5},
    const {'1': 'http_status_counts', '3': 8, '4': 3, '5': 11, '6': '.starbelly.JobStatus.HttpStatusCountsEntry'},
  ],
  '3': const [JobStatus_HttpStatusCountsEntry$json],
  '4': const [JobStatus_JobState$json],
};

const JobStatus_HttpStatusCountsEntry$json = const {
  '1': 'HttpStatusCountsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5},
    const {'1': 'value', '3': 2, '4': 1, '5': 5},
  ],
  '7': const {},
};

const JobStatus_JobState$json = const {
  '1': 'JobState',
  '2': const [
    const {'1': 'CANCELLED', '2': 1},
    const {'1': 'PAUSED', '2': 2},
    const {'1': 'PENDING', '2': 3},
    const {'1': 'RUNNING', '2': 4},
  ],
};

const JobStatuses$json = const {
  '1': 'JobStatuses',
  '2': const [
    const {'1': 'statuses', '3': 1, '4': 3, '5': 11, '6': '.starbelly.JobStatus'},
  ],
};

