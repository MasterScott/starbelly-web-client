///
//  Generated code. Do not modify.
///
library starbelly_shared;

import 'package:protobuf/protobuf.dart';

import 'shared.pbenum.dart';

export 'shared.pbenum.dart';

class CrawlItem_HeadersEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CrawlItem_HeadersEntry')
    ..a/*<String>*/(1, 'key', PbFieldType.OS)
    ..a/*<String>*/(2, 'value', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  CrawlItem_HeadersEntry() : super();
  CrawlItem_HeadersEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CrawlItem_HeadersEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CrawlItem_HeadersEntry clone() => new CrawlItem_HeadersEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CrawlItem_HeadersEntry create() => new CrawlItem_HeadersEntry();
  static PbList<CrawlItem_HeadersEntry> createRepeated() => new PbList<CrawlItem_HeadersEntry>();
  static CrawlItem_HeadersEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCrawlItem_HeadersEntry();
    return _defaultInstance;
  }
  static CrawlItem_HeadersEntry _defaultInstance;
  static void $checkItem(CrawlItem_HeadersEntry v) {
    if (v is !CrawlItem_HeadersEntry) checkItemFailed(v, 'CrawlItem_HeadersEntry');
  }

  String get key => $_get(0, 1, '');
  void set key(String v) { $_setString(0, 1, v); }
  bool hasKey() => $_has(0, 1);
  void clearKey() => clearField(1);

  String get value => $_get(1, 2, '');
  void set value(String v) { $_setString(1, 2, v); }
  bool hasValue() => $_has(1, 2);
  void clearValue() => clearField(2);
}

class _ReadonlyCrawlItem_HeadersEntry extends CrawlItem_HeadersEntry with ReadonlyMessageMixin {}

class CrawlItem extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CrawlItem')
    ..a/*<List<int>>*/(1, 'body', PbFieldType.OY)
    ..a/*<String>*/(2, 'completedAt', PbFieldType.OS)
    ..a/*<double>*/(3, 'cost', PbFieldType.OD)
    ..a/*<double>*/(4, 'duration', PbFieldType.OD)
    ..pp/*<CrawlItem_HeadersEntry>*/(5, 'headers', PbFieldType.PM, CrawlItem_HeadersEntry.$checkItem, CrawlItem_HeadersEntry.create)
    ..a/*<List<int>>*/(6, 'jobId', PbFieldType.OY)
    ..a/*<bool>*/(7, 'isBodyCompressed', PbFieldType.OB)
    ..a/*<String>*/(8, 'startedAt', PbFieldType.OS)
    ..a/*<int>*/(9, 'statusCode', PbFieldType.O3)
    ..a/*<String>*/(10, 'url', PbFieldType.OS)
    ..a/*<String>*/(11, 'urlCan', PbFieldType.OS)
    ..a/*<List<int>>*/(12, 'urlHash', PbFieldType.OY)
    ..a/*<List<int>>*/(13, 'syncToken', PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CrawlItem() : super();
  CrawlItem.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CrawlItem.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CrawlItem clone() => new CrawlItem()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CrawlItem create() => new CrawlItem();
  static PbList<CrawlItem> createRepeated() => new PbList<CrawlItem>();
  static CrawlItem getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCrawlItem();
    return _defaultInstance;
  }
  static CrawlItem _defaultInstance;
  static void $checkItem(CrawlItem v) {
    if (v is !CrawlItem) checkItemFailed(v, 'CrawlItem');
  }

  List<int> get body => $_get(0, 1, null);
  void set body(List<int> v) { $_setBytes(0, 1, v); }
  bool hasBody() => $_has(0, 1);
  void clearBody() => clearField(1);

  String get completedAt => $_get(1, 2, '');
  void set completedAt(String v) { $_setString(1, 2, v); }
  bool hasCompletedAt() => $_has(1, 2);
  void clearCompletedAt() => clearField(2);

  double get cost => $_get(2, 3, null);
  void set cost(double v) { $_setDouble(2, 3, v); }
  bool hasCost() => $_has(2, 3);
  void clearCost() => clearField(3);

  double get duration => $_get(3, 4, null);
  void set duration(double v) { $_setDouble(3, 4, v); }
  bool hasDuration() => $_has(3, 4);
  void clearDuration() => clearField(4);

  List<CrawlItem_HeadersEntry> get headers => $_get(4, 5, null);

  List<int> get jobId => $_get(5, 6, null);
  void set jobId(List<int> v) { $_setBytes(5, 6, v); }
  bool hasJobId() => $_has(5, 6);
  void clearJobId() => clearField(6);

  bool get isBodyCompressed => $_get(6, 7, false);
  void set isBodyCompressed(bool v) { $_setBool(6, 7, v); }
  bool hasIsBodyCompressed() => $_has(6, 7);
  void clearIsBodyCompressed() => clearField(7);

  String get startedAt => $_get(7, 8, '');
  void set startedAt(String v) { $_setString(7, 8, v); }
  bool hasStartedAt() => $_has(7, 8);
  void clearStartedAt() => clearField(8);

  int get statusCode => $_get(8, 9, 0);
  void set statusCode(int v) { $_setUnsignedInt32(8, 9, v); }
  bool hasStatusCode() => $_has(8, 9);
  void clearStatusCode() => clearField(9);

  String get url => $_get(9, 10, '');
  void set url(String v) { $_setString(9, 10, v); }
  bool hasUrl() => $_has(9, 10);
  void clearUrl() => clearField(10);

  String get urlCan => $_get(10, 11, '');
  void set urlCan(String v) { $_setString(10, 11, v); }
  bool hasUrlCan() => $_has(10, 11);
  void clearUrlCan() => clearField(11);

  List<int> get urlHash => $_get(11, 12, null);
  void set urlHash(List<int> v) { $_setBytes(11, 12, v); }
  bool hasUrlHash() => $_has(11, 12);
  void clearUrlHash() => clearField(12);

  List<int> get syncToken => $_get(12, 13, null);
  void set syncToken(List<int> v) { $_setBytes(12, 13, v); }
  bool hasSyncToken() => $_has(12, 13);
  void clearSyncToken() => clearField(13);
}

class _ReadonlyCrawlItem extends CrawlItem with ReadonlyMessageMixin {}

class JobStatus_HttpStatusCountsEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobStatus_HttpStatusCountsEntry')
    ..a/*<int>*/(1, 'key', PbFieldType.O3)
    ..a/*<int>*/(2, 'value', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  JobStatus_HttpStatusCountsEntry() : super();
  JobStatus_HttpStatusCountsEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JobStatus_HttpStatusCountsEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JobStatus_HttpStatusCountsEntry clone() => new JobStatus_HttpStatusCountsEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobStatus_HttpStatusCountsEntry create() => new JobStatus_HttpStatusCountsEntry();
  static PbList<JobStatus_HttpStatusCountsEntry> createRepeated() => new PbList<JobStatus_HttpStatusCountsEntry>();
  static JobStatus_HttpStatusCountsEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobStatus_HttpStatusCountsEntry();
    return _defaultInstance;
  }
  static JobStatus_HttpStatusCountsEntry _defaultInstance;
  static void $checkItem(JobStatus_HttpStatusCountsEntry v) {
    if (v is !JobStatus_HttpStatusCountsEntry) checkItemFailed(v, 'JobStatus_HttpStatusCountsEntry');
  }

  int get key => $_get(0, 1, 0);
  void set key(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasKey() => $_has(0, 1);
  void clearKey() => clearField(1);

  int get value => $_get(1, 2, 0);
  void set value(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasValue() => $_has(1, 2);
  void clearValue() => clearField(2);
}

class _ReadonlyJobStatus_HttpStatusCountsEntry extends JobStatus_HttpStatusCountsEntry with ReadonlyMessageMixin {}

class JobStatus extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobStatus')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
    ..a/*<String>*/(2, 'name', PbFieldType.OS)
    ..e/*<JobRunState>*/(3, 'runState', PbFieldType.OE, JobRunState.UNKNOWN, JobRunState.valueOf)
    ..a/*<int>*/(4, 'itemCount', PbFieldType.O3)
    ..a/*<int>*/(5, 'httpSuccessCount', PbFieldType.O3)
    ..a/*<int>*/(6, 'httpErrorCount', PbFieldType.O3)
    ..a/*<int>*/(7, 'exceptionCount', PbFieldType.O3)
    ..pp/*<JobStatus_HttpStatusCountsEntry>*/(8, 'httpStatusCounts', PbFieldType.PM, JobStatus_HttpStatusCountsEntry.$checkItem, JobStatus_HttpStatusCountsEntry.create)
  ;

  JobStatus() : super();
  JobStatus.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JobStatus.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JobStatus clone() => new JobStatus()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobStatus create() => new JobStatus();
  static PbList<JobStatus> createRepeated() => new PbList<JobStatus>();
  static JobStatus getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobStatus();
    return _defaultInstance;
  }
  static JobStatus _defaultInstance;
  static void $checkItem(JobStatus v) {
    if (v is !JobStatus) checkItemFailed(v, 'JobStatus');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  String get name => $_get(1, 2, '');
  void set name(String v) { $_setString(1, 2, v); }
  bool hasName() => $_has(1, 2);
  void clearName() => clearField(2);

  JobRunState get runState => $_get(2, 3, null);
  void set runState(JobRunState v) { setField(3, v); }
  bool hasRunState() => $_has(2, 3);
  void clearRunState() => clearField(3);

  int get itemCount => $_get(3, 4, 0);
  void set itemCount(int v) { $_setUnsignedInt32(3, 4, v); }
  bool hasItemCount() => $_has(3, 4);
  void clearItemCount() => clearField(4);

  int get httpSuccessCount => $_get(4, 5, 0);
  void set httpSuccessCount(int v) { $_setUnsignedInt32(4, 5, v); }
  bool hasHttpSuccessCount() => $_has(4, 5);
  void clearHttpSuccessCount() => clearField(5);

  int get httpErrorCount => $_get(5, 6, 0);
  void set httpErrorCount(int v) { $_setUnsignedInt32(5, 6, v); }
  bool hasHttpErrorCount() => $_has(5, 6);
  void clearHttpErrorCount() => clearField(6);

  int get exceptionCount => $_get(6, 7, 0);
  void set exceptionCount(int v) { $_setUnsignedInt32(6, 7, v); }
  bool hasExceptionCount() => $_has(6, 7);
  void clearExceptionCount() => clearField(7);

  List<JobStatus_HttpStatusCountsEntry> get httpStatusCounts => $_get(7, 8, null);
}

class _ReadonlyJobStatus extends JobStatus with ReadonlyMessageMixin {}

class JobStatuses extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobStatuses')
    ..pp/*<JobStatus>*/(1, 'statuses', PbFieldType.PM, JobStatus.$checkItem, JobStatus.create)
  ;

  JobStatuses() : super();
  JobStatuses.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JobStatuses.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JobStatuses clone() => new JobStatuses()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobStatuses create() => new JobStatuses();
  static PbList<JobStatuses> createRepeated() => new PbList<JobStatuses>();
  static JobStatuses getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobStatuses();
    return _defaultInstance;
  }
  static JobStatuses _defaultInstance;
  static void $checkItem(JobStatuses v) {
    if (v is !JobStatuses) checkItemFailed(v, 'JobStatuses');
  }

  List<JobStatus> get statuses => $_get(0, 1, null);
}

class _ReadonlyJobStatuses extends JobStatuses with ReadonlyMessageMixin {}

