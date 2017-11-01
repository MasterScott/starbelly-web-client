///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: library_prefixes
library starbelly_shared;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'shared.pbenum.dart';

export 'shared.pbenum.dart';

class CaptchaSolver extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CaptchaSolver')
    ..a/*<List<int>>*/(1, 'solverId', PbFieldType.OY)
    ..a/*<String>*/(2, 'name', PbFieldType.OS)
    ..a/*<String>*/(3, 'createdAt', PbFieldType.OS)
    ..a/*<String>*/(4, 'updatedAt', PbFieldType.OS)
    ..a/*<CaptchaSolverAntigate>*/(5, 'antigate', PbFieldType.OM, CaptchaSolverAntigate.getDefault, CaptchaSolverAntigate.create)
    ..hasRequiredFields = false
  ;

  CaptchaSolver() : super();
  CaptchaSolver.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CaptchaSolver.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CaptchaSolver clone() => new CaptchaSolver()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CaptchaSolver create() => new CaptchaSolver();
  static PbList<CaptchaSolver> createRepeated() => new PbList<CaptchaSolver>();
  static CaptchaSolver getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCaptchaSolver();
    return _defaultInstance;
  }
  static CaptchaSolver _defaultInstance;
  static void $checkItem(CaptchaSolver v) {
    if (v is! CaptchaSolver) checkItemFailed(v, 'CaptchaSolver');
  }

  List<int> get solverId => $_get(0, 1, null);
  set solverId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasSolverId() => $_has(0, 1);
  void clearSolverId() => clearField(1);

  String get name => $_get(1, 2, '');
  set name(String v) { $_setString(1, 2, v); }
  bool hasName() => $_has(1, 2);
  void clearName() => clearField(2);

  String get createdAt => $_get(2, 3, '');
  set createdAt(String v) { $_setString(2, 3, v); }
  bool hasCreatedAt() => $_has(2, 3);
  void clearCreatedAt() => clearField(3);

  String get updatedAt => $_get(3, 4, '');
  set updatedAt(String v) { $_setString(3, 4, v); }
  bool hasUpdatedAt() => $_has(3, 4);
  void clearUpdatedAt() => clearField(4);

  CaptchaSolverAntigate get antigate => $_get(4, 5, null);
  set antigate(CaptchaSolverAntigate v) { setField(5, v); }
  bool hasAntigate() => $_has(4, 5);
  void clearAntigate() => clearField(5);
}

class _ReadonlyCaptchaSolver extends CaptchaSolver with ReadonlyMessageMixin {}

class CaptchaSolverAntigate extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CaptchaSolverAntigate')
    ..a/*<String>*/(1, 'serviceUrl', PbFieldType.OS)
    ..a/*<String>*/(2, 'apiKey', PbFieldType.OS)
    ..a/*<bool>*/(3, 'requirePhrase', PbFieldType.OB)
    ..a/*<bool>*/(4, 'caseSensitive', PbFieldType.OB)
    ..e/*<CaptchaSolverAntigateCharacters>*/(5, 'characters', PbFieldType.OE, CaptchaSolverAntigateCharacters.ALPHANUMERIC, CaptchaSolverAntigateCharacters.valueOf)
    ..a/*<bool>*/(6, 'requireMath', PbFieldType.OB)
    ..a/*<int>*/(7, 'minLength', PbFieldType.O3)
    ..a/*<int>*/(8, 'maxLength', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CaptchaSolverAntigate() : super();
  CaptchaSolverAntigate.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CaptchaSolverAntigate.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CaptchaSolverAntigate clone() => new CaptchaSolverAntigate()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CaptchaSolverAntigate create() => new CaptchaSolverAntigate();
  static PbList<CaptchaSolverAntigate> createRepeated() => new PbList<CaptchaSolverAntigate>();
  static CaptchaSolverAntigate getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCaptchaSolverAntigate();
    return _defaultInstance;
  }
  static CaptchaSolverAntigate _defaultInstance;
  static void $checkItem(CaptchaSolverAntigate v) {
    if (v is! CaptchaSolverAntigate) checkItemFailed(v, 'CaptchaSolverAntigate');
  }

  String get serviceUrl => $_get(0, 1, '');
  set serviceUrl(String v) { $_setString(0, 1, v); }
  bool hasServiceUrl() => $_has(0, 1);
  void clearServiceUrl() => clearField(1);

  String get apiKey => $_get(1, 2, '');
  set apiKey(String v) { $_setString(1, 2, v); }
  bool hasApiKey() => $_has(1, 2);
  void clearApiKey() => clearField(2);

  bool get requirePhrase => $_get(2, 3, false);
  set requirePhrase(bool v) { $_setBool(2, 3, v); }
  bool hasRequirePhrase() => $_has(2, 3);
  void clearRequirePhrase() => clearField(3);

  bool get caseSensitive => $_get(3, 4, false);
  set caseSensitive(bool v) { $_setBool(3, 4, v); }
  bool hasCaseSensitive() => $_has(3, 4);
  void clearCaseSensitive() => clearField(4);

  CaptchaSolverAntigateCharacters get characters => $_get(4, 5, null);
  set characters(CaptchaSolverAntigateCharacters v) { setField(5, v); }
  bool hasCharacters() => $_has(4, 5);
  void clearCharacters() => clearField(5);

  bool get requireMath => $_get(5, 6, false);
  set requireMath(bool v) { $_setBool(5, 6, v); }
  bool hasRequireMath() => $_has(5, 6);
  void clearRequireMath() => clearField(6);

  int get minLength => $_get(6, 7, 0);
  set minLength(int v) { $_setUnsignedInt32(6, 7, v); }
  bool hasMinLength() => $_has(6, 7);
  void clearMinLength() => clearField(7);

  int get maxLength => $_get(7, 8, 0);
  set maxLength(int v) { $_setUnsignedInt32(7, 8, v); }
  bool hasMaxLength() => $_has(7, 8);
  void clearMaxLength() => clearField(8);
}

class _ReadonlyCaptchaSolverAntigate extends CaptchaSolverAntigate with ReadonlyMessageMixin {}

class DomainLogin extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DomainLogin')
    ..a/*<String>*/(1, 'domain', PbFieldType.OS)
    ..a/*<String>*/(2, 'loginUrl', PbFieldType.OS)
    ..a/*<String>*/(3, 'loginTest', PbFieldType.OS)
    ..a/*<int>*/(4, 'authCount', PbFieldType.O3)
    ..pp/*<DomainLoginUser>*/(5, 'users', PbFieldType.PM, DomainLoginUser.$checkItem, DomainLoginUser.create)
    ..hasRequiredFields = false
  ;

  DomainLogin() : super();
  DomainLogin.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DomainLogin.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DomainLogin clone() => new DomainLogin()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DomainLogin create() => new DomainLogin();
  static PbList<DomainLogin> createRepeated() => new PbList<DomainLogin>();
  static DomainLogin getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyDomainLogin();
    return _defaultInstance;
  }
  static DomainLogin _defaultInstance;
  static void $checkItem(DomainLogin v) {
    if (v is! DomainLogin) checkItemFailed(v, 'DomainLogin');
  }

  String get domain => $_get(0, 1, '');
  set domain(String v) { $_setString(0, 1, v); }
  bool hasDomain() => $_has(0, 1);
  void clearDomain() => clearField(1);

  String get loginUrl => $_get(1, 2, '');
  set loginUrl(String v) { $_setString(1, 2, v); }
  bool hasLoginUrl() => $_has(1, 2);
  void clearLoginUrl() => clearField(2);

  String get loginTest => $_get(2, 3, '');
  set loginTest(String v) { $_setString(2, 3, v); }
  bool hasLoginTest() => $_has(2, 3);
  void clearLoginTest() => clearField(3);

  int get authCount => $_get(3, 4, 0);
  set authCount(int v) { $_setUnsignedInt32(3, 4, v); }
  bool hasAuthCount() => $_has(3, 4);
  void clearAuthCount() => clearField(4);

  List<DomainLoginUser> get users => $_get(4, 5, null);
}

class _ReadonlyDomainLogin extends DomainLogin with ReadonlyMessageMixin {}

class DomainLoginUser extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DomainLoginUser')
    ..a/*<String>*/(1, 'username', PbFieldType.OS)
    ..a/*<String>*/(2, 'password', PbFieldType.OS)
    ..a/*<bool>*/(3, 'working', PbFieldType.OB)
    ..hasRequiredFields = false
  ;

  DomainLoginUser() : super();
  DomainLoginUser.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DomainLoginUser.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DomainLoginUser clone() => new DomainLoginUser()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DomainLoginUser create() => new DomainLoginUser();
  static PbList<DomainLoginUser> createRepeated() => new PbList<DomainLoginUser>();
  static DomainLoginUser getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyDomainLoginUser();
    return _defaultInstance;
  }
  static DomainLoginUser _defaultInstance;
  static void $checkItem(DomainLoginUser v) {
    if (v is! DomainLoginUser) checkItemFailed(v, 'DomainLoginUser');
  }

  String get username => $_get(0, 1, '');
  set username(String v) { $_setString(0, 1, v); }
  bool hasUsername() => $_has(0, 1);
  void clearUsername() => clearField(1);

  String get password => $_get(1, 2, '');
  set password(String v) { $_setString(1, 2, v); }
  bool hasPassword() => $_has(1, 2);
  void clearPassword() => clearField(2);

  bool get working => $_get(2, 3, false);
  set working(bool v) { $_setBool(2, 3, v); }
  bool hasWorking() => $_has(2, 3);
  void clearWorking() => clearField(3);
}

class _ReadonlyDomainLoginUser extends DomainLoginUser with ReadonlyMessageMixin {}

class CrawlResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CrawlResponse')
    ..a/*<List<int>>*/(1, 'body', PbFieldType.OY)
    ..a/*<String>*/(2, 'completedAt', PbFieldType.OS)
    ..a/*<String>*/(3, 'contentType', PbFieldType.OS)
    ..a/*<double>*/(4, 'cost', PbFieldType.OD)
    ..a/*<double>*/(5, 'duration', PbFieldType.OD)
    ..a/*<String>*/(6, 'exception', PbFieldType.OS)
    ..pp/*<Header>*/(7, 'headers', PbFieldType.PM, Header.$checkItem, Header.create)
    ..a/*<bool>*/(8, 'isBodyCompressed', PbFieldType.OB)
    ..a/*<bool>*/(9, 'isSuccess', PbFieldType.OB)
    ..a/*<List<int>>*/(10, 'jobId', PbFieldType.OY)
    ..a/*<String>*/(11, 'startedAt', PbFieldType.OS)
    ..a/*<int>*/(12, 'statusCode', PbFieldType.O3)
    ..a/*<String>*/(13, 'url', PbFieldType.OS)
    ..a/*<String>*/(14, 'urlCan', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  CrawlResponse() : super();
  CrawlResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CrawlResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CrawlResponse clone() => new CrawlResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CrawlResponse create() => new CrawlResponse();
  static PbList<CrawlResponse> createRepeated() => new PbList<CrawlResponse>();
  static CrawlResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCrawlResponse();
    return _defaultInstance;
  }
  static CrawlResponse _defaultInstance;
  static void $checkItem(CrawlResponse v) {
    if (v is! CrawlResponse) checkItemFailed(v, 'CrawlResponse');
  }

  List<int> get body => $_get(0, 1, null);
  set body(List<int> v) { $_setBytes(0, 1, v); }
  bool hasBody() => $_has(0, 1);
  void clearBody() => clearField(1);

  String get completedAt => $_get(1, 2, '');
  set completedAt(String v) { $_setString(1, 2, v); }
  bool hasCompletedAt() => $_has(1, 2);
  void clearCompletedAt() => clearField(2);

  String get contentType => $_get(2, 3, '');
  set contentType(String v) { $_setString(2, 3, v); }
  bool hasContentType() => $_has(2, 3);
  void clearContentType() => clearField(3);

  double get cost => $_get(3, 4, null);
  set cost(double v) { $_setDouble(3, 4, v); }
  bool hasCost() => $_has(3, 4);
  void clearCost() => clearField(4);

  double get duration => $_get(4, 5, null);
  set duration(double v) { $_setDouble(4, 5, v); }
  bool hasDuration() => $_has(4, 5);
  void clearDuration() => clearField(5);

  String get exception => $_get(5, 6, '');
  set exception(String v) { $_setString(5, 6, v); }
  bool hasException() => $_has(5, 6);
  void clearException() => clearField(6);

  List<Header> get headers => $_get(6, 7, null);

  bool get isBodyCompressed => $_get(7, 8, false);
  set isBodyCompressed(bool v) { $_setBool(7, 8, v); }
  bool hasIsBodyCompressed() => $_has(7, 8);
  void clearIsBodyCompressed() => clearField(8);

  bool get isSuccess => $_get(8, 9, false);
  set isSuccess(bool v) { $_setBool(8, 9, v); }
  bool hasIsSuccess() => $_has(8, 9);
  void clearIsSuccess() => clearField(9);

  List<int> get jobId => $_get(9, 10, null);
  set jobId(List<int> v) { $_setBytes(9, 10, v); }
  bool hasJobId() => $_has(9, 10);
  void clearJobId() => clearField(10);

  String get startedAt => $_get(10, 11, '');
  set startedAt(String v) { $_setString(10, 11, v); }
  bool hasStartedAt() => $_has(10, 11);
  void clearStartedAt() => clearField(11);

  int get statusCode => $_get(11, 12, 0);
  set statusCode(int v) { $_setUnsignedInt32(11, 12, v); }
  bool hasStatusCode() => $_has(11, 12);
  void clearStatusCode() => clearField(12);

  String get url => $_get(12, 13, '');
  set url(String v) { $_setString(12, 13, v); }
  bool hasUrl() => $_has(12, 13);
  void clearUrl() => clearField(13);

  String get urlCan => $_get(13, 14, '');
  set urlCan(String v) { $_setString(13, 14, v); }
  bool hasUrlCan() => $_has(13, 14);
  void clearUrlCan() => clearField(14);
}

class _ReadonlyCrawlResponse extends CrawlResponse with ReadonlyMessageMixin {}

class Header extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Header')
    ..a/*<String>*/(1, 'key', PbFieldType.OS)
    ..a/*<String>*/(2, 'value', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  Header() : super();
  Header.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Header.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Header clone() => new Header()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Header create() => new Header();
  static PbList<Header> createRepeated() => new PbList<Header>();
  static Header getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyHeader();
    return _defaultInstance;
  }
  static Header _defaultInstance;
  static void $checkItem(Header v) {
    if (v is! Header) checkItemFailed(v, 'Header');
  }

  String get key => $_get(0, 1, '');
  set key(String v) { $_setString(0, 1, v); }
  bool hasKey() => $_has(0, 1);
  void clearKey() => clearField(1);

  String get value => $_get(1, 2, '');
  set value(String v) { $_setString(1, 2, v); }
  bool hasValue() => $_has(1, 2);
  void clearValue() => clearField(2);
}

class _ReadonlyHeader extends Header with ReadonlyMessageMixin {}

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
    if (v is! Job_HttpStatusCountsEntry) checkItemFailed(v, 'Job_HttpStatusCountsEntry');
  }

  int get key => $_get(0, 1, 0);
  set key(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasKey() => $_has(0, 1);
  void clearKey() => clearField(1);

  int get value => $_get(1, 2, 0);
  set value(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasValue() => $_has(1, 2);
  void clearValue() => clearField(2);
}

class _ReadonlyJob_HttpStatusCountsEntry extends Job_HttpStatusCountsEntry with ReadonlyMessageMixin {}

class Job extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Job')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
    ..p/*<String>*/(2, 'seeds', PbFieldType.PS)
    ..a/*<Policy>*/(3, 'policy', PbFieldType.OM, Policy.getDefault, Policy.create)
    ..a/*<String>*/(4, 'name', PbFieldType.OS)
    ..a/*<TagList>*/(5, 'tagList', PbFieldType.OM, TagList.getDefault, TagList.create)
    ..e/*<JobRunState>*/(6, 'runState', PbFieldType.OE, JobRunState.CANCELLED, JobRunState.valueOf)
    ..a/*<String>*/(7, 'startedAt', PbFieldType.OS)
    ..a/*<String>*/(8, 'completedAt', PbFieldType.OS)
    ..a/*<int>*/(9, 'itemCount', PbFieldType.O3, -1)
    ..a/*<int>*/(10, 'httpSuccessCount', PbFieldType.O3, -1)
    ..a/*<int>*/(11, 'httpErrorCount', PbFieldType.O3, -1)
    ..a/*<int>*/(12, 'exceptionCount', PbFieldType.O3, -1)
    ..pp/*<Job_HttpStatusCountsEntry>*/(13, 'httpStatusCounts', PbFieldType.PM, Job_HttpStatusCountsEntry.$checkItem, Job_HttpStatusCountsEntry.create)
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
    if (v is! Job) checkItemFailed(v, 'Job');
  }

  List<int> get jobId => $_get(0, 1, null);
  set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  List<String> get seeds => $_get(1, 2, null);

  Policy get policy => $_get(2, 3, null);
  set policy(Policy v) { setField(3, v); }
  bool hasPolicy() => $_has(2, 3);
  void clearPolicy() => clearField(3);

  String get name => $_get(3, 4, '');
  set name(String v) { $_setString(3, 4, v); }
  bool hasName() => $_has(3, 4);
  void clearName() => clearField(4);

  TagList get tagList => $_get(4, 5, null);
  set tagList(TagList v) { setField(5, v); }
  bool hasTagList() => $_has(4, 5);
  void clearTagList() => clearField(5);

  JobRunState get runState => $_get(5, 6, null);
  set runState(JobRunState v) { setField(6, v); }
  bool hasRunState() => $_has(5, 6);
  void clearRunState() => clearField(6);

  String get startedAt => $_get(6, 7, '');
  set startedAt(String v) { $_setString(6, 7, v); }
  bool hasStartedAt() => $_has(6, 7);
  void clearStartedAt() => clearField(7);

  String get completedAt => $_get(7, 8, '');
  set completedAt(String v) { $_setString(7, 8, v); }
  bool hasCompletedAt() => $_has(7, 8);
  void clearCompletedAt() => clearField(8);

  int get itemCount => $_get(8, 9, -1);
  set itemCount(int v) { $_setUnsignedInt32(8, 9, v); }
  bool hasItemCount() => $_has(8, 9);
  void clearItemCount() => clearField(9);

  int get httpSuccessCount => $_get(9, 10, -1);
  set httpSuccessCount(int v) { $_setUnsignedInt32(9, 10, v); }
  bool hasHttpSuccessCount() => $_has(9, 10);
  void clearHttpSuccessCount() => clearField(10);

  int get httpErrorCount => $_get(10, 11, -1);
  set httpErrorCount(int v) { $_setUnsignedInt32(10, 11, v); }
  bool hasHttpErrorCount() => $_has(10, 11);
  void clearHttpErrorCount() => clearField(11);

  int get exceptionCount => $_get(11, 12, -1);
  set exceptionCount(int v) { $_setUnsignedInt32(11, 12, v); }
  bool hasExceptionCount() => $_has(11, 12);
  void clearExceptionCount() => clearField(12);

  List<Job_HttpStatusCountsEntry> get httpStatusCounts => $_get(12, 13, null);
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
    if (v is! JobList) checkItemFailed(v, 'JobList');
  }

  List<Job> get jobs => $_get(0, 1, null);
}

class _ReadonlyJobList extends JobList with ReadonlyMessageMixin {}

class JobSchedule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobSchedule')
    ..a/*<List<int>>*/(1, 'scheduleId', PbFieldType.QY)
    ..a/*<String>*/(2, 'createdAt', PbFieldType.OS)
    ..a/*<String>*/(3, 'updatedAt', PbFieldType.OS)
    ..a/*<bool>*/(4, 'enabled', PbFieldType.OB)
    ..e/*<JobScheduleTimeUnit>*/(5, 'timeUnit', PbFieldType.OE, JobScheduleTimeUnit.MINUTES, JobScheduleTimeUnit.valueOf)
    ..a/*<int>*/(6, 'numUnits', PbFieldType.O3)
    ..e/*<JobScheduleTiming>*/(7, 'timing', PbFieldType.OE, JobScheduleTiming.AFTER_PREVIOUS_JOB_FINISHED, JobScheduleTiming.valueOf)
    ..a/*<String>*/(8, 'scheduleName', PbFieldType.OS)
    ..a/*<String>*/(9, 'jobName', PbFieldType.OS)
    ..p/*<String>*/(10, 'seeds', PbFieldType.PS)
    ..a/*<List<int>>*/(11, 'policyId', PbFieldType.OY)
    ..a/*<TagList>*/(12, 'tagList', PbFieldType.OM, TagList.getDefault, TagList.create)
    ..a/*<List<int>>*/(13, 'latestJobId', PbFieldType.OY)
    ..a/*<int>*/(14, 'jobCount', PbFieldType.O3)
  ;

  JobSchedule() : super();
  JobSchedule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JobSchedule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JobSchedule clone() => new JobSchedule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobSchedule create() => new JobSchedule();
  static PbList<JobSchedule> createRepeated() => new PbList<JobSchedule>();
  static JobSchedule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobSchedule();
    return _defaultInstance;
  }
  static JobSchedule _defaultInstance;
  static void $checkItem(JobSchedule v) {
    if (v is! JobSchedule) checkItemFailed(v, 'JobSchedule');
  }

  List<int> get scheduleId => $_get(0, 1, null);
  set scheduleId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasScheduleId() => $_has(0, 1);
  void clearScheduleId() => clearField(1);

  String get createdAt => $_get(1, 2, '');
  set createdAt(String v) { $_setString(1, 2, v); }
  bool hasCreatedAt() => $_has(1, 2);
  void clearCreatedAt() => clearField(2);

  String get updatedAt => $_get(2, 3, '');
  set updatedAt(String v) { $_setString(2, 3, v); }
  bool hasUpdatedAt() => $_has(2, 3);
  void clearUpdatedAt() => clearField(3);

  bool get enabled => $_get(3, 4, false);
  set enabled(bool v) { $_setBool(3, 4, v); }
  bool hasEnabled() => $_has(3, 4);
  void clearEnabled() => clearField(4);

  JobScheduleTimeUnit get timeUnit => $_get(4, 5, null);
  set timeUnit(JobScheduleTimeUnit v) { setField(5, v); }
  bool hasTimeUnit() => $_has(4, 5);
  void clearTimeUnit() => clearField(5);

  int get numUnits => $_get(5, 6, 0);
  set numUnits(int v) { $_setUnsignedInt32(5, 6, v); }
  bool hasNumUnits() => $_has(5, 6);
  void clearNumUnits() => clearField(6);

  JobScheduleTiming get timing => $_get(6, 7, null);
  set timing(JobScheduleTiming v) { setField(7, v); }
  bool hasTiming() => $_has(6, 7);
  void clearTiming() => clearField(7);

  String get scheduleName => $_get(7, 8, '');
  set scheduleName(String v) { $_setString(7, 8, v); }
  bool hasScheduleName() => $_has(7, 8);
  void clearScheduleName() => clearField(8);

  String get jobName => $_get(8, 9, '');
  set jobName(String v) { $_setString(8, 9, v); }
  bool hasJobName() => $_has(8, 9);
  void clearJobName() => clearField(9);

  List<String> get seeds => $_get(9, 10, null);

  List<int> get policyId => $_get(10, 11, null);
  set policyId(List<int> v) { $_setBytes(10, 11, v); }
  bool hasPolicyId() => $_has(10, 11);
  void clearPolicyId() => clearField(11);

  TagList get tagList => $_get(11, 12, null);
  set tagList(TagList v) { setField(12, v); }
  bool hasTagList() => $_has(11, 12);
  void clearTagList() => clearField(12);

  List<int> get latestJobId => $_get(12, 13, null);
  set latestJobId(List<int> v) { $_setBytes(12, 13, v); }
  bool hasLatestJobId() => $_has(12, 13);
  void clearLatestJobId() => clearField(13);

  int get jobCount => $_get(13, 14, 0);
  set jobCount(int v) { $_setUnsignedInt32(13, 14, v); }
  bool hasJobCount() => $_has(13, 14);
  void clearJobCount() => clearField(14);
}

class _ReadonlyJobSchedule extends JobSchedule with ReadonlyMessageMixin {}

class JobScheduleList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('JobScheduleList')
    ..pp/*<JobSchedule>*/(1, 'jobSchedules', PbFieldType.PM, JobSchedule.$checkItem, JobSchedule.create)
  ;

  JobScheduleList() : super();
  JobScheduleList.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JobScheduleList.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JobScheduleList clone() => new JobScheduleList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static JobScheduleList create() => new JobScheduleList();
  static PbList<JobScheduleList> createRepeated() => new PbList<JobScheduleList>();
  static JobScheduleList getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyJobScheduleList();
    return _defaultInstance;
  }
  static JobScheduleList _defaultInstance;
  static void $checkItem(JobScheduleList v) {
    if (v is! JobScheduleList) checkItemFailed(v, 'JobScheduleList');
  }

  List<JobSchedule> get jobSchedules => $_get(0, 1, null);
}

class _ReadonlyJobScheduleList extends JobScheduleList with ReadonlyMessageMixin {}

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
    if (v is! Page) checkItemFailed(v, 'Page');
  }

  int get limit => $_get(0, 1, 10);
  set limit(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasLimit() => $_has(0, 1);
  void clearLimit() => clearField(1);

  int get offset => $_get(1, 2, 0);
  set offset(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasOffset() => $_has(1, 2);
  void clearOffset() => clearField(2);
}

class _ReadonlyPage extends Page with ReadonlyMessageMixin {}

class Policy extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Policy')
    ..a/*<List<int>>*/(1, 'policyId', PbFieldType.OY)
    ..a/*<String>*/(2, 'name', PbFieldType.OS)
    ..a/*<String>*/(3, 'createdAt', PbFieldType.OS)
    ..a/*<String>*/(4, 'updatedAt', PbFieldType.OS)
    ..a/*<PolicyAuthentication>*/(6, 'authentication', PbFieldType.OM, PolicyAuthentication.getDefault, PolicyAuthentication.create)
    ..a/*<PolicyLimits>*/(7, 'limits', PbFieldType.OM, PolicyLimits.getDefault, PolicyLimits.create)
    ..pp/*<PolicyProxyRule>*/(8, 'proxyRules', PbFieldType.PM, PolicyProxyRule.$checkItem, PolicyProxyRule.create)
    ..pp/*<PolicyMimeTypeRule>*/(9, 'mimeTypeRules', PbFieldType.PM, PolicyMimeTypeRule.$checkItem, PolicyMimeTypeRule.create)
    ..a/*<PolicyRobotsTxt>*/(10, 'robotsTxt', PbFieldType.OM, PolicyRobotsTxt.getDefault, PolicyRobotsTxt.create)
    ..pp/*<PolicyUrlRule>*/(11, 'urlRules', PbFieldType.PM, PolicyUrlRule.$checkItem, PolicyUrlRule.create)
    ..pp/*<PolicyUserAgent>*/(12, 'userAgents', PbFieldType.PM, PolicyUserAgent.$checkItem, PolicyUserAgent.create)
    ..a/*<PolicyUrlNormalization>*/(13, 'urlNormalization', PbFieldType.OM, PolicyUrlNormalization.getDefault, PolicyUrlNormalization.create)
    ..a/*<List<int>>*/(14, 'captchaSolverId', PbFieldType.OY)
  ;

  Policy() : super();
  Policy.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Policy.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Policy clone() => new Policy()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Policy create() => new Policy();
  static PbList<Policy> createRepeated() => new PbList<Policy>();
  static Policy getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicy();
    return _defaultInstance;
  }
  static Policy _defaultInstance;
  static void $checkItem(Policy v) {
    if (v is! Policy) checkItemFailed(v, 'Policy');
  }

  List<int> get policyId => $_get(0, 1, null);
  set policyId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasPolicyId() => $_has(0, 1);
  void clearPolicyId() => clearField(1);

  String get name => $_get(1, 2, '');
  set name(String v) { $_setString(1, 2, v); }
  bool hasName() => $_has(1, 2);
  void clearName() => clearField(2);

  String get createdAt => $_get(2, 3, '');
  set createdAt(String v) { $_setString(2, 3, v); }
  bool hasCreatedAt() => $_has(2, 3);
  void clearCreatedAt() => clearField(3);

  String get updatedAt => $_get(3, 4, '');
  set updatedAt(String v) { $_setString(3, 4, v); }
  bool hasUpdatedAt() => $_has(3, 4);
  void clearUpdatedAt() => clearField(4);

  PolicyAuthentication get authentication => $_get(4, 6, null);
  set authentication(PolicyAuthentication v) { setField(6, v); }
  bool hasAuthentication() => $_has(4, 6);
  void clearAuthentication() => clearField(6);

  PolicyLimits get limits => $_get(5, 7, null);
  set limits(PolicyLimits v) { setField(7, v); }
  bool hasLimits() => $_has(5, 7);
  void clearLimits() => clearField(7);

  List<PolicyProxyRule> get proxyRules => $_get(6, 8, null);

  List<PolicyMimeTypeRule> get mimeTypeRules => $_get(7, 9, null);

  PolicyRobotsTxt get robotsTxt => $_get(8, 10, null);
  set robotsTxt(PolicyRobotsTxt v) { setField(10, v); }
  bool hasRobotsTxt() => $_has(8, 10);
  void clearRobotsTxt() => clearField(10);

  List<PolicyUrlRule> get urlRules => $_get(9, 11, null);

  List<PolicyUserAgent> get userAgents => $_get(10, 12, null);

  PolicyUrlNormalization get urlNormalization => $_get(11, 13, null);
  set urlNormalization(PolicyUrlNormalization v) { setField(13, v); }
  bool hasUrlNormalization() => $_has(11, 13);
  void clearUrlNormalization() => clearField(13);

  List<int> get captchaSolverId => $_get(12, 14, null);
  set captchaSolverId(List<int> v) { $_setBytes(12, 14, v); }
  bool hasCaptchaSolverId() => $_has(12, 14);
  void clearCaptchaSolverId() => clearField(14);
}

class _ReadonlyPolicy extends Policy with ReadonlyMessageMixin {}

class PolicyAuthentication extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyAuthentication')
    ..a/*<bool>*/(1, 'enabled', PbFieldType.OB)
    ..hasRequiredFields = false
  ;

  PolicyAuthentication() : super();
  PolicyAuthentication.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyAuthentication.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyAuthentication clone() => new PolicyAuthentication()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyAuthentication create() => new PolicyAuthentication();
  static PbList<PolicyAuthentication> createRepeated() => new PbList<PolicyAuthentication>();
  static PolicyAuthentication getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyAuthentication();
    return _defaultInstance;
  }
  static PolicyAuthentication _defaultInstance;
  static void $checkItem(PolicyAuthentication v) {
    if (v is! PolicyAuthentication) checkItemFailed(v, 'PolicyAuthentication');
  }

  bool get enabled => $_get(0, 1, false);
  set enabled(bool v) { $_setBool(0, 1, v); }
  bool hasEnabled() => $_has(0, 1);
  void clearEnabled() => clearField(1);
}

class _ReadonlyPolicyAuthentication extends PolicyAuthentication with ReadonlyMessageMixin {}

class PolicyLimits extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyLimits')
    ..a/*<double>*/(1, 'maxCost', PbFieldType.OD)
    ..a/*<double>*/(2, 'maxDuration', PbFieldType.OD)
    ..a/*<int>*/(3, 'maxItems', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PolicyLimits() : super();
  PolicyLimits.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyLimits.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyLimits clone() => new PolicyLimits()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyLimits create() => new PolicyLimits();
  static PbList<PolicyLimits> createRepeated() => new PbList<PolicyLimits>();
  static PolicyLimits getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyLimits();
    return _defaultInstance;
  }
  static PolicyLimits _defaultInstance;
  static void $checkItem(PolicyLimits v) {
    if (v is! PolicyLimits) checkItemFailed(v, 'PolicyLimits');
  }

  double get maxCost => $_get(0, 1, null);
  set maxCost(double v) { $_setDouble(0, 1, v); }
  bool hasMaxCost() => $_has(0, 1);
  void clearMaxCost() => clearField(1);

  double get maxDuration => $_get(1, 2, null);
  set maxDuration(double v) { $_setDouble(1, 2, v); }
  bool hasMaxDuration() => $_has(1, 2);
  void clearMaxDuration() => clearField(2);

  int get maxItems => $_get(2, 3, 0);
  set maxItems(int v) { $_setUnsignedInt32(2, 3, v); }
  bool hasMaxItems() => $_has(2, 3);
  void clearMaxItems() => clearField(3);
}

class _ReadonlyPolicyLimits extends PolicyLimits with ReadonlyMessageMixin {}

class PolicyMimeTypeRule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyMimeTypeRule')
    ..a/*<String>*/(1, 'pattern', PbFieldType.OS)
    ..e/*<PatternMatch>*/(2, 'match', PbFieldType.OE, PatternMatch.MATCHES, PatternMatch.valueOf)
    ..a/*<bool>*/(3, 'save', PbFieldType.OB)
    ..hasRequiredFields = false
  ;

  PolicyMimeTypeRule() : super();
  PolicyMimeTypeRule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyMimeTypeRule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyMimeTypeRule clone() => new PolicyMimeTypeRule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyMimeTypeRule create() => new PolicyMimeTypeRule();
  static PbList<PolicyMimeTypeRule> createRepeated() => new PbList<PolicyMimeTypeRule>();
  static PolicyMimeTypeRule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyMimeTypeRule();
    return _defaultInstance;
  }
  static PolicyMimeTypeRule _defaultInstance;
  static void $checkItem(PolicyMimeTypeRule v) {
    if (v is! PolicyMimeTypeRule) checkItemFailed(v, 'PolicyMimeTypeRule');
  }

  String get pattern => $_get(0, 1, '');
  set pattern(String v) { $_setString(0, 1, v); }
  bool hasPattern() => $_has(0, 1);
  void clearPattern() => clearField(1);

  PatternMatch get match => $_get(1, 2, null);
  set match(PatternMatch v) { setField(2, v); }
  bool hasMatch() => $_has(1, 2);
  void clearMatch() => clearField(2);

  bool get save => $_get(2, 3, false);
  set save(bool v) { $_setBool(2, 3, v); }
  bool hasSave() => $_has(2, 3);
  void clearSave() => clearField(3);
}

class _ReadonlyPolicyMimeTypeRule extends PolicyMimeTypeRule with ReadonlyMessageMixin {}

class PolicyProxyRule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyProxyRule')
    ..a/*<String>*/(1, 'pattern', PbFieldType.OS)
    ..e/*<PatternMatch>*/(2, 'match', PbFieldType.OE, PatternMatch.MATCHES, PatternMatch.valueOf)
    ..a/*<String>*/(3, 'proxyUrl', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  PolicyProxyRule() : super();
  PolicyProxyRule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyProxyRule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyProxyRule clone() => new PolicyProxyRule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyProxyRule create() => new PolicyProxyRule();
  static PbList<PolicyProxyRule> createRepeated() => new PbList<PolicyProxyRule>();
  static PolicyProxyRule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyProxyRule();
    return _defaultInstance;
  }
  static PolicyProxyRule _defaultInstance;
  static void $checkItem(PolicyProxyRule v) {
    if (v is! PolicyProxyRule) checkItemFailed(v, 'PolicyProxyRule');
  }

  String get pattern => $_get(0, 1, '');
  set pattern(String v) { $_setString(0, 1, v); }
  bool hasPattern() => $_has(0, 1);
  void clearPattern() => clearField(1);

  PatternMatch get match => $_get(1, 2, null);
  set match(PatternMatch v) { setField(2, v); }
  bool hasMatch() => $_has(1, 2);
  void clearMatch() => clearField(2);

  String get proxyUrl => $_get(2, 3, '');
  set proxyUrl(String v) { $_setString(2, 3, v); }
  bool hasProxyUrl() => $_has(2, 3);
  void clearProxyUrl() => clearField(3);
}

class _ReadonlyPolicyProxyRule extends PolicyProxyRule with ReadonlyMessageMixin {}

class PolicyRobotsTxt extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyRobotsTxt')
    ..e/*<PolicyRobotsTxt_Usage>*/(1, 'usage', PbFieldType.QE, PolicyRobotsTxt_Usage.OBEY, PolicyRobotsTxt_Usage.valueOf)
  ;

  PolicyRobotsTxt() : super();
  PolicyRobotsTxt.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyRobotsTxt.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyRobotsTxt clone() => new PolicyRobotsTxt()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyRobotsTxt create() => new PolicyRobotsTxt();
  static PbList<PolicyRobotsTxt> createRepeated() => new PbList<PolicyRobotsTxt>();
  static PolicyRobotsTxt getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyRobotsTxt();
    return _defaultInstance;
  }
  static PolicyRobotsTxt _defaultInstance;
  static void $checkItem(PolicyRobotsTxt v) {
    if (v is! PolicyRobotsTxt) checkItemFailed(v, 'PolicyRobotsTxt');
  }

  PolicyRobotsTxt_Usage get usage => $_get(0, 1, null);
  set usage(PolicyRobotsTxt_Usage v) { setField(1, v); }
  bool hasUsage() => $_has(0, 1);
  void clearUsage() => clearField(1);
}

class _ReadonlyPolicyRobotsTxt extends PolicyRobotsTxt with ReadonlyMessageMixin {}

class PolicyUrlNormalization extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyUrlNormalization')
    ..a/*<bool>*/(1, 'enabled', PbFieldType.OB)
    ..p/*<String>*/(2, 'stripParameters', PbFieldType.PS)
    ..hasRequiredFields = false
  ;

  PolicyUrlNormalization() : super();
  PolicyUrlNormalization.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyUrlNormalization.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyUrlNormalization clone() => new PolicyUrlNormalization()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyUrlNormalization create() => new PolicyUrlNormalization();
  static PbList<PolicyUrlNormalization> createRepeated() => new PbList<PolicyUrlNormalization>();
  static PolicyUrlNormalization getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyUrlNormalization();
    return _defaultInstance;
  }
  static PolicyUrlNormalization _defaultInstance;
  static void $checkItem(PolicyUrlNormalization v) {
    if (v is! PolicyUrlNormalization) checkItemFailed(v, 'PolicyUrlNormalization');
  }

  bool get enabled => $_get(0, 1, false);
  set enabled(bool v) { $_setBool(0, 1, v); }
  bool hasEnabled() => $_has(0, 1);
  void clearEnabled() => clearField(1);

  List<String> get stripParameters => $_get(1, 2, null);
}

class _ReadonlyPolicyUrlNormalization extends PolicyUrlNormalization with ReadonlyMessageMixin {}

class PolicyUrlRule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyUrlRule')
    ..a/*<String>*/(1, 'pattern', PbFieldType.OS)
    ..e/*<PatternMatch>*/(2, 'match', PbFieldType.OE, PatternMatch.MATCHES, PatternMatch.valueOf)
    ..e/*<PolicyUrlRule_Action>*/(3, 'action', PbFieldType.OE, PolicyUrlRule_Action.ADD, PolicyUrlRule_Action.valueOf)
    ..a/*<double>*/(4, 'amount', PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  PolicyUrlRule() : super();
  PolicyUrlRule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyUrlRule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyUrlRule clone() => new PolicyUrlRule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyUrlRule create() => new PolicyUrlRule();
  static PbList<PolicyUrlRule> createRepeated() => new PbList<PolicyUrlRule>();
  static PolicyUrlRule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyUrlRule();
    return _defaultInstance;
  }
  static PolicyUrlRule _defaultInstance;
  static void $checkItem(PolicyUrlRule v) {
    if (v is! PolicyUrlRule) checkItemFailed(v, 'PolicyUrlRule');
  }

  String get pattern => $_get(0, 1, '');
  set pattern(String v) { $_setString(0, 1, v); }
  bool hasPattern() => $_has(0, 1);
  void clearPattern() => clearField(1);

  PatternMatch get match => $_get(1, 2, null);
  set match(PatternMatch v) { setField(2, v); }
  bool hasMatch() => $_has(1, 2);
  void clearMatch() => clearField(2);

  PolicyUrlRule_Action get action => $_get(2, 3, null);
  set action(PolicyUrlRule_Action v) { setField(3, v); }
  bool hasAction() => $_has(2, 3);
  void clearAction() => clearField(3);

  double get amount => $_get(3, 4, null);
  set amount(double v) { $_setDouble(3, 4, v); }
  bool hasAmount() => $_has(3, 4);
  void clearAmount() => clearField(4);
}

class _ReadonlyPolicyUrlRule extends PolicyUrlRule with ReadonlyMessageMixin {}

class PolicyUserAgent extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyUserAgent')
    ..a/*<String>*/(1, 'name', PbFieldType.QS)
  ;

  PolicyUserAgent() : super();
  PolicyUserAgent.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PolicyUserAgent.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PolicyUserAgent clone() => new PolicyUserAgent()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PolicyUserAgent create() => new PolicyUserAgent();
  static PbList<PolicyUserAgent> createRepeated() => new PbList<PolicyUserAgent>();
  static PolicyUserAgent getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPolicyUserAgent();
    return _defaultInstance;
  }
  static PolicyUserAgent _defaultInstance;
  static void $checkItem(PolicyUserAgent v) {
    if (v is! PolicyUserAgent) checkItemFailed(v, 'PolicyUserAgent');
  }

  String get name => $_get(0, 1, '');
  set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);
}

class _ReadonlyPolicyUserAgent extends PolicyUserAgent with ReadonlyMessageMixin {}

class RateLimit extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RateLimit')
    ..a/*<String>*/(1, 'name', PbFieldType.OS)
    ..a/*<double>*/(2, 'delay', PbFieldType.OF)
    ..a/*<String>*/(3, 'domain', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  RateLimit() : super();
  RateLimit.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RateLimit.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RateLimit clone() => new RateLimit()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RateLimit create() => new RateLimit();
  static PbList<RateLimit> createRepeated() => new PbList<RateLimit>();
  static RateLimit getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRateLimit();
    return _defaultInstance;
  }
  static RateLimit _defaultInstance;
  static void $checkItem(RateLimit v) {
    if (v is! RateLimit) checkItemFailed(v, 'RateLimit');
  }

  String get name => $_get(0, 1, '');
  set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);

  double get delay => $_get(1, 2, null);
  set delay(double v) { $_setFloat(1, 2, v); }
  bool hasDelay() => $_has(1, 2);
  void clearDelay() => clearField(2);

  String get domain => $_get(2, 3, '');
  set domain(String v) { $_setString(2, 3, v); }
  bool hasDomain() => $_has(2, 3);
  void clearDomain() => clearField(3);
}

class _ReadonlyRateLimit extends RateLimit with ReadonlyMessageMixin {}

class TagList extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TagList')
    ..p/*<String>*/(1, 'tags', PbFieldType.PS)
    ..hasRequiredFields = false
  ;

  TagList() : super();
  TagList.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TagList.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TagList clone() => new TagList()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TagList create() => new TagList();
  static PbList<TagList> createRepeated() => new PbList<TagList>();
  static TagList getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTagList();
    return _defaultInstance;
  }
  static TagList _defaultInstance;
  static void $checkItem(TagList v) {
    if (v is! TagList) checkItemFailed(v, 'TagList');
  }

  List<String> get tags => $_get(0, 1, null);
}

class _ReadonlyTagList extends TagList with ReadonlyMessageMixin {}

