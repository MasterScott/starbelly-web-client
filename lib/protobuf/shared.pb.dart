///
//  Generated code. Do not modify.
///
library starbelly_shared;

import 'package:protobuf/protobuf.dart';

import 'shared.pbenum.dart';

export 'shared.pbenum.dart';

class CrawlItem_HttpHeader extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CrawlItem_HttpHeader')
    ..a/*<String>*/(1, 'key', PbFieldType.OS)
    ..a/*<String>*/(2, 'value', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  CrawlItem_HttpHeader() : super();
  CrawlItem_HttpHeader.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CrawlItem_HttpHeader.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CrawlItem_HttpHeader clone() => new CrawlItem_HttpHeader()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CrawlItem_HttpHeader create() => new CrawlItem_HttpHeader();
  static PbList<CrawlItem_HttpHeader> createRepeated() => new PbList<CrawlItem_HttpHeader>();
  static CrawlItem_HttpHeader getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCrawlItem_HttpHeader();
    return _defaultInstance;
  }
  static CrawlItem_HttpHeader _defaultInstance;
  static void $checkItem(CrawlItem_HttpHeader v) {
    if (v is !CrawlItem_HttpHeader) checkItemFailed(v, 'CrawlItem_HttpHeader');
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

class _ReadonlyCrawlItem_HttpHeader extends CrawlItem_HttpHeader with ReadonlyMessageMixin {}

class CrawlItem extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CrawlItem')
    ..a/*<List<int>>*/(1, 'body', PbFieldType.OY)
    ..a/*<String>*/(2, 'completedAt', PbFieldType.OS)
    ..a/*<List<int>>*/(3, 'jobId', PbFieldType.OY)
    ..a/*<double>*/(4, 'duration', PbFieldType.OD)
    ..pp/*<CrawlItem_HttpHeader>*/(5, 'headers', PbFieldType.PM, CrawlItem_HttpHeader.$checkItem, CrawlItem_HttpHeader.create)
    ..a/*<String>*/(6, 'startedAt', PbFieldType.OS)
    ..a/*<int>*/(7, 'statusCode', PbFieldType.O3)
    ..a/*<List<int>>*/(8, 'stringToken', PbFieldType.OY)
    ..a/*<String>*/(9, 'url', PbFieldType.OS)
    ..a/*<String>*/(10, 'urlCan', PbFieldType.OS)
    ..a/*<List<int>>*/(11, 'urlHash', PbFieldType.OY)
    ..a/*<List<int>>*/(12, 'syncToken', PbFieldType.QY)
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

  List<int> get jobId => $_get(2, 3, null);
  void set jobId(List<int> v) { $_setBytes(2, 3, v); }
  bool hasJobId() => $_has(2, 3);
  void clearJobId() => clearField(3);

  double get duration => $_get(3, 4, null);
  void set duration(double v) { $_setDouble(3, 4, v); }
  bool hasDuration() => $_has(3, 4);
  void clearDuration() => clearField(4);

  List<CrawlItem_HttpHeader> get headers => $_get(4, 5, null);

  String get startedAt => $_get(5, 6, '');
  void set startedAt(String v) { $_setString(5, 6, v); }
  bool hasStartedAt() => $_has(5, 6);
  void clearStartedAt() => clearField(6);

  int get statusCode => $_get(6, 7, 0);
  void set statusCode(int v) { $_setUnsignedInt32(6, 7, v); }
  bool hasStatusCode() => $_has(6, 7);
  void clearStatusCode() => clearField(7);

  List<int> get stringToken => $_get(7, 8, null);
  void set stringToken(List<int> v) { $_setBytes(7, 8, v); }
  bool hasStringToken() => $_has(7, 8);
  void clearStringToken() => clearField(8);

  String get url => $_get(8, 9, '');
  void set url(String v) { $_setString(8, 9, v); }
  bool hasUrl() => $_has(8, 9);
  void clearUrl() => clearField(9);

  String get urlCan => $_get(9, 10, '');
  void set urlCan(String v) { $_setString(9, 10, v); }
  bool hasUrlCan() => $_has(9, 10);
  void clearUrlCan() => clearField(10);

  List<int> get urlHash => $_get(10, 11, null);
  void set urlHash(List<int> v) { $_setBytes(10, 11, v); }
  bool hasUrlHash() => $_has(10, 11);
  void clearUrlHash() => clearField(11);

  List<int> get syncToken => $_get(11, 12, null);
  void set syncToken(List<int> v) { $_setBytes(11, 12, v); }
  bool hasSyncToken() => $_has(11, 12);
  void clearSyncToken() => clearField(12);
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
    ..e/*<JobStatus_JobState>*/(3, 'state', PbFieldType.OE, JobStatus_JobState.CANCELLED, JobStatus_JobState.valueOf)
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

  JobStatus_JobState get state => $_get(2, 3, null);
  void set state(JobStatus_JobState v) { setField(3, v); }
  bool hasState() => $_has(2, 3);
  void clearState() => clearField(3);

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

