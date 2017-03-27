///
//  Generated code. Do not modify.
///
library starbelly_server_pbjson;

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5},
    const {'1': 'crawl_item', '3': 2, '4': 1, '5': 11, '6': '.starbelly.CrawlItem'},
    const {'1': 'job_statuses', '3': 3, '4': 1, '5': 11, '6': '.starbelly.JobStatuses'},
  ],
};

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 5},
    const {'1': 'is_success', '3': 2, '4': 2, '5': 8},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9},
    const {'1': 'new_job', '3': 4, '4': 1, '5': 11, '6': '.starbelly.ResponseNewJob'},
    const {'1': 'new_subscription', '3': 6, '4': 1, '5': 11, '6': '.starbelly.ResponseNewSubscription'},
    const {'1': 'ping', '3': 5, '4': 1, '5': 11, '6': '.starbelly.ResponsePing'},
  ],
};

const ResponseNewJob$json = const {
  '1': 'ResponseNewJob',
  '2': const [
    const {'1': 'job_id', '3': 1, '4': 2, '5': 12},
  ],
};

const ResponseNewSubscription$json = const {
  '1': 'ResponseNewSubscription',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 5},
  ],
};

const ResponsePing$json = const {
  '1': 'ResponsePing',
  '2': const [
    const {'1': 'pong', '3': 1, '4': 1, '5': 9},
  ],
};

const ServerMessage$json = const {
  '1': 'ServerMessage',
  '2': const [
    const {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.starbelly.Event'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.starbelly.Response'},
  ],
};

