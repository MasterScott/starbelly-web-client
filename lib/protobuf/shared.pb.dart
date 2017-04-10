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
    ..a/*<String>*/(3, 'contentType', PbFieldType.OS)
    ..a/*<double>*/(4, 'cost', PbFieldType.OD)
    ..a/*<double>*/(5, 'duration', PbFieldType.OD)
    ..a/*<String>*/(6, 'exception', PbFieldType.OS)
    ..pp/*<CrawlItem_HeadersEntry>*/(7, 'headers', PbFieldType.PM, CrawlItem_HeadersEntry.$checkItem, CrawlItem_HeadersEntry.create)
    ..a/*<bool>*/(8, 'isBodyCompressed', PbFieldType.OB)
    ..a/*<bool>*/(9, 'isSuccess', PbFieldType.OB)
    ..a/*<List<int>>*/(10, 'jobId', PbFieldType.OY)
    ..a/*<String>*/(11, 'startedAt', PbFieldType.OS)
    ..a/*<int>*/(12, 'statusCode', PbFieldType.O3)
    ..a/*<String>*/(13, 'url', PbFieldType.OS)
    ..a/*<String>*/(14, 'urlCan', PbFieldType.OS)
    ..a/*<List<int>>*/(15, 'urlHash', PbFieldType.OY)
    ..a/*<List<int>>*/(16, 'syncToken', PbFieldType.OY)
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

  String get contentType => $_get(2, 3, '');
  void set contentType(String v) { $_setString(2, 3, v); }
  bool hasContentType() => $_has(2, 3);
  void clearContentType() => clearField(3);

  double get cost => $_get(3, 4, null);
  void set cost(double v) { $_setDouble(3, 4, v); }
  bool hasCost() => $_has(3, 4);
  void clearCost() => clearField(4);

  double get duration => $_get(4, 5, null);
  void set duration(double v) { $_setDouble(4, 5, v); }
  bool hasDuration() => $_has(4, 5);
  void clearDuration() => clearField(5);

  String get exception => $_get(5, 6, '');
  void set exception(String v) { $_setString(5, 6, v); }
  bool hasException() => $_has(5, 6);
  void clearException() => clearField(6);

  List<CrawlItem_HeadersEntry> get headers => $_get(6, 7, null);

  bool get isBodyCompressed => $_get(7, 8, false);
  void set isBodyCompressed(bool v) { $_setBool(7, 8, v); }
  bool hasIsBodyCompressed() => $_has(7, 8);
  void clearIsBodyCompressed() => clearField(8);

  bool get isSuccess => $_get(8, 9, false);
  void set isSuccess(bool v) { $_setBool(8, 9, v); }
  bool hasIsSuccess() => $_has(8, 9);
  void clearIsSuccess() => clearField(9);

  List<int> get jobId => $_get(9, 10, null);
  void set jobId(List<int> v) { $_setBytes(9, 10, v); }
  bool hasJobId() => $_has(9, 10);
  void clearJobId() => clearField(10);

  String get startedAt => $_get(10, 11, '');
  void set startedAt(String v) { $_setString(10, 11, v); }
  bool hasStartedAt() => $_has(10, 11);
  void clearStartedAt() => clearField(11);

  int get statusCode => $_get(11, 12, 0);
  void set statusCode(int v) { $_setUnsignedInt32(11, 12, v); }
  bool hasStatusCode() => $_has(11, 12);
  void clearStatusCode() => clearField(12);

  String get url => $_get(12, 13, '');
  void set url(String v) { $_setString(12, 13, v); }
  bool hasUrl() => $_has(12, 13);
  void clearUrl() => clearField(13);

  String get urlCan => $_get(13, 14, '');
  void set urlCan(String v) { $_setString(13, 14, v); }
  bool hasUrlCan() => $_has(13, 14);
  void clearUrlCan() => clearField(14);

  List<int> get urlHash => $_get(14, 15, null);
  void set urlHash(List<int> v) { $_setBytes(14, 15, v); }
  bool hasUrlHash() => $_has(14, 15);
  void clearUrlHash() => clearField(15);

  List<int> get syncToken => $_get(15, 16, null);
  void set syncToken(List<int> v) { $_setBytes(15, 16, v); }
  bool hasSyncToken() => $_has(15, 16);
  void clearSyncToken() => clearField(16);
}

class _ReadonlyCrawlItem extends CrawlItem with ReadonlyMessageMixin {}

class Job_HttpStatusCountsEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Job_HttpStatusCountsEntry')
    ..a/*<int>*/(1, 'key', PbFieldType.O3)
    ..a/*<int>*/(2, 'value', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Job_HttpStatusCountsEntry() : super();
  Job_HttpStatusCountsEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Job_HttpStatusCountsEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Job_HttpStatusCountsEntry clone() => new Job_HttpStatusCountsEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Job_HttpStatusCountsEntry create() => new Job_HttpStatusCountsEntry();
  static PbList<Job_HttpStatusCountsEntry> createRepeated() => new PbList<Job_HttpStatusCountsEntry>();
  static Job_HttpStatusCountsEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJob_HttpStatusCountsEntry();
    return _defaultInstance;
  }
  static Job_HttpStatusCountsEntry _defaultInstance;
  static void $checkItem(Job_HttpStatusCountsEntry v) {
    if (v is !Job_HttpStatusCountsEntry) checkItemFailed(v, 'Job_HttpStatusCountsEntry');
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

class _ReadonlyJob_HttpStatusCountsEntry extends Job_HttpStatusCountsEntry with ReadonlyMessageMixin {}

class Job extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Job')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
    ..a/*<String>*/(2, 'name', PbFieldType.OS)
    ..p/*<String>*/(3, 'seeds', PbFieldType.PS)
    ..e/*<JobRunState>*/(4, 'runState', PbFieldType.OE, JobRunState.UNKNOWN, JobRunState.valueOf)
    ..a/*<String>*/(5, 'startedAt', PbFieldType.OS)
    ..a/*<String>*/(6, 'completedAt', PbFieldType.OS)
    ..a/*<int>*/(7, 'itemCount', PbFieldType.O3, -1)
    ..a/*<int>*/(8, 'httpSuccessCount', PbFieldType.O3, -1)
    ..a/*<int>*/(9, 'httpErrorCount', PbFieldType.O3, -1)
    ..a/*<int>*/(10, 'exceptionCount', PbFieldType.O3, -1)
    ..pp/*<Job_HttpStatusCountsEntry>*/(11, 'httpStatusCounts', PbFieldType.PM, Job_HttpStatusCountsEntry.$checkItem, Job_HttpStatusCountsEntry.create)
  ;

  Job() : super();
  Job.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Job.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Job clone() => new Job()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Job create() => new Job();
  static PbList<Job> createRepeated() => new PbList<Job>();
  static Job getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJob();
    return _defaultInstance;
  }
  static Job _defaultInstance;
  static void $checkItem(Job v) {
    if (v is !Job) checkItemFailed(v, 'Job');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  String get name => $_get(1, 2, '');
  void set name(String v) { $_setString(1, 2, v); }
  bool hasName() => $_has(1, 2);
  void clearName() => clearField(2);

  List<String> get seeds => $_get(2, 3, null);

  JobRunState get runState => $_get(3, 4, null);
  void set runState(JobRunState v) { setField(4, v); }
  bool hasRunState() => $_has(3, 4);
  void clearRunState() => clearField(4);

  String get startedAt => $_get(4, 5, '');
  void set startedAt(String v) { $_setString(4, 5, v); }
  bool hasStartedAt() => $_has(4, 5);
  void clearStartedAt() => clearField(5);

  String get completedAt => $_get(5, 6, '');
  void set completedAt(String v) { $_setString(5, 6, v); }
  bool hasCompletedAt() => $_has(5, 6);
  void clearCompletedAt() => clearField(6);

  int get itemCount => $_get(6, 7, -1);
  void set itemCount(int v) { $_setUnsignedInt32(6, 7, v); }
  bool hasItemCount() => $_has(6, 7);
  void clearItemCount() => clearField(7);

  int get httpSuccessCount => $_get(7, 8, -1);
  void set httpSuccessCount(int v) { $_setUnsignedInt32(7, 8, v); }
  bool hasHttpSuccessCount() => $_has(7, 8);
  void clearHttpSuccessCount() => clearField(8);

  int get httpErrorCount => $_get(8, 9, -1);
  void set httpErrorCount(int v) { $_setUnsignedInt32(8, 9, v); }
  bool hasHttpErrorCount() => $_has(8, 9);
  void clearHttpErrorCount() => clearField(9);

  int get exceptionCount => $_get(9, 10, -1);
  void set exceptionCount(int v) { $_setUnsignedInt32(9, 10, v); }
  bool hasExceptionCount() => $_has(9, 10);
  void clearExceptionCount() => clearField(10);

  List<Job_HttpStatusCountsEntry> get httpStatusCounts => $_get(10, 11, null);
}

class _ReadonlyJob extends Job with ReadonlyMessageMixin {}

class JobList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobList')
    ..pp/*<Job>*/(1, 'jobs', PbFieldType.PM, Job.$checkItem, Job.create)
  ;

  JobList() : super();
  JobList.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JobList.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JobList clone() => new JobList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobList create() => new JobList();
  static PbList<JobList> createRepeated() => new PbList<JobList>();
  static JobList getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobList();
    return _defaultInstance;
  }
  static JobList _defaultInstance;
  static void $checkItem(JobList v) {
    if (v is !JobList) checkItemFailed(v, 'JobList');
  }

  List<Job> get jobs => $_get(0, 1, null);
}

class _ReadonlyJobList extends JobList with ReadonlyMessageMixin {}

class Page extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Page')
    ..a/*<int>*/(1, 'limit', PbFieldType.O3, 10)
    ..a/*<int>*/(2, 'offset', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Page() : super();
  Page.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Page.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Page clone() => new Page()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Page create() => new Page();
  static PbList<Page> createRepeated() => new PbList<Page>();
  static Page getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPage();
    return _defaultInstance;
  }
  static Page _defaultInstance;
  static void $checkItem(Page v) {
    if (v is !Page) checkItemFailed(v, 'Page');
  }

  int get limit => $_get(0, 1, 10);
  void set limit(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasLimit() => $_has(0, 1);
  void clearLimit() => clearField(1);

  int get offset => $_get(1, 2, 0);
  void set offset(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasOffset() => $_has(1, 2);
  void clearOffset() => clearField(2);
}

class _ReadonlyPage extends Page with ReadonlyMessageMixin {}

