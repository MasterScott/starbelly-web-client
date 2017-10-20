import 'dart:core';

import 'package:convert/convert.dart' as convert;

import 'package:starbelly/protobuf/protobuf.dart' as pb;

/// A crawl policy.
class JobSchedule {
    String scheduleId;
    DateTime createdAt;
    DateTime updatedAt;
    bool enabled;
    pb.JobScheduleTimeUnit timeUnit;
    String numUnits;
    pb.JobScheduleTiming timing;
    String scheduleName = '';
    String jobName = '';
    List<String> seeds;
    String policyId;
    List<String> tags;
    String latestJobId = '';
    int jobCount;

    String get tagString => this.tags.join(' ');
    void set tagString(String tags) => this.tags = tags.split(' ');

    /// Create an empty, default policy.
    JobSchedule.defaultSettings() {
        this.scheduleName = 'New Schedule';
        this.createdAt = new DateTime.now();
        this.updatedAt = this.createdAt;
        this.enabled = true;
        this.timing = 'REGULAR_INTERVAL';
        this.seeds = [];
        this.tags = [];
        this.jobCount = 0;
    }

    /// Instantiate a schedule from a protobuf message.
    JobSchedule.fromPb(pb.JobSchedule pbSchedule) {
        this.scheduleId = convert.hex.encode(pbSchedule.scheduleId);
        this.createdAt = DateTime.parse(pbSchedule.createdAt).toLocal();
        this.updatedAt = DateTime.parse(pbSchedule.updatedAt).toLocal();
        this.enabled = pbSchedule.enabled;
        this.timeUnit = pbSchedule.timeUnit;
        this.numUnits = pbSchedule.numUnits.toString();
        this.timing = pbSchedule.timing;
        this.scheduleName = pbSchedule.scheduleName;
        this.jobName = pbSchedule.jobName;
        this.jobCount = pbSchedule.jobCount;
        this.seeds = new List<String>.from(pbSchedule.seeds);
        this.policyId = convert.hex.encode(pbSchedule.policyId);
        this.tags = new List<String>.from(pbSchedule.tagList.tags);
        if (pbSchedule.hasLatestJobId()) {
            this.latestJobId = convert.hex.encode(pbSchedule.latestJobId);
        } else {
            this.latestJobId = '';
        }
        this.jobCount = pbSchedule.jobCount;
    }

    /// Convert to protobuf object.
    pb.Policy toPb() {
        var pbSchedule = new pb.JobSchedule();
        if (this.scheduleId != null) {
            pbSchedule.scheduleId = convert.hex.decode(this.scheduleId);
        }
        pbSchedule.enabled = this.enabled;
        pbSchedule.timeUnit = this.timeUnit;
        pbSchedule.numUnits = int.parse(this.numUnits, radix:10);
        pbSchedule.timing = this.timing;
        pbSchedule.scheduleName = this.scheduleName;
        pbSchedule.jobName = this.jobName;
        pbSchedule.seeds.addAll(this.seeds);
        pbSchedule.policyId = convert.hex.decode(this.policyId);
        pbSchedule.tagList = new pb.TagList()
            ..tags.addAll(this.tags);
        return pbSchedule;
    }
}
