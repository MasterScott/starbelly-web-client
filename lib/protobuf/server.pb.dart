///
//  Generated code. Do not modify.
///
library starbelly_server;

import 'package:protobuf/protobuf.dart';

import 'shared.pb.dart';

import 'server.pbenum.dart';

export 'server.pbenum.dart';

class Event extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Event')
    ..a/*<int>*/(1, 'subscriptionId', PbFieldType.Q3)
    ..a/*<CrawlItem>*/(2, 'crawlItem', PbFieldType.OM, CrawlItem.getDefault, CrawlItem.create)
    ..a/*<JobList>*/(4, 'jobList', PbFieldType.OM, JobList.getDefault, JobList.create)
    ..a/*<SubscriptionClosed>*/(5, 'subscriptionClosed', PbFieldType.OM, SubscriptionClosed.getDefault, SubscriptionClosed.create)
  ;

  Event() : super();
  Event.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Event.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Event clone() => new Event()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Event create() => new Event();
  static PbList<Event> createRepeated() => new PbList<Event>();
  static Event getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyEvent();
    return _defaultInstance;
  }
  static Event _defaultInstance;
  static void $checkItem(Event v) {
    if (v is !Event) checkItemFailed(v, 'Event');
  }

  int get subscriptionId => $_get(0, 1, 0);
  void set subscriptionId(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasSubscriptionId() => $_has(0, 1);
  void clearSubscriptionId() => clearField(1);

  CrawlItem get crawlItem => $_get(1, 2, null);
  void set crawlItem(CrawlItem v) { setField(2, v); }
  bool hasCrawlItem() => $_has(1, 2);
  void clearCrawlItem() => clearField(2);

  JobList get jobList => $_get(2, 4, null);
  void set jobList(JobList v) { setField(4, v); }
  bool hasJobList() => $_has(2, 4);
  void clearJobList() => clearField(4);

  SubscriptionClosed get subscriptionClosed => $_get(3, 5, null);
  void set subscriptionClosed(SubscriptionClosed v) { setField(5, v); }
  bool hasSubscriptionClosed() => $_has(3, 5);
  void clearSubscriptionClosed() => clearField(5);
}

class _ReadonlyEvent extends Event with ReadonlyMessageMixin {}

class Response extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Response')
    ..a/*<int>*/(1, 'requestId', PbFieldType.Q3)
    ..a/*<bool>*/(2, 'isSuccess', PbFieldType.QB)
    ..a/*<String>*/(3, 'errorMessage', PbFieldType.OS)
    ..a/*<Job>*/(5, 'job', PbFieldType.OM, Job.getDefault, Job.create)
    ..a/*<Policy>*/(6, 'policy', PbFieldType.OM, Policy.getDefault, Policy.create)
    ..a/*<ResponseListItems>*/(7, 'listItems', PbFieldType.OM, ResponseListItems.getDefault, ResponseListItems.create)
    ..a/*<ResponseListJobs>*/(8, 'listJobs', PbFieldType.OM, ResponseListJobs.getDefault, ResponseListJobs.create)
    ..a/*<ResponseListPolicies>*/(9, 'listPolicies', PbFieldType.OM, ResponseListPolicies.getDefault, ResponseListPolicies.create)
    ..a/*<ResponseListRateLimits>*/(10, 'listRateLimits', PbFieldType.OM, ResponseListRateLimits.getDefault, ResponseListRateLimits.create)
    ..a/*<ResponseNewJob>*/(11, 'newJob', PbFieldType.OM, ResponseNewJob.getDefault, ResponseNewJob.create)
    ..a/*<ResponseNewPolicy>*/(12, 'newPolicy', PbFieldType.OM, ResponseNewPolicy.getDefault, ResponseNewPolicy.create)
    ..a/*<ResponseNewSubscription>*/(13, 'newSubscription', PbFieldType.OM, ResponseNewSubscription.getDefault, ResponseNewSubscription.create)
    ..a/*<ResponsePing>*/(14, 'ping', PbFieldType.OM, ResponsePing.getDefault, ResponsePing.create)
  ;

  Response() : super();
  Response.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Response.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Response clone() => new Response()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Response create() => new Response();
  static PbList<Response> createRepeated() => new PbList<Response>();
  static Response getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponse();
    return _defaultInstance;
  }
  static Response _defaultInstance;
  static void $checkItem(Response v) {
    if (v is !Response) checkItemFailed(v, 'Response');
  }

  int get requestId => $_get(0, 1, 0);
  void set requestId(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasRequestId() => $_has(0, 1);
  void clearRequestId() => clearField(1);

  bool get isSuccess => $_get(1, 2, false);
  void set isSuccess(bool v) { $_setBool(1, 2, v); }
  bool hasIsSuccess() => $_has(1, 2);
  void clearIsSuccess() => clearField(2);

  String get errorMessage => $_get(2, 3, '');
  void set errorMessage(String v) { $_setString(2, 3, v); }
  bool hasErrorMessage() => $_has(2, 3);
  void clearErrorMessage() => clearField(3);

  Job get job => $_get(3, 5, null);
  void set job(Job v) { setField(5, v); }
  bool hasJob() => $_has(3, 5);
  void clearJob() => clearField(5);

  Policy get policy => $_get(4, 6, null);
  void set policy(Policy v) { setField(6, v); }
  bool hasPolicy() => $_has(4, 6);
  void clearPolicy() => clearField(6);

  ResponseListItems get listItems => $_get(5, 7, null);
  void set listItems(ResponseListItems v) { setField(7, v); }
  bool hasListItems() => $_has(5, 7);
  void clearListItems() => clearField(7);

  ResponseListJobs get listJobs => $_get(6, 8, null);
  void set listJobs(ResponseListJobs v) { setField(8, v); }
  bool hasListJobs() => $_has(6, 8);
  void clearListJobs() => clearField(8);

  ResponseListPolicies get listPolicies => $_get(7, 9, null);
  void set listPolicies(ResponseListPolicies v) { setField(9, v); }
  bool hasListPolicies() => $_has(7, 9);
  void clearListPolicies() => clearField(9);

  ResponseListRateLimits get listRateLimits => $_get(8, 10, null);
  void set listRateLimits(ResponseListRateLimits v) { setField(10, v); }
  bool hasListRateLimits() => $_has(8, 10);
  void clearListRateLimits() => clearField(10);

  ResponseNewJob get newJob => $_get(9, 11, null);
  void set newJob(ResponseNewJob v) { setField(11, v); }
  bool hasNewJob() => $_has(9, 11);
  void clearNewJob() => clearField(11);

  ResponseNewPolicy get newPolicy => $_get(10, 12, null);
  void set newPolicy(ResponseNewPolicy v) { setField(12, v); }
  bool hasNewPolicy() => $_has(10, 12);
  void clearNewPolicy() => clearField(12);

  ResponseNewSubscription get newSubscription => $_get(11, 13, null);
  void set newSubscription(ResponseNewSubscription v) { setField(13, v); }
  bool hasNewSubscription() => $_has(11, 13);
  void clearNewSubscription() => clearField(13);

  ResponsePing get ping => $_get(12, 14, null);
  void set ping(ResponsePing v) { setField(14, v); }
  bool hasPing() => $_has(12, 14);
  void clearPing() => clearField(14);
}

class _ReadonlyResponse extends Response with ReadonlyMessageMixin {}

class ResponseListItems extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseListItems')
    ..pp/*<CrawlItem>*/(1, 'items', PbFieldType.PM, CrawlItem.$checkItem, CrawlItem.create)
    ..a/*<int>*/(2, 'total', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ResponseListItems() : super();
  ResponseListItems.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseListItems.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseListItems clone() => new ResponseListItems()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseListItems create() => new ResponseListItems();
  static PbList<ResponseListItems> createRepeated() => new PbList<ResponseListItems>();
  static ResponseListItems getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseListItems();
    return _defaultInstance;
  }
  static ResponseListItems _defaultInstance;
  static void $checkItem(ResponseListItems v) {
    if (v is !ResponseListItems) checkItemFailed(v, 'ResponseListItems');
  }

  List<CrawlItem> get items => $_get(0, 1, null);

  int get total => $_get(1, 2, 0);
  void set total(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasTotal() => $_has(1, 2);
  void clearTotal() => clearField(2);
}

class _ReadonlyResponseListItems extends ResponseListItems with ReadonlyMessageMixin {}

class ResponseListJobs extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseListJobs')
    ..pp/*<Job>*/(1, 'jobs', PbFieldType.PM, Job.$checkItem, Job.create)
    ..a/*<int>*/(2, 'total', PbFieldType.O3)
  ;

  ResponseListJobs() : super();
  ResponseListJobs.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseListJobs.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseListJobs clone() => new ResponseListJobs()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseListJobs create() => new ResponseListJobs();
  static PbList<ResponseListJobs> createRepeated() => new PbList<ResponseListJobs>();
  static ResponseListJobs getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseListJobs();
    return _defaultInstance;
  }
  static ResponseListJobs _defaultInstance;
  static void $checkItem(ResponseListJobs v) {
    if (v is !ResponseListJobs) checkItemFailed(v, 'ResponseListJobs');
  }

  List<Job> get jobs => $_get(0, 1, null);

  int get total => $_get(1, 2, 0);
  void set total(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasTotal() => $_has(1, 2);
  void clearTotal() => clearField(2);
}

class _ReadonlyResponseListJobs extends ResponseListJobs with ReadonlyMessageMixin {}

class ResponseListPolicies extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseListPolicies')
    ..pp/*<Policy>*/(1, 'policies', PbFieldType.PM, Policy.$checkItem, Policy.create)
    ..a/*<int>*/(2, 'total', PbFieldType.O3)
  ;

  ResponseListPolicies() : super();
  ResponseListPolicies.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseListPolicies.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseListPolicies clone() => new ResponseListPolicies()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseListPolicies create() => new ResponseListPolicies();
  static PbList<ResponseListPolicies> createRepeated() => new PbList<ResponseListPolicies>();
  static ResponseListPolicies getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseListPolicies();
    return _defaultInstance;
  }
  static ResponseListPolicies _defaultInstance;
  static void $checkItem(ResponseListPolicies v) {
    if (v is !ResponseListPolicies) checkItemFailed(v, 'ResponseListPolicies');
  }

  List<Policy> get policies => $_get(0, 1, null);

  int get total => $_get(1, 2, 0);
  void set total(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasTotal() => $_has(1, 2);
  void clearTotal() => clearField(2);
}

class _ReadonlyResponseListPolicies extends ResponseListPolicies with ReadonlyMessageMixin {}

class ResponseListRateLimits extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseListRateLimits')
    ..pp/*<RateLimit>*/(1, 'rateLimits', PbFieldType.PM, RateLimit.$checkItem, RateLimit.create)
    ..a/*<int>*/(2, 'total', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ResponseListRateLimits() : super();
  ResponseListRateLimits.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseListRateLimits.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseListRateLimits clone() => new ResponseListRateLimits()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseListRateLimits create() => new ResponseListRateLimits();
  static PbList<ResponseListRateLimits> createRepeated() => new PbList<ResponseListRateLimits>();
  static ResponseListRateLimits getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseListRateLimits();
    return _defaultInstance;
  }
  static ResponseListRateLimits _defaultInstance;
  static void $checkItem(ResponseListRateLimits v) {
    if (v is !ResponseListRateLimits) checkItemFailed(v, 'ResponseListRateLimits');
  }

  List<RateLimit> get rateLimits => $_get(0, 1, null);

  int get total => $_get(1, 2, 0);
  void set total(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasTotal() => $_has(1, 2);
  void clearTotal() => clearField(2);
}

class _ReadonlyResponseListRateLimits extends ResponseListRateLimits with ReadonlyMessageMixin {}

class ResponseNewJob extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseNewJob')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.QY)
  ;

  ResponseNewJob() : super();
  ResponseNewJob.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseNewJob.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseNewJob clone() => new ResponseNewJob()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseNewJob create() => new ResponseNewJob();
  static PbList<ResponseNewJob> createRepeated() => new PbList<ResponseNewJob>();
  static ResponseNewJob getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseNewJob();
    return _defaultInstance;
  }
  static ResponseNewJob _defaultInstance;
  static void $checkItem(ResponseNewJob v) {
    if (v is !ResponseNewJob) checkItemFailed(v, 'ResponseNewJob');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);
}

class _ReadonlyResponseNewJob extends ResponseNewJob with ReadonlyMessageMixin {}

class ResponseNewPolicy extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseNewPolicy')
    ..a/*<List<int>>*/(1, 'policyId', PbFieldType.QY)
  ;

  ResponseNewPolicy() : super();
  ResponseNewPolicy.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseNewPolicy.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseNewPolicy clone() => new ResponseNewPolicy()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseNewPolicy create() => new ResponseNewPolicy();
  static PbList<ResponseNewPolicy> createRepeated() => new PbList<ResponseNewPolicy>();
  static ResponseNewPolicy getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseNewPolicy();
    return _defaultInstance;
  }
  static ResponseNewPolicy _defaultInstance;
  static void $checkItem(ResponseNewPolicy v) {
    if (v is !ResponseNewPolicy) checkItemFailed(v, 'ResponseNewPolicy');
  }

  List<int> get policyId => $_get(0, 1, null);
  void set policyId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasPolicyId() => $_has(0, 1);
  void clearPolicyId() => clearField(1);
}

class _ReadonlyResponseNewPolicy extends ResponseNewPolicy with ReadonlyMessageMixin {}

class ResponseNewSubscription extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseNewSubscription')
    ..a/*<int>*/(1, 'subscriptionId', PbFieldType.Q3)
  ;

  ResponseNewSubscription() : super();
  ResponseNewSubscription.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponseNewSubscription.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponseNewSubscription clone() => new ResponseNewSubscription()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponseNewSubscription create() => new ResponseNewSubscription();
  static PbList<ResponseNewSubscription> createRepeated() => new PbList<ResponseNewSubscription>();
  static ResponseNewSubscription getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponseNewSubscription();
    return _defaultInstance;
  }
  static ResponseNewSubscription _defaultInstance;
  static void $checkItem(ResponseNewSubscription v) {
    if (v is !ResponseNewSubscription) checkItemFailed(v, 'ResponseNewSubscription');
  }

  int get subscriptionId => $_get(0, 1, 0);
  void set subscriptionId(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasSubscriptionId() => $_has(0, 1);
  void clearSubscriptionId() => clearField(1);
}

class _ReadonlyResponseNewSubscription extends ResponseNewSubscription with ReadonlyMessageMixin {}

class ResponsePing extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponsePing')
    ..a/*<String>*/(1, 'pong', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  ResponsePing() : super();
  ResponsePing.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponsePing.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponsePing clone() => new ResponsePing()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponsePing create() => new ResponsePing();
  static PbList<ResponsePing> createRepeated() => new PbList<ResponsePing>();
  static ResponsePing getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponsePing();
    return _defaultInstance;
  }
  static ResponsePing _defaultInstance;
  static void $checkItem(ResponsePing v) {
    if (v is !ResponsePing) checkItemFailed(v, 'ResponsePing');
  }

  String get pong => $_get(0, 1, '');
  void set pong(String v) { $_setString(0, 1, v); }
  bool hasPong() => $_has(0, 1);
  void clearPong() => clearField(1);
}

class _ReadonlyResponsePing extends ResponsePing with ReadonlyMessageMixin {}

class ServerMessage extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ServerMessage')
    ..a/*<Event>*/(1, 'event', PbFieldType.OM, Event.getDefault, Event.create)
    ..a/*<Response>*/(2, 'response', PbFieldType.OM, Response.getDefault, Response.create)
  ;

  ServerMessage() : super();
  ServerMessage.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ServerMessage.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ServerMessage clone() => new ServerMessage()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ServerMessage create() => new ServerMessage();
  static PbList<ServerMessage> createRepeated() => new PbList<ServerMessage>();
  static ServerMessage getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyServerMessage();
    return _defaultInstance;
  }
  static ServerMessage _defaultInstance;
  static void $checkItem(ServerMessage v) {
    if (v is !ServerMessage) checkItemFailed(v, 'ServerMessage');
  }

  Event get event => $_get(0, 1, null);
  void set event(Event v) { setField(1, v); }
  bool hasEvent() => $_has(0, 1);
  void clearEvent() => clearField(1);

  Response get response => $_get(1, 2, null);
  void set response(Response v) { setField(2, v); }
  bool hasResponse() => $_has(1, 2);
  void clearResponse() => clearField(2);
}

class _ReadonlyServerMessage extends ServerMessage with ReadonlyMessageMixin {}

class SubscriptionClosed extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('SubscriptionClosed')
    ..e/*<SubscriptionClosed_Reason>*/(1, 'reason', PbFieldType.QE, SubscriptionClosed_Reason.END, SubscriptionClosed_Reason.valueOf)
    ..a/*<String>*/(2, 'message', PbFieldType.OS)
  ;

  SubscriptionClosed() : super();
  SubscriptionClosed.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SubscriptionClosed.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SubscriptionClosed clone() => new SubscriptionClosed()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static SubscriptionClosed create() => new SubscriptionClosed();
  static PbList<SubscriptionClosed> createRepeated() => new PbList<SubscriptionClosed>();
  static SubscriptionClosed getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlySubscriptionClosed();
    return _defaultInstance;
  }
  static SubscriptionClosed _defaultInstance;
  static void $checkItem(SubscriptionClosed v) {
    if (v is !SubscriptionClosed) checkItemFailed(v, 'SubscriptionClosed');
  }

  SubscriptionClosed_Reason get reason => $_get(0, 1, null);
  void set reason(SubscriptionClosed_Reason v) { setField(1, v); }
  bool hasReason() => $_has(0, 1);
  void clearReason() => clearField(1);

  String get message => $_get(1, 2, '');
  void set message(String v) { $_setString(1, 2, v); }
  bool hasMessage() => $_has(1, 2);
  void clearMessage() => clearField(2);
}

class _ReadonlySubscriptionClosed extends SubscriptionClosed with ReadonlyMessageMixin {}

