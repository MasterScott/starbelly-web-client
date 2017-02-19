import 'dart:convert';

/// A container for information and statistics about a crawl job.
class JobStatus {
    String jobId;
    String name;
    String status;
    int itemCount;
    int httpSuccessCount;
    int httpErrorCount;
    int exceptionCount;
    Map<int,int> httpStatusCounts;

    /// Create a new crawl status object from a server ID and JSON object.
    JobStatus (String jobId, Map json) {
        this.jobId = jobId;
        this.httpStatusCounts = {};
        this.merge(json);
    }

    /// Merge contents of a server JSON object into this crawl status.
    void merge(Map json) {
        this.name = json['name'];
        this.status = json['status'];
        this.itemCount = json['item_count'];
        this.httpSuccessCount = json['http_success_count'];
        this.httpErrorCount = json['http_error_count'];
        this.exceptionCount = json['exception_count'];

        json['http_status_counts'].forEach((code, count) {
            this.httpStatusCounts[code] = count;
        });
    }
}
