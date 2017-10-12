///
//  Generated code. Do not modify.
///
library starbelly_client;

import 'package:protobuf/protobuf.dart';

import 'shared.pb.dart';

import 'shared.pbenum.dart';

class Request extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Request')
    ..a/*<int>*/(1, 'requestId', PbFieldType.Q3)
    ..a/*<RequestDeleteDomainLogin>*/(2, 'deleteDomainLogin', PbFieldType.OM, RequestDeleteDomainLogin.getDefault, RequestDeleteDomainLogin.create)
    ..a/*<RequestDeleteJob>*/(3, 'deleteJob', PbFieldType.OM, RequestDeleteJob.getDefault, RequestDeleteJob.create)
    ..a/*<RequestDeletePolicy>*/(4, 'deletePolicy', PbFieldType.OM, RequestDeletePolicy.getDefault, RequestDeletePolicy.create)
    ..a/*<RequestGetDomainLogin>*/(5, 'getDomainLogin', PbFieldType.OM, RequestGetDomainLogin.getDefault, RequestGetDomainLogin.create)
    ..a/*<RequestGetJob>*/(6, 'getJob', PbFieldType.OM, RequestGetJob.getDefault, RequestGetJob.create)
    ..a/*<RequestGetJobItems>*/(7, 'getJobItems', PbFieldType.OM, RequestGetJobItems.getDefault, RequestGetJobItems.create)
    ..a/*<RequestGetPolicy>*/(8, 'getPolicy', PbFieldType.OM, RequestGetPolicy.getDefault, RequestGetPolicy.create)
    ..a/*<RequestGetRateLimits>*/(9, 'getRateLimits', PbFieldType.OM, RequestGetRateLimits.getDefault, RequestGetRateLimits.create)
    ..a/*<RequestListDomainLogins>*/(10, 'listDomainLogins', PbFieldType.OM, RequestListDomainLogins.getDefault, RequestListDomainLogins.create)
    ..a/*<RequestListJobs>*/(11, 'listJobs', PbFieldType.OM, RequestListJobs.getDefault, RequestListJobs.create)
    ..a/*<RequestListPolicies>*/(12, 'listPolicies', PbFieldType.OM, RequestListPolicies.getDefault, RequestListPolicies.create)
    ..a/*<RequestPerformanceProfile>*/(13, 'performanceProfile', PbFieldType.OM, RequestPerformanceProfile.getDefault, RequestPerformanceProfile.create)
    ..a/*<RequestPing>*/(14, 'ping', PbFieldType.OM, RequestPing.getDefault, RequestPing.create)
    ..a/*<RequestSetDomainLogin>*/(15, 'setDomainLogin', PbFieldType.OM, RequestSetDomainLogin.getDefault, RequestSetDomainLogin.create)
    ..a/*<RequestSetJob>*/(16, 'setJob', PbFieldType.OM, RequestSetJob.getDefault, RequestSetJob.create)
    ..a/*<RequestSetPolicy>*/(17, 'setPolicy', PbFieldType.OM, RequestSetPolicy.getDefault, RequestSetPolicy.create)
    ..a/*<RequestSetRateLimit>*/(18, 'setRateLimit', PbFieldType.OM, RequestSetRateLimit.getDefault, RequestSetRateLimit.create)
    ..a/*<RequestSubscribeJobStatus>*/(19, 'subscribeJobStatus', PbFieldType.OM, RequestSubscribeJobStatus.getDefault, RequestSubscribeJobStatus.create)
    ..a/*<RequestSubscribeJobSync>*/(20, 'subscribeJobSync', PbFieldType.OM, RequestSubscribeJobSync.getDefault, RequestSubscribeJobSync.create)
    ..a/*<RequestSubscribeResourceMonitor>*/(21, 'subscribeResourceMonitor', PbFieldType.OM, RequestSubscribeResourceMonitor.getDefault, RequestSubscribeResourceMonitor.create)
    ..a/*<RequestSubscribeTaskMonitor>*/(22, 'subscribeTaskMonitor', PbFieldType.OM, RequestSubscribeTaskMonitor.getDefault, RequestSubscribeTaskMonitor.create)
    ..a/*<RequestUnsubscribe>*/(23, 'unsubscribe', PbFieldType.OM, RequestUnsubscribe.getDefault, RequestUnsubscribe.create)
    ..a/*<RequestDeleteJobSchedule>*/(24, 'deleteJobSchedule', PbFieldType.OM, RequestDeleteJobSchedule.getDefault, RequestDeleteJobSchedule.create)
    ..a/*<RequestGetJobSchedule>*/(25, 'getJobSchedule', PbFieldType.OM, RequestGetJobSchedule.getDefault, RequestGetJobSchedule.create)
    ..a/*<RequestListJobSchedules>*/(26, 'listJobSchedules', PbFieldType.OM, RequestListJobSchedules.getDefault, RequestListJobSchedules.create)
    ..a/*<RequestSetJobSchedule>*/(27, 'setJobSchedule', PbFieldType.OM, RequestSetJobSchedule.getDefault, RequestSetJobSchedule.create)
  ;

  Request() : super();
  Request.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Request.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Request clone() => new Request()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Request create() => new Request();
  static PbList<Request> createRepeated() => new PbList<Request>();
  static Request getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequest();
    return _defaultInstance;
  }
  static Request _defaultInstance;
  static void $checkItem(Request v) {
    if (v is !Request) checkItemFailed(v, 'Request');
  }

  int get requestId => $_get(0, 1, 0);
  void set requestId(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasRequestId() => $_has(0, 1);
  void clearRequestId() => clearField(1);

  RequestDeleteDomainLogin get deleteDomainLogin => $_get(1, 2, null);
  void set deleteDomainLogin(RequestDeleteDomainLogin v) { setField(2, v); }
  bool hasDeleteDomainLogin() => $_has(1, 2);
  void clearDeleteDomainLogin() => clearField(2);

  RequestDeleteJob get deleteJob => $_get(2, 3, null);
  void set deleteJob(RequestDeleteJob v) { setField(3, v); }
  bool hasDeleteJob() => $_has(2, 3);
  void clearDeleteJob() => clearField(3);

  RequestDeletePolicy get deletePolicy => $_get(3, 4, null);
  void set deletePolicy(RequestDeletePolicy v) { setField(4, v); }
  bool hasDeletePolicy() => $_has(3, 4);
  void clearDeletePolicy() => clearField(4);

  RequestGetDomainLogin get getDomainLogin => $_get(4, 5, null);
  void set getDomainLogin(RequestGetDomainLogin v) { setField(5, v); }
  bool hasGetDomainLogin() => $_has(4, 5);
  void clearGetDomainLogin() => clearField(5);

  RequestGetJob get getJob => $_get(5, 6, null);
  void set getJob(RequestGetJob v) { setField(6, v); }
  bool hasGetJob() => $_has(5, 6);
  void clearGetJob() => clearField(6);

  RequestGetJobItems get getJobItems => $_get(6, 7, null);
  void set getJobItems(RequestGetJobItems v) { setField(7, v); }
  bool hasGetJobItems() => $_has(6, 7);
  void clearGetJobItems() => clearField(7);

  RequestGetPolicy get getPolicy => $_get(7, 8, null);
  void set getPolicy(RequestGetPolicy v) { setField(8, v); }
  bool hasGetPolicy() => $_has(7, 8);
  void clearGetPolicy() => clearField(8);

  RequestGetRateLimits get getRateLimits => $_get(8, 9, null);
  void set getRateLimits(RequestGetRateLimits v) { setField(9, v); }
  bool hasGetRateLimits() => $_has(8, 9);
  void clearGetRateLimits() => clearField(9);

  RequestListDomainLogins get listDomainLogins => $_get(9, 10, null);
  void set listDomainLogins(RequestListDomainLogins v) { setField(10, v); }
  bool hasListDomainLogins() => $_has(9, 10);
  void clearListDomainLogins() => clearField(10);

  RequestListJobs get listJobs => $_get(10, 11, null);
  void set listJobs(RequestListJobs v) { setField(11, v); }
  bool hasListJobs() => $_has(10, 11);
  void clearListJobs() => clearField(11);

  RequestListPolicies get listPolicies => $_get(11, 12, null);
  void set listPolicies(RequestListPolicies v) { setField(12, v); }
  bool hasListPolicies() => $_has(11, 12);
  void clearListPolicies() => clearField(12);

  RequestPerformanceProfile get performanceProfile => $_get(12, 13, null);
  void set performanceProfile(RequestPerformanceProfile v) { setField(13, v); }
  bool hasPerformanceProfile() => $_has(12, 13);
  void clearPerformanceProfile() => clearField(13);

  RequestPing get ping => $_get(13, 14, null);
  void set ping(RequestPing v) { setField(14, v); }
  bool hasPing() => $_has(13, 14);
  void clearPing() => clearField(14);

  RequestSetDomainLogin get setDomainLogin => $_get(14, 15, null);
  void set setDomainLogin(RequestSetDomainLogin v) { setField(15, v); }
  bool hasSetDomainLogin() => $_has(14, 15);
  void clearSetDomainLogin() => clearField(15);

  RequestSetJob get setJob => $_get(15, 16, null);
  void set setJob(RequestSetJob v) { setField(16, v); }
  bool hasSetJob() => $_has(15, 16);
  void clearSetJob() => clearField(16);

  RequestSetPolicy get setPolicy => $_get(16, 17, null);
  void set setPolicy(RequestSetPolicy v) { setField(17, v); }
  bool hasSetPolicy() => $_has(16, 17);
  void clearSetPolicy() => clearField(17);

  RequestSetRateLimit get setRateLimit => $_get(17, 18, null);
  void set setRateLimit(RequestSetRateLimit v) { setField(18, v); }
  bool hasSetRateLimit() => $_has(17, 18);
  void clearSetRateLimit() => clearField(18);

  RequestSubscribeJobStatus get subscribeJobStatus => $_get(18, 19, null);
  void set subscribeJobStatus(RequestSubscribeJobStatus v) { setField(19, v); }
  bool hasSubscribeJobStatus() => $_has(18, 19);
  void clearSubscribeJobStatus() => clearField(19);

  RequestSubscribeJobSync get subscribeJobSync => $_get(19, 20, null);
  void set subscribeJobSync(RequestSubscribeJobSync v) { setField(20, v); }
  bool hasSubscribeJobSync() => $_has(19, 20);
  void clearSubscribeJobSync() => clearField(20);

  RequestSubscribeResourceMonitor get subscribeResourceMonitor => $_get(20, 21, null);
  void set subscribeResourceMonitor(RequestSubscribeResourceMonitor v) { setField(21, v); }
  bool hasSubscribeResourceMonitor() => $_has(20, 21);
  void clearSubscribeResourceMonitor() => clearField(21);

  RequestSubscribeTaskMonitor get subscribeTaskMonitor => $_get(21, 22, null);
  void set subscribeTaskMonitor(RequestSubscribeTaskMonitor v) { setField(22, v); }
  bool hasSubscribeTaskMonitor() => $_has(21, 22);
  void clearSubscribeTaskMonitor() => clearField(22);

  RequestUnsubscribe get unsubscribe => $_get(22, 23, null);
  void set unsubscribe(RequestUnsubscribe v) { setField(23, v); }
  bool hasUnsubscribe() => $_has(22, 23);
  void clearUnsubscribe() => clearField(23);

  RequestDeleteJobSchedule get deleteJobSchedule => $_get(23, 24, null);
  void set deleteJobSchedule(RequestDeleteJobSchedule v) { setField(24, v); }
  bool hasDeleteJobSchedule() => $_has(23, 24);
  void clearDeleteJobSchedule() => clearField(24);

  RequestGetJobSchedule get getJobSchedule => $_get(24, 25, null);
  void set getJobSchedule(RequestGetJobSchedule v) { setField(25, v); }
  bool hasGetJobSchedule() => $_has(24, 25);
  void clearGetJobSchedule() => clearField(25);

  RequestListJobSchedules get listJobSchedules => $_get(25, 26, null);
  void set listJobSchedules(RequestListJobSchedules v) { setField(26, v); }
  bool hasListJobSchedules() => $_has(25, 26);
  void clearListJobSchedules() => clearField(26);

  RequestSetJobSchedule get setJobSchedule => $_get(26, 27, null);
  void set setJobSchedule(RequestSetJobSchedule v) { setField(27, v); }
  bool hasSetJobSchedule() => $_has(26, 27);
  void clearSetJobSchedule() => clearField(27);
}

class _ReadonlyRequest extends Request with ReadonlyMessageMixin {}

class RequestDeleteDomainLogin extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestDeleteDomainLogin')
    ..a/*<String>*/(1, 'domain', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  RequestDeleteDomainLogin() : super();
  RequestDeleteDomainLogin.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestDeleteDomainLogin.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestDeleteDomainLogin clone() => new RequestDeleteDomainLogin()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestDeleteDomainLogin create() => new RequestDeleteDomainLogin();
  static PbList<RequestDeleteDomainLogin> createRepeated() => new PbList<RequestDeleteDomainLogin>();
  static RequestDeleteDomainLogin getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestDeleteDomainLogin();
    return _defaultInstance;
  }
  static RequestDeleteDomainLogin _defaultInstance;
  static void $checkItem(RequestDeleteDomainLogin v) {
    if (v is !RequestDeleteDomainLogin) checkItemFailed(v, 'RequestDeleteDomainLogin');
  }

  String get domain => $_get(0, 1, '');
  void set domain(String v) { $_setString(0, 1, v); }
  bool hasDomain() => $_has(0, 1);
  void clearDomain() => clearField(1);
}

class _ReadonlyRequestDeleteDomainLogin extends RequestDeleteDomainLogin with ReadonlyMessageMixin {}

class RequestDeleteJob extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestDeleteJob')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
  ;

  RequestDeleteJob() : super();
  RequestDeleteJob.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestDeleteJob.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestDeleteJob clone() => new RequestDeleteJob()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestDeleteJob create() => new RequestDeleteJob();
  static PbList<RequestDeleteJob> createRepeated() => new PbList<RequestDeleteJob>();
  static RequestDeleteJob getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestDeleteJob();
    return _defaultInstance;
  }
  static RequestDeleteJob _defaultInstance;
  static void $checkItem(RequestDeleteJob v) {
    if (v is !RequestDeleteJob) checkItemFailed(v, 'RequestDeleteJob');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);
}

class _ReadonlyRequestDeleteJob extends RequestDeleteJob with ReadonlyMessageMixin {}

class RequestDeleteJobSchedule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestDeleteJobSchedule')
    ..a/*<List<int>>*/(1, 'scheduleId', PbFieldType.QY)
  ;

  RequestDeleteJobSchedule() : super();
  RequestDeleteJobSchedule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestDeleteJobSchedule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestDeleteJobSchedule clone() => new RequestDeleteJobSchedule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestDeleteJobSchedule create() => new RequestDeleteJobSchedule();
  static PbList<RequestDeleteJobSchedule> createRepeated() => new PbList<RequestDeleteJobSchedule>();
  static RequestDeleteJobSchedule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestDeleteJobSchedule();
    return _defaultInstance;
  }
  static RequestDeleteJobSchedule _defaultInstance;
  static void $checkItem(RequestDeleteJobSchedule v) {
    if (v is !RequestDeleteJobSchedule) checkItemFailed(v, 'RequestDeleteJobSchedule');
  }

  List<int> get scheduleId => $_get(0, 1, null);
  void set scheduleId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasScheduleId() => $_has(0, 1);
  void clearScheduleId() => clearField(1);
}

class _ReadonlyRequestDeleteJobSchedule extends RequestDeleteJobSchedule with ReadonlyMessageMixin {}

class RequestDeletePolicy extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestDeletePolicy')
    ..a/*<List<int>>*/(1, 'policyId', PbFieldType.QY)
  ;

  RequestDeletePolicy() : super();
  RequestDeletePolicy.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestDeletePolicy.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestDeletePolicy clone() => new RequestDeletePolicy()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestDeletePolicy create() => new RequestDeletePolicy();
  static PbList<RequestDeletePolicy> createRepeated() => new PbList<RequestDeletePolicy>();
  static RequestDeletePolicy getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestDeletePolicy();
    return _defaultInstance;
  }
  static RequestDeletePolicy _defaultInstance;
  static void $checkItem(RequestDeletePolicy v) {
    if (v is !RequestDeletePolicy) checkItemFailed(v, 'RequestDeletePolicy');
  }

  List<int> get policyId => $_get(0, 1, null);
  void set policyId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasPolicyId() => $_has(0, 1);
  void clearPolicyId() => clearField(1);
}

class _ReadonlyRequestDeletePolicy extends RequestDeletePolicy with ReadonlyMessageMixin {}

class RequestGetDomainLogin extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestGetDomainLogin')
    ..a/*<String>*/(1, 'domain', PbFieldType.QS)
  ;

  RequestGetDomainLogin() : super();
  RequestGetDomainLogin.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestGetDomainLogin.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestGetDomainLogin clone() => new RequestGetDomainLogin()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestGetDomainLogin create() => new RequestGetDomainLogin();
  static PbList<RequestGetDomainLogin> createRepeated() => new PbList<RequestGetDomainLogin>();
  static RequestGetDomainLogin getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestGetDomainLogin();
    return _defaultInstance;
  }
  static RequestGetDomainLogin _defaultInstance;
  static void $checkItem(RequestGetDomainLogin v) {
    if (v is !RequestGetDomainLogin) checkItemFailed(v, 'RequestGetDomainLogin');
  }

  String get domain => $_get(0, 1, '');
  void set domain(String v) { $_setString(0, 1, v); }
  bool hasDomain() => $_has(0, 1);
  void clearDomain() => clearField(1);
}

class _ReadonlyRequestGetDomainLogin extends RequestGetDomainLogin with ReadonlyMessageMixin {}

class RequestGetJob extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestGetJob')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
  ;

  RequestGetJob() : super();
  RequestGetJob.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestGetJob.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestGetJob clone() => new RequestGetJob()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestGetJob create() => new RequestGetJob();
  static PbList<RequestGetJob> createRepeated() => new PbList<RequestGetJob>();
  static RequestGetJob getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestGetJob();
    return _defaultInstance;
  }
  static RequestGetJob _defaultInstance;
  static void $checkItem(RequestGetJob v) {
    if (v is !RequestGetJob) checkItemFailed(v, 'RequestGetJob');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);
}

class _ReadonlyRequestGetJob extends RequestGetJob with ReadonlyMessageMixin {}

class RequestGetJobSchedule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestGetJobSchedule')
    ..a/*<List<int>>*/(1, 'scheduleId', PbFieldType.QY)
  ;

  RequestGetJobSchedule() : super();
  RequestGetJobSchedule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestGetJobSchedule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestGetJobSchedule clone() => new RequestGetJobSchedule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestGetJobSchedule create() => new RequestGetJobSchedule();
  static PbList<RequestGetJobSchedule> createRepeated() => new PbList<RequestGetJobSchedule>();
  static RequestGetJobSchedule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestGetJobSchedule();
    return _defaultInstance;
  }
  static RequestGetJobSchedule _defaultInstance;
  static void $checkItem(RequestGetJobSchedule v) {
    if (v is !RequestGetJobSchedule) checkItemFailed(v, 'RequestGetJobSchedule');
  }

  List<int> get scheduleId => $_get(0, 1, null);
  void set scheduleId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasScheduleId() => $_has(0, 1);
  void clearScheduleId() => clearField(1);
}

class _ReadonlyRequestGetJobSchedule extends RequestGetJobSchedule with ReadonlyMessageMixin {}

class RequestGetJobItems extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestGetJobItems')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
    ..a/*<bool>*/(2, 'includeSuccess', PbFieldType.OB)
    ..a/*<bool>*/(3, 'includeError', PbFieldType.OB)
    ..a/*<bool>*/(4, 'includeException', PbFieldType.OB)
    ..a/*<bool>*/(5, 'compressionOk', PbFieldType.OB, true)
    ..a/*<Page>*/(6, 'page', PbFieldType.OM, Page.getDefault, Page.create)
  ;

  RequestGetJobItems() : super();
  RequestGetJobItems.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestGetJobItems.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestGetJobItems clone() => new RequestGetJobItems()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestGetJobItems create() => new RequestGetJobItems();
  static PbList<RequestGetJobItems> createRepeated() => new PbList<RequestGetJobItems>();
  static RequestGetJobItems getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestGetJobItems();
    return _defaultInstance;
  }
  static RequestGetJobItems _defaultInstance;
  static void $checkItem(RequestGetJobItems v) {
    if (v is !RequestGetJobItems) checkItemFailed(v, 'RequestGetJobItems');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  bool get includeSuccess => $_get(1, 2, false);
  void set includeSuccess(bool v) { $_setBool(1, 2, v); }
  bool hasIncludeSuccess() => $_has(1, 2);
  void clearIncludeSuccess() => clearField(2);

  bool get includeError => $_get(2, 3, false);
  void set includeError(bool v) { $_setBool(2, 3, v); }
  bool hasIncludeError() => $_has(2, 3);
  void clearIncludeError() => clearField(3);

  bool get includeException => $_get(3, 4, false);
  void set includeException(bool v) { $_setBool(3, 4, v); }
  bool hasIncludeException() => $_has(3, 4);
  void clearIncludeException() => clearField(4);

  bool get compressionOk => $_get(4, 5, true);
  void set compressionOk(bool v) { $_setBool(4, 5, v); }
  bool hasCompressionOk() => $_has(4, 5);
  void clearCompressionOk() => clearField(5);

  Page get page => $_get(5, 6, null);
  void set page(Page v) { setField(6, v); }
  bool hasPage() => $_has(5, 6);
  void clearPage() => clearField(6);
}

class _ReadonlyRequestGetJobItems extends RequestGetJobItems with ReadonlyMessageMixin {}

class RequestGetPolicy extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestGetPolicy')
    ..a/*<List<int>>*/(1, 'policyId', PbFieldType.QY)
  ;

  RequestGetPolicy() : super();
  RequestGetPolicy.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestGetPolicy.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestGetPolicy clone() => new RequestGetPolicy()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestGetPolicy create() => new RequestGetPolicy();
  static PbList<RequestGetPolicy> createRepeated() => new PbList<RequestGetPolicy>();
  static RequestGetPolicy getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestGetPolicy();
    return _defaultInstance;
  }
  static RequestGetPolicy _defaultInstance;
  static void $checkItem(RequestGetPolicy v) {
    if (v is !RequestGetPolicy) checkItemFailed(v, 'RequestGetPolicy');
  }

  List<int> get policyId => $_get(0, 1, null);
  void set policyId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasPolicyId() => $_has(0, 1);
  void clearPolicyId() => clearField(1);
}

class _ReadonlyRequestGetPolicy extends RequestGetPolicy with ReadonlyMessageMixin {}

class RequestGetRateLimits extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestGetRateLimits')
    ..a/*<Page>*/(1, 'page', PbFieldType.OM, Page.getDefault, Page.create)
    ..hasRequiredFields = false
  ;

  RequestGetRateLimits() : super();
  RequestGetRateLimits.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestGetRateLimits.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestGetRateLimits clone() => new RequestGetRateLimits()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestGetRateLimits create() => new RequestGetRateLimits();
  static PbList<RequestGetRateLimits> createRepeated() => new PbList<RequestGetRateLimits>();
  static RequestGetRateLimits getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestGetRateLimits();
    return _defaultInstance;
  }
  static RequestGetRateLimits _defaultInstance;
  static void $checkItem(RequestGetRateLimits v) {
    if (v is !RequestGetRateLimits) checkItemFailed(v, 'RequestGetRateLimits');
  }

  Page get page => $_get(0, 1, null);
  void set page(Page v) { setField(1, v); }
  bool hasPage() => $_has(0, 1);
  void clearPage() => clearField(1);
}

class _ReadonlyRequestGetRateLimits extends RequestGetRateLimits with ReadonlyMessageMixin {}

class RequestListDomainLogins extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestListDomainLogins')
    ..a/*<Page>*/(1, 'page', PbFieldType.OM, Page.getDefault, Page.create)
    ..hasRequiredFields = false
  ;

  RequestListDomainLogins() : super();
  RequestListDomainLogins.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestListDomainLogins.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestListDomainLogins clone() => new RequestListDomainLogins()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestListDomainLogins create() => new RequestListDomainLogins();
  static PbList<RequestListDomainLogins> createRepeated() => new PbList<RequestListDomainLogins>();
  static RequestListDomainLogins getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestListDomainLogins();
    return _defaultInstance;
  }
  static RequestListDomainLogins _defaultInstance;
  static void $checkItem(RequestListDomainLogins v) {
    if (v is !RequestListDomainLogins) checkItemFailed(v, 'RequestListDomainLogins');
  }

  Page get page => $_get(0, 1, null);
  void set page(Page v) { setField(1, v); }
  bool hasPage() => $_has(0, 1);
  void clearPage() => clearField(1);
}

class _ReadonlyRequestListDomainLogins extends RequestListDomainLogins with ReadonlyMessageMixin {}

class RequestListJobs extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestListJobs')
    ..a/*<Page>*/(1, 'page', PbFieldType.OM, Page.getDefault, Page.create)
    ..a/*<String>*/(2, 'startedAfter', PbFieldType.OS)
    ..a/*<String>*/(3, 'tag', PbFieldType.OS)
    ..a/*<List<int>>*/(4, 'scheduleId', PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RequestListJobs() : super();
  RequestListJobs.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestListJobs.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestListJobs clone() => new RequestListJobs()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestListJobs create() => new RequestListJobs();
  static PbList<RequestListJobs> createRepeated() => new PbList<RequestListJobs>();
  static RequestListJobs getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestListJobs();
    return _defaultInstance;
  }
  static RequestListJobs _defaultInstance;
  static void $checkItem(RequestListJobs v) {
    if (v is !RequestListJobs) checkItemFailed(v, 'RequestListJobs');
  }

  Page get page => $_get(0, 1, null);
  void set page(Page v) { setField(1, v); }
  bool hasPage() => $_has(0, 1);
  void clearPage() => clearField(1);

  String get startedAfter => $_get(1, 2, '');
  void set startedAfter(String v) { $_setString(1, 2, v); }
  bool hasStartedAfter() => $_has(1, 2);
  void clearStartedAfter() => clearField(2);

  String get tag => $_get(2, 3, '');
  void set tag(String v) { $_setString(2, 3, v); }
  bool hasTag() => $_has(2, 3);
  void clearTag() => clearField(3);

  List<int> get scheduleId => $_get(3, 4, null);
  void set scheduleId(List<int> v) { $_setBytes(3, 4, v); }
  bool hasScheduleId() => $_has(3, 4);
  void clearScheduleId() => clearField(4);
}

class _ReadonlyRequestListJobs extends RequestListJobs with ReadonlyMessageMixin {}

class RequestListJobSchedules extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestListJobSchedules')
    ..a/*<Page>*/(1, 'page', PbFieldType.OM, Page.getDefault, Page.create)
    ..hasRequiredFields = false
  ;

  RequestListJobSchedules() : super();
  RequestListJobSchedules.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestListJobSchedules.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestListJobSchedules clone() => new RequestListJobSchedules()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestListJobSchedules create() => new RequestListJobSchedules();
  static PbList<RequestListJobSchedules> createRepeated() => new PbList<RequestListJobSchedules>();
  static RequestListJobSchedules getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestListJobSchedules();
    return _defaultInstance;
  }
  static RequestListJobSchedules _defaultInstance;
  static void $checkItem(RequestListJobSchedules v) {
    if (v is !RequestListJobSchedules) checkItemFailed(v, 'RequestListJobSchedules');
  }

  Page get page => $_get(0, 1, null);
  void set page(Page v) { setField(1, v); }
  bool hasPage() => $_has(0, 1);
  void clearPage() => clearField(1);
}

class _ReadonlyRequestListJobSchedules extends RequestListJobSchedules with ReadonlyMessageMixin {}

class RequestListPolicies extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestListPolicies')
    ..a/*<Page>*/(1, 'page', PbFieldType.OM, Page.getDefault, Page.create)
    ..hasRequiredFields = false
  ;

  RequestListPolicies() : super();
  RequestListPolicies.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestListPolicies.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestListPolicies clone() => new RequestListPolicies()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestListPolicies create() => new RequestListPolicies();
  static PbList<RequestListPolicies> createRepeated() => new PbList<RequestListPolicies>();
  static RequestListPolicies getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestListPolicies();
    return _defaultInstance;
  }
  static RequestListPolicies _defaultInstance;
  static void $checkItem(RequestListPolicies v) {
    if (v is !RequestListPolicies) checkItemFailed(v, 'RequestListPolicies');
  }

  Page get page => $_get(0, 1, null);
  void set page(Page v) { setField(1, v); }
  bool hasPage() => $_has(0, 1);
  void clearPage() => clearField(1);
}

class _ReadonlyRequestListPolicies extends RequestListPolicies with ReadonlyMessageMixin {}

class RequestPerformanceProfile extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestPerformanceProfile')
    ..a/*<double>*/(1, 'duration', PbFieldType.OD, 5.0)
    ..a/*<String>*/(2, 'sortBy', PbFieldType.OS, 'time')
    ..a/*<int>*/(3, 'topN', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RequestPerformanceProfile() : super();
  RequestPerformanceProfile.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestPerformanceProfile.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestPerformanceProfile clone() => new RequestPerformanceProfile()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestPerformanceProfile create() => new RequestPerformanceProfile();
  static PbList<RequestPerformanceProfile> createRepeated() => new PbList<RequestPerformanceProfile>();
  static RequestPerformanceProfile getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestPerformanceProfile();
    return _defaultInstance;
  }
  static RequestPerformanceProfile _defaultInstance;
  static void $checkItem(RequestPerformanceProfile v) {
    if (v is !RequestPerformanceProfile) checkItemFailed(v, 'RequestPerformanceProfile');
  }

  double get duration => $_get(0, 1, null);
  void set duration(double v) { $_setDouble(0, 1, v); }
  bool hasDuration() => $_has(0, 1);
  void clearDuration() => clearField(1);

  String get sortBy => $_get(1, 2, 'time');
  void set sortBy(String v) { $_setString(1, 2, v); }
  bool hasSortBy() => $_has(1, 2);
  void clearSortBy() => clearField(2);

  int get topN => $_get(2, 3, 0);
  void set topN(int v) { $_setUnsignedInt32(2, 3, v); }
  bool hasTopN() => $_has(2, 3);
  void clearTopN() => clearField(3);
}

class _ReadonlyRequestPerformanceProfile extends RequestPerformanceProfile with ReadonlyMessageMixin {}

class RequestPing extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestPing')
    ..a/*<String>*/(1, 'pong', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  RequestPing() : super();
  RequestPing.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestPing.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestPing clone() => new RequestPing()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestPing create() => new RequestPing();
  static PbList<RequestPing> createRepeated() => new PbList<RequestPing>();
  static RequestPing getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestPing();
    return _defaultInstance;
  }
  static RequestPing _defaultInstance;
  static void $checkItem(RequestPing v) {
    if (v is !RequestPing) checkItemFailed(v, 'RequestPing');
  }

  String get pong => $_get(0, 1, '');
  void set pong(String v) { $_setString(0, 1, v); }
  bool hasPong() => $_has(0, 1);
  void clearPong() => clearField(1);
}

class _ReadonlyRequestPing extends RequestPing with ReadonlyMessageMixin {}

class RequestSetDomainLogin extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSetDomainLogin')
    ..a/*<DomainLogin>*/(1, 'login', PbFieldType.OM, DomainLogin.getDefault, DomainLogin.create)
    ..hasRequiredFields = false
  ;

  RequestSetDomainLogin() : super();
  RequestSetDomainLogin.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSetDomainLogin.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSetDomainLogin clone() => new RequestSetDomainLogin()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSetDomainLogin create() => new RequestSetDomainLogin();
  static PbList<RequestSetDomainLogin> createRepeated() => new PbList<RequestSetDomainLogin>();
  static RequestSetDomainLogin getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSetDomainLogin();
    return _defaultInstance;
  }
  static RequestSetDomainLogin _defaultInstance;
  static void $checkItem(RequestSetDomainLogin v) {
    if (v is !RequestSetDomainLogin) checkItemFailed(v, 'RequestSetDomainLogin');
  }

  DomainLogin get login => $_get(0, 1, null);
  void set login(DomainLogin v) { setField(1, v); }
  bool hasLogin() => $_has(0, 1);
  void clearLogin() => clearField(1);
}

class _ReadonlyRequestSetDomainLogin extends RequestSetDomainLogin with ReadonlyMessageMixin {}

class RequestSetJob extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSetJob')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.OY)
    ..e/*<JobRunState>*/(2, 'runState', PbFieldType.OE, JobRunState.CANCELLED, JobRunState.valueOf)
    ..a/*<List<int>>*/(3, 'policyId', PbFieldType.OY)
    ..p/*<String>*/(4, 'seeds', PbFieldType.PS)
    ..a/*<String>*/(5, 'name', PbFieldType.OS)
    ..a/*<TagList>*/(6, 'tagList', PbFieldType.OM, TagList.getDefault, TagList.create)
    ..hasRequiredFields = false
  ;

  RequestSetJob() : super();
  RequestSetJob.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSetJob.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSetJob clone() => new RequestSetJob()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSetJob create() => new RequestSetJob();
  static PbList<RequestSetJob> createRepeated() => new PbList<RequestSetJob>();
  static RequestSetJob getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSetJob();
    return _defaultInstance;
  }
  static RequestSetJob _defaultInstance;
  static void $checkItem(RequestSetJob v) {
    if (v is !RequestSetJob) checkItemFailed(v, 'RequestSetJob');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  JobRunState get runState => $_get(1, 2, null);
  void set runState(JobRunState v) { setField(2, v); }
  bool hasRunState() => $_has(1, 2);
  void clearRunState() => clearField(2);

  List<int> get policyId => $_get(2, 3, null);
  void set policyId(List<int> v) { $_setBytes(2, 3, v); }
  bool hasPolicyId() => $_has(2, 3);
  void clearPolicyId() => clearField(3);

  List<String> get seeds => $_get(3, 4, null);

  String get name => $_get(4, 5, '');
  void set name(String v) { $_setString(4, 5, v); }
  bool hasName() => $_has(4, 5);
  void clearName() => clearField(5);

  TagList get tagList => $_get(5, 6, null);
  void set tagList(TagList v) { setField(6, v); }
  bool hasTagList() => $_has(5, 6);
  void clearTagList() => clearField(6);
}

class _ReadonlyRequestSetJob extends RequestSetJob with ReadonlyMessageMixin {}

class RequestSetJobSchedule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSetJobSchedule')
    ..a/*<JobSchedule>*/(1, 'jobSchedule', PbFieldType.OM, JobSchedule.getDefault, JobSchedule.create)
  ;

  RequestSetJobSchedule() : super();
  RequestSetJobSchedule.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSetJobSchedule.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSetJobSchedule clone() => new RequestSetJobSchedule()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSetJobSchedule create() => new RequestSetJobSchedule();
  static PbList<RequestSetJobSchedule> createRepeated() => new PbList<RequestSetJobSchedule>();
  static RequestSetJobSchedule getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSetJobSchedule();
    return _defaultInstance;
  }
  static RequestSetJobSchedule _defaultInstance;
  static void $checkItem(RequestSetJobSchedule v) {
    if (v is !RequestSetJobSchedule) checkItemFailed(v, 'RequestSetJobSchedule');
  }

  JobSchedule get jobSchedule => $_get(0, 1, null);
  void set jobSchedule(JobSchedule v) { setField(1, v); }
  bool hasJobSchedule() => $_has(0, 1);
  void clearJobSchedule() => clearField(1);
}

class _ReadonlyRequestSetJobSchedule extends RequestSetJobSchedule with ReadonlyMessageMixin {}

class RequestSetRateLimit extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSetRateLimit')
    ..a/*<RateLimit>*/(1, 'rateLimit', PbFieldType.QM, RateLimit.getDefault, RateLimit.create)
  ;

  RequestSetRateLimit() : super();
  RequestSetRateLimit.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSetRateLimit.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSetRateLimit clone() => new RequestSetRateLimit()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSetRateLimit create() => new RequestSetRateLimit();
  static PbList<RequestSetRateLimit> createRepeated() => new PbList<RequestSetRateLimit>();
  static RequestSetRateLimit getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSetRateLimit();
    return _defaultInstance;
  }
  static RequestSetRateLimit _defaultInstance;
  static void $checkItem(RequestSetRateLimit v) {
    if (v is !RequestSetRateLimit) checkItemFailed(v, 'RequestSetRateLimit');
  }

  RateLimit get rateLimit => $_get(0, 1, null);
  void set rateLimit(RateLimit v) { setField(1, v); }
  bool hasRateLimit() => $_has(0, 1);
  void clearRateLimit() => clearField(1);
}

class _ReadonlyRequestSetRateLimit extends RequestSetRateLimit with ReadonlyMessageMixin {}

class RequestSetPolicy extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSetPolicy')
    ..a/*<Policy>*/(1, 'policy', PbFieldType.QM, Policy.getDefault, Policy.create)
  ;

  RequestSetPolicy() : super();
  RequestSetPolicy.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSetPolicy.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSetPolicy clone() => new RequestSetPolicy()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSetPolicy create() => new RequestSetPolicy();
  static PbList<RequestSetPolicy> createRepeated() => new PbList<RequestSetPolicy>();
  static RequestSetPolicy getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSetPolicy();
    return _defaultInstance;
  }
  static RequestSetPolicy _defaultInstance;
  static void $checkItem(RequestSetPolicy v) {
    if (v is !RequestSetPolicy) checkItemFailed(v, 'RequestSetPolicy');
  }

  Policy get policy => $_get(0, 1, null);
  void set policy(Policy v) { setField(1, v); }
  bool hasPolicy() => $_has(0, 1);
  void clearPolicy() => clearField(1);
}

class _ReadonlyRequestSetPolicy extends RequestSetPolicy with ReadonlyMessageMixin {}

class RequestSubscribeJobStatus extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSubscribeJobStatus')
    ..a/*<double>*/(1, 'minInterval', PbFieldType.OD, 1.0)
    ..hasRequiredFields = false
  ;

  RequestSubscribeJobStatus() : super();
  RequestSubscribeJobStatus.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSubscribeJobStatus.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSubscribeJobStatus clone() => new RequestSubscribeJobStatus()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSubscribeJobStatus create() => new RequestSubscribeJobStatus();
  static PbList<RequestSubscribeJobStatus> createRepeated() => new PbList<RequestSubscribeJobStatus>();
  static RequestSubscribeJobStatus getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSubscribeJobStatus();
    return _defaultInstance;
  }
  static RequestSubscribeJobStatus _defaultInstance;
  static void $checkItem(RequestSubscribeJobStatus v) {
    if (v is !RequestSubscribeJobStatus) checkItemFailed(v, 'RequestSubscribeJobStatus');
  }

  double get minInterval => $_get(0, 1, null);
  void set minInterval(double v) { $_setDouble(0, 1, v); }
  bool hasMinInterval() => $_has(0, 1);
  void clearMinInterval() => clearField(1);
}

class _ReadonlyRequestSubscribeJobStatus extends RequestSubscribeJobStatus with ReadonlyMessageMixin {}

class RequestSubscribeJobSync extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSubscribeJobSync')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
    ..a/*<List<int>>*/(2, 'syncToken', PbFieldType.OY)
    ..a/*<bool>*/(3, 'compressionOk', PbFieldType.OB, true)
  ;

  RequestSubscribeJobSync() : super();
  RequestSubscribeJobSync.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSubscribeJobSync.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSubscribeJobSync clone() => new RequestSubscribeJobSync()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSubscribeJobSync create() => new RequestSubscribeJobSync();
  static PbList<RequestSubscribeJobSync> createRepeated() => new PbList<RequestSubscribeJobSync>();
  static RequestSubscribeJobSync getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSubscribeJobSync();
    return _defaultInstance;
  }
  static RequestSubscribeJobSync _defaultInstance;
  static void $checkItem(RequestSubscribeJobSync v) {
    if (v is !RequestSubscribeJobSync) checkItemFailed(v, 'RequestSubscribeJobSync');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  List<int> get syncToken => $_get(1, 2, null);
  void set syncToken(List<int> v) { $_setBytes(1, 2, v); }
  bool hasSyncToken() => $_has(1, 2);
  void clearSyncToken() => clearField(2);

  bool get compressionOk => $_get(2, 3, true);
  void set compressionOk(bool v) { $_setBool(2, 3, v); }
  bool hasCompressionOk() => $_has(2, 3);
  void clearCompressionOk() => clearField(3);
}

class _ReadonlyRequestSubscribeJobSync extends RequestSubscribeJobSync with ReadonlyMessageMixin {}

class RequestSubscribeResourceMonitor extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSubscribeResourceMonitor')
    ..a/*<int>*/(1, 'history', PbFieldType.O3, 300)
    ..hasRequiredFields = false
  ;

  RequestSubscribeResourceMonitor() : super();
  RequestSubscribeResourceMonitor.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSubscribeResourceMonitor.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSubscribeResourceMonitor clone() => new RequestSubscribeResourceMonitor()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSubscribeResourceMonitor create() => new RequestSubscribeResourceMonitor();
  static PbList<RequestSubscribeResourceMonitor> createRepeated() => new PbList<RequestSubscribeResourceMonitor>();
  static RequestSubscribeResourceMonitor getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSubscribeResourceMonitor();
    return _defaultInstance;
  }
  static RequestSubscribeResourceMonitor _defaultInstance;
  static void $checkItem(RequestSubscribeResourceMonitor v) {
    if (v is !RequestSubscribeResourceMonitor) checkItemFailed(v, 'RequestSubscribeResourceMonitor');
  }

  int get history => $_get(0, 1, 300);
  void set history(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasHistory() => $_has(0, 1);
  void clearHistory() => clearField(1);
}

class _ReadonlyRequestSubscribeResourceMonitor extends RequestSubscribeResourceMonitor with ReadonlyMessageMixin {}

class RequestSubscribeTaskMonitor extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestSubscribeTaskMonitor')
    ..a/*<double>*/(1, 'period', PbFieldType.OD, 3.0)
    ..a/*<int>*/(2, 'topN', PbFieldType.O3, 20)
    ..hasRequiredFields = false
  ;

  RequestSubscribeTaskMonitor() : super();
  RequestSubscribeTaskMonitor.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestSubscribeTaskMonitor.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestSubscribeTaskMonitor clone() => new RequestSubscribeTaskMonitor()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestSubscribeTaskMonitor create() => new RequestSubscribeTaskMonitor();
  static PbList<RequestSubscribeTaskMonitor> createRepeated() => new PbList<RequestSubscribeTaskMonitor>();
  static RequestSubscribeTaskMonitor getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestSubscribeTaskMonitor();
    return _defaultInstance;
  }
  static RequestSubscribeTaskMonitor _defaultInstance;
  static void $checkItem(RequestSubscribeTaskMonitor v) {
    if (v is !RequestSubscribeTaskMonitor) checkItemFailed(v, 'RequestSubscribeTaskMonitor');
  }

  double get period => $_get(0, 1, null);
  void set period(double v) { $_setDouble(0, 1, v); }
  bool hasPeriod() => $_has(0, 1);
  void clearPeriod() => clearField(1);

  int get topN => $_get(1, 2, 20);
  void set topN(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasTopN() => $_has(1, 2);
  void clearTopN() => clearField(2);
}

class _ReadonlyRequestSubscribeTaskMonitor extends RequestSubscribeTaskMonitor with ReadonlyMessageMixin {}

class RequestUnsubscribe extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RequestUnsubscribe')
    ..a/*<int>*/(1, 'subscriptionId', PbFieldType.Q3)
  ;

  RequestUnsubscribe() : super();
  RequestUnsubscribe.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestUnsubscribe.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestUnsubscribe clone() => new RequestUnsubscribe()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RequestUnsubscribe create() => new RequestUnsubscribe();
  static PbList<RequestUnsubscribe> createRepeated() => new PbList<RequestUnsubscribe>();
  static RequestUnsubscribe getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRequestUnsubscribe();
    return _defaultInstance;
  }
  static RequestUnsubscribe _defaultInstance;
  static void $checkItem(RequestUnsubscribe v) {
    if (v is !RequestUnsubscribe) checkItemFailed(v, 'RequestUnsubscribe');
  }

  int get subscriptionId => $_get(0, 1, 0);
  void set subscriptionId(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasSubscriptionId() => $_has(0, 1);
  void clearSubscriptionId() => clearField(1);
}

class _ReadonlyRequestUnsubscribe extends RequestUnsubscribe with ReadonlyMessageMixin {}

