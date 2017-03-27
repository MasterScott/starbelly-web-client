///
//  Generated code. Do not modify.
///
library starbelly_server;

import 'package:protobuf/protobuf.dart';

import 'shared.pb.dart';

class Event extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Event')
    ..a/*<int>*/(1, 'subscriptionId', PbFieldType.Q3)
    ..a/*<CrawlItem>*/(2, 'crawlItem', PbFieldType.OM, CrawlItem.getDefault, CrawlItem.create)
    ..a/*<JobStatuses>*/(3, 'jobStatuses', PbFieldType.OM, JobStatuses.getDefault, JobStatuses.create)
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

  JobStatuses get jobStatuses => $_get(2, 3, null);
  void set jobStatuses(JobStatuses v) { setField(3, v); }
  bool hasJobStatuses() => $_has(2, 3);
  void clearJobStatuses() => clearField(3);
}

class _ReadonlyEvent extends Event with ReadonlyMessageMixin {}

class Response extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Response')
    ..a/*<int>*/(1, 'requestId', PbFieldType.Q3)
    ..a/*<bool>*/(2, 'isSuccess', PbFieldType.QB)
    ..a/*<String>*/(3, 'errorMessage', PbFieldType.OS)
    ..a/*<ResponseNewJob>*/(4, 'newJob', PbFieldType.OM, ResponseNewJob.getDefault, ResponseNewJob.create)
    ..a/*<ResponsePing>*/(5, 'ping', PbFieldType.OM, ResponsePing.getDefault, ResponsePing.create)
    ..a/*<ResponseNewSubscription>*/(6, 'newSubscription', PbFieldType.OM, ResponseNewSubscription.getDefault, ResponseNewSubscription.create)
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

  ResponseNewJob get newJob => $_get(3, 4, null);
  void set newJob(ResponseNewJob v) { setField(4, v); }
  bool hasNewJob() => $_has(3, 4);
  void clearNewJob() => clearField(4);

  ResponsePing get ping => $_get(4, 5, null);
  void set ping(ResponsePing v) { setField(5, v); }
  bool hasPing() => $_has(4, 5);
  void clearPing() => clearField(5);

  ResponseNewSubscription get newSubscription => $_get(5, 6, null);
  void set newSubscription(ResponseNewSubscription v) { setField(6, v); }
  bool hasNewSubscription() => $_has(5, 6);
  void clearNewSubscription() => clearField(6);
}

class _ReadonlyResponse extends Response with ReadonlyMessageMixin {}

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

