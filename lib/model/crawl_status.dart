import 'dart:convert';

/// A container for information and statistics about a crawl.
class CrawlStatus {
    String crawlId;
    String seed;
    String status;
    int success;
    int redirect;
    int notFound;
    int error;

    /// Create a new crawl status object from a server ID and JSON object.
    CrawlStatus (String crawlId, Map json) {
        this.crawlId = crawlId;
        this.seed = json['seed'];
        this.update(json);
    }

    /// Merge contents of a server JSON object into this crawl status.
    void update(Map json) {
        if (json['status'] != null) { this.status = json['status']; }
        if (json['success'] != null) { this.success = json['success']; }
        if (json['redirect'] != null) { this.redirect = json['redirect']; }
        if (json['not_found'] != null) { this.notFound = json['not_found']; }
        if (json['error'] != null) { this.error = json['error']; }
    }
}
