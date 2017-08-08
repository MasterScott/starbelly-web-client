///
//  Generated code. Do not modify.
///
library starbelly_server;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'shared.pb.dart';

import 'server.pbenum.dart';

export 'server.pbenum.dart';

class Event extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Event')
    ..a/*<int>*/(1, 'subscriptionId', PbFieldType.Q3)
    ..a/*<JobList>*/(2, 'jobList', PbFieldType.OM, JobList.getDefault, JobList.create)
    ..a/*<ResourceFrame>*/(3, 'resourceFrame', PbFieldType.OM, ResourceFrame.getDefault, ResourceFrame.create)
    ..a/*<SubscriptionClosed>*/(4, 'subscriptionClosed', PbFieldType.OM, SubscriptionClosed.getDefault, SubscriptionClosed.create)
    ..a/*<SyncItem>*/(5, 'syncItem', PbFieldType.OM, SyncItem.getDefault, SyncItem.create)
    ..a/*<TaskMonitor>*/(6, 'taskMonitor', PbFieldType.OM, TaskMonitor.getDefault, TaskMonitor.create)
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

  JobList get jobList => $_get(1, 2, null);
  void set jobList(JobList v) { setField(2, v); }
  bool hasJobList() => $_has(1, 2);
  void clearJobList() => clearField(2);

  ResourceFrame get resourceFrame => $_get(2, 3, null);
  void set resourceFrame(ResourceFrame v) { setField(3, v); }
  bool hasResourceFrame() => $_has(2, 3);
  void clearResourceFrame() => clearField(3);

  SubscriptionClosed get subscriptionClosed => $_get(3, 4, null);
  void set subscriptionClosed(SubscriptionClosed v) { setField(4, v); }
  bool hasSubscriptionClosed() => $_has(3, 4);
  void clearSubscriptionClosed() => clearField(4);

  SyncItem get syncItem => $_get(4, 5, null);
  void set syncItem(SyncItem v) { setField(5, v); }
  bool hasSyncItem() => $_has(4, 5);
  void clearSyncItem() => clearField(5);

  TaskMonitor get taskMonitor => $_get(5, 6, null);
  void set taskMonitor(TaskMonitor v) { setField(6, v); }
  bool hasTaskMonitor() => $_has(5, 6);
  void clearTaskMonitor() => clearField(6);
}

class _ReadonlyEvent extends Event with ReadonlyMessageMixin {}

class PerformanceProfileFunction extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PerformanceProfileFunction')
    ..a/*<String>*/(1, 'file', PbFieldType.OS)
    ..a/*<int>*/(2, 'lineNumber', PbFieldType.O3)
    ..a/*<String>*/(3, 'function', PbFieldType.OS)
    ..a/*<int>*/(4, 'calls', PbFieldType.O3)
    ..a/*<int>*/(5, 'nonRecursiveCalls', PbFieldType.O3)
    ..a/*<double>*/(6, 'totalTime', PbFieldType.OD)
    ..a/*<double>*/(7, 'cumulativeTime', PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  PerformanceProfileFunction() : super();
  PerformanceProfileFunction.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PerformanceProfileFunction.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PerformanceProfileFunction clone() => new PerformanceProfileFunction()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PerformanceProfileFunction create() => new PerformanceProfileFunction();
  static PbList<PerformanceProfileFunction> createRepeated() => new PbList<PerformanceProfileFunction>();
  static PerformanceProfileFunction getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPerformanceProfileFunction();
    return _defaultInstance;
  }
  static PerformanceProfileFunction _defaultInstance;
  static void $checkItem(PerformanceProfileFunction v) {
    if (v is !PerformanceProfileFunction) checkItemFailed(v, 'PerformanceProfileFunction');
  }

  String get file => $_get(0, 1, '');
  void set file(String v) { $_setString(0, 1, v); }
  bool hasFile() => $_has(0, 1);
  void clearFile() => clearField(1);

  int get lineNumber => $_get(1, 2, 0);
  void set lineNumber(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasLineNumber() => $_has(1, 2);
  void clearLineNumber() => clearField(2);

  String get function => $_get(2, 3, '');
  void set function(String v) { $_setString(2, 3, v); }
  bool hasFunction() => $_has(2, 3);
  void clearFunction() => clearField(3);

  int get calls => $_get(3, 4, 0);
  void set calls(int v) { $_setUnsignedInt32(3, 4, v); }
  bool hasCalls() => $_has(3, 4);
  void clearCalls() => clearField(4);

  int get nonRecursiveCalls => $_get(4, 5, 0);
  void set nonRecursiveCalls(int v) { $_setUnsignedInt32(4, 5, v); }
  bool hasNonRecursiveCalls() => $_has(4, 5);
  void clearNonRecursiveCalls() => clearField(5);

  double get totalTime => $_get(5, 6, null);
  void set totalTime(double v) { $_setDouble(5, 6, v); }
  bool hasTotalTime() => $_has(5, 6);
  void clearTotalTime() => clearField(6);

  double get cumulativeTime => $_get(6, 7, null);
  void set cumulativeTime(double v) { $_setDouble(6, 7, v); }
  bool hasCumulativeTime() => $_has(6, 7);
  void clearCumulativeTime() => clearField(7);
}

class _ReadonlyPerformanceProfileFunction extends PerformanceProfileFunction with ReadonlyMessageMixin {}

class ResourceFrame extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrame')
    ..a/*<String>*/(1, 'timestamp', PbFieldType.OS)
    ..pp/*<ResourceFrameCpu>*/(2, 'cpus', PbFieldType.PM, ResourceFrameCpu.$checkItem, ResourceFrameCpu.create)
    ..a/*<ResourceFrameMemory>*/(3, 'memory', PbFieldType.OM, ResourceFrameMemory.getDefault, ResourceFrameMemory.create)
    ..pp/*<ResourceFrameDisk>*/(4, 'disks', PbFieldType.PM, ResourceFrameDisk.$checkItem, ResourceFrameDisk.create)
    ..pp/*<ResourceFrameNetwork>*/(5, 'networks', PbFieldType.PM, ResourceFrameNetwork.$checkItem, ResourceFrameNetwork.create)
    ..pp/*<ResourceFrameCrawl>*/(6, 'crawls', PbFieldType.PM, ResourceFrameCrawl.$checkItem, ResourceFrameCrawl.create)
    ..a/*<ResourceFrameRateLimiter>*/(7, 'rateLimiter', PbFieldType.OM, ResourceFrameRateLimiter.getDefault, ResourceFrameRateLimiter.create)
    ..a/*<ResourceFrameDownloader>*/(8, 'downloader', PbFieldType.OM, ResourceFrameDownloader.getDefault, ResourceFrameDownloader.create)
    ..hasRequiredFields = false
  ;

  ResourceFrame() : super();
  ResourceFrame.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrame.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrame clone() => new ResourceFrame()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrame create() => new ResourceFrame();
  static PbList<ResourceFrame> createRepeated() => new PbList<ResourceFrame>();
  static ResourceFrame getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrame();
    return _defaultInstance;
  }
  static ResourceFrame _defaultInstance;
  static void $checkItem(ResourceFrame v) {
    if (v is !ResourceFrame) checkItemFailed(v, 'ResourceFrame');
  }

  String get timestamp => $_get(0, 1, '');
  void set timestamp(String v) { $_setString(0, 1, v); }
  bool hasTimestamp() => $_has(0, 1);
  void clearTimestamp() => clearField(1);

  List<ResourceFrameCpu> get cpus => $_get(1, 2, null);

  ResourceFrameMemory get memory => $_get(2, 3, null);
  void set memory(ResourceFrameMemory v) { setField(3, v); }
  bool hasMemory() => $_has(2, 3);
  void clearMemory() => clearField(3);

  List<ResourceFrameDisk> get disks => $_get(3, 4, null);

  List<ResourceFrameNetwork> get networks => $_get(4, 5, null);

  List<ResourceFrameCrawl> get crawls => $_get(5, 6, null);

  ResourceFrameRateLimiter get rateLimiter => $_get(6, 7, null);
  void set rateLimiter(ResourceFrameRateLimiter v) { setField(7, v); }
  bool hasRateLimiter() => $_has(6, 7);
  void clearRateLimiter() => clearField(7);

  ResourceFrameDownloader get downloader => $_get(7, 8, null);
  void set downloader(ResourceFrameDownloader v) { setField(8, v); }
  bool hasDownloader() => $_has(7, 8);
  void clearDownloader() => clearField(8);
}

class _ReadonlyResourceFrame extends ResourceFrame with ReadonlyMessageMixin {}

class ResourceFrameCpu extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameCpu')
    ..a/*<double>*/(1, 'usage', PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  ResourceFrameCpu() : super();
  ResourceFrameCpu.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameCpu.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameCpu clone() => new ResourceFrameCpu()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameCpu create() => new ResourceFrameCpu();
  static PbList<ResourceFrameCpu> createRepeated() => new PbList<ResourceFrameCpu>();
  static ResourceFrameCpu getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameCpu();
    return _defaultInstance;
  }
  static ResourceFrameCpu _defaultInstance;
  static void $checkItem(ResourceFrameCpu v) {
    if (v is !ResourceFrameCpu) checkItemFailed(v, 'ResourceFrameCpu');
  }

  double get usage => $_get(0, 1, null);
  void set usage(double v) { $_setDouble(0, 1, v); }
  bool hasUsage() => $_has(0, 1);
  void clearUsage() => clearField(1);
}

class _ReadonlyResourceFrameCpu extends ResourceFrameCpu with ReadonlyMessageMixin {}

class ResourceFrameCrawl extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameCrawl')
    ..a/*<List<int>>*/(1, 'jobId', PbFieldType.OY)
    ..a/*<int>*/(2, 'frontier', PbFieldType.O3)
    ..a/*<int>*/(3, 'pending', PbFieldType.O3)
    ..a/*<int>*/(4, 'extraction', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ResourceFrameCrawl() : super();
  ResourceFrameCrawl.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameCrawl.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameCrawl clone() => new ResourceFrameCrawl()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameCrawl create() => new ResourceFrameCrawl();
  static PbList<ResourceFrameCrawl> createRepeated() => new PbList<ResourceFrameCrawl>();
  static ResourceFrameCrawl getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameCrawl();
    return _defaultInstance;
  }
  static ResourceFrameCrawl _defaultInstance;
  static void $checkItem(ResourceFrameCrawl v) {
    if (v is !ResourceFrameCrawl) checkItemFailed(v, 'ResourceFrameCrawl');
  }

  List<int> get jobId => $_get(0, 1, null);
  void set jobId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasJobId() => $_has(0, 1);
  void clearJobId() => clearField(1);

  int get frontier => $_get(1, 2, 0);
  void set frontier(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasFrontier() => $_has(1, 2);
  void clearFrontier() => clearField(2);

  int get pending => $_get(2, 3, 0);
  void set pending(int v) { $_setUnsignedInt32(2, 3, v); }
  bool hasPending() => $_has(2, 3);
  void clearPending() => clearField(3);

  int get extraction => $_get(3, 4, 0);
  void set extraction(int v) { $_setUnsignedInt32(3, 4, v); }
  bool hasExtraction() => $_has(3, 4);
  void clearExtraction() => clearField(4);
}

class _ReadonlyResourceFrameCrawl extends ResourceFrameCrawl with ReadonlyMessageMixin {}

class ResourceFrameDisk extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameDisk')
    ..a/*<String>*/(1, 'mount', PbFieldType.OS)
    ..a/*<Int64>*/(2, 'used', PbFieldType.O6, Int64.ZERO)
    ..a/*<Int64>*/(3, 'total', PbFieldType.O6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ResourceFrameDisk() : super();
  ResourceFrameDisk.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameDisk.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameDisk clone() => new ResourceFrameDisk()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameDisk create() => new ResourceFrameDisk();
  static PbList<ResourceFrameDisk> createRepeated() => new PbList<ResourceFrameDisk>();
  static ResourceFrameDisk getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameDisk();
    return _defaultInstance;
  }
  static ResourceFrameDisk _defaultInstance;
  static void $checkItem(ResourceFrameDisk v) {
    if (v is !ResourceFrameDisk) checkItemFailed(v, 'ResourceFrameDisk');
  }

  String get mount => $_get(0, 1, '');
  void set mount(String v) { $_setString(0, 1, v); }
  bool hasMount() => $_has(0, 1);
  void clearMount() => clearField(1);

  Int64 get used => $_get(1, 2, null);
  void set used(Int64 v) { $_setInt64(1, 2, v); }
  bool hasUsed() => $_has(1, 2);
  void clearUsed() => clearField(2);

  Int64 get total => $_get(2, 3, null);
  void set total(Int64 v) { $_setInt64(2, 3, v); }
  bool hasTotal() => $_has(2, 3);
  void clearTotal() => clearField(3);
}

class _ReadonlyResourceFrameDisk extends ResourceFrameDisk with ReadonlyMessageMixin {}

class ResourceFrameDownloader extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameDownloader')
    ..a/*<int>*/(1, 'count', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ResourceFrameDownloader() : super();
  ResourceFrameDownloader.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameDownloader.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameDownloader clone() => new ResourceFrameDownloader()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameDownloader create() => new ResourceFrameDownloader();
  static PbList<ResourceFrameDownloader> createRepeated() => new PbList<ResourceFrameDownloader>();
  static ResourceFrameDownloader getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameDownloader();
    return _defaultInstance;
  }
  static ResourceFrameDownloader _defaultInstance;
  static void $checkItem(ResourceFrameDownloader v) {
    if (v is !ResourceFrameDownloader) checkItemFailed(v, 'ResourceFrameDownloader');
  }

  int get count => $_get(0, 1, 0);
  void set count(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasCount() => $_has(0, 1);
  void clearCount() => clearField(1);
}

class _ReadonlyResourceFrameDownloader extends ResourceFrameDownloader with ReadonlyMessageMixin {}

class ResourceFrameMemory extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameMemory')
    ..a/*<Int64>*/(1, 'used', PbFieldType.O6, Int64.ZERO)
    ..a/*<Int64>*/(2, 'total', PbFieldType.O6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ResourceFrameMemory() : super();
  ResourceFrameMemory.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameMemory.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameMemory clone() => new ResourceFrameMemory()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameMemory create() => new ResourceFrameMemory();
  static PbList<ResourceFrameMemory> createRepeated() => new PbList<ResourceFrameMemory>();
  static ResourceFrameMemory getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameMemory();
    return _defaultInstance;
  }
  static ResourceFrameMemory _defaultInstance;
  static void $checkItem(ResourceFrameMemory v) {
    if (v is !ResourceFrameMemory) checkItemFailed(v, 'ResourceFrameMemory');
  }

  Int64 get used => $_get(0, 1, null);
  void set used(Int64 v) { $_setInt64(0, 1, v); }
  bool hasUsed() => $_has(0, 1);
  void clearUsed() => clearField(1);

  Int64 get total => $_get(1, 2, null);
  void set total(Int64 v) { $_setInt64(1, 2, v); }
  bool hasTotal() => $_has(1, 2);
  void clearTotal() => clearField(2);
}

class _ReadonlyResourceFrameMemory extends ResourceFrameMemory with ReadonlyMessageMixin {}

class ResourceFrameNetwork extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameNetwork')
    ..a/*<String>*/(1, 'name', PbFieldType.OS)
    ..a/*<Int64>*/(2, 'sent', PbFieldType.O6, Int64.ZERO)
    ..a/*<Int64>*/(3, 'received', PbFieldType.O6, Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ResourceFrameNetwork() : super();
  ResourceFrameNetwork.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameNetwork.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameNetwork clone() => new ResourceFrameNetwork()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameNetwork create() => new ResourceFrameNetwork();
  static PbList<ResourceFrameNetwork> createRepeated() => new PbList<ResourceFrameNetwork>();
  static ResourceFrameNetwork getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameNetwork();
    return _defaultInstance;
  }
  static ResourceFrameNetwork _defaultInstance;
  static void $checkItem(ResourceFrameNetwork v) {
    if (v is !ResourceFrameNetwork) checkItemFailed(v, 'ResourceFrameNetwork');
  }

  String get name => $_get(0, 1, '');
  void set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);

  Int64 get sent => $_get(1, 2, null);
  void set sent(Int64 v) { $_setInt64(1, 2, v); }
  bool hasSent() => $_has(1, 2);
  void clearSent() => clearField(2);

  Int64 get received => $_get(2, 3, null);
  void set received(Int64 v) { $_setInt64(2, 3, v); }
  bool hasReceived() => $_has(2, 3);
  void clearReceived() => clearField(3);
}

class _ReadonlyResourceFrameNetwork extends ResourceFrameNetwork with ReadonlyMessageMixin {}

class ResourceFrameRateLimiter extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResourceFrameRateLimiter')
    ..a/*<int>*/(1, 'count', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ResourceFrameRateLimiter() : super();
  ResourceFrameRateLimiter.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResourceFrameRateLimiter.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResourceFrameRateLimiter clone() => new ResourceFrameRateLimiter()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResourceFrameRateLimiter create() => new ResourceFrameRateLimiter();
  static PbList<ResourceFrameRateLimiter> createRepeated() => new PbList<ResourceFrameRateLimiter>();
  static ResourceFrameRateLimiter getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResourceFrameRateLimiter();
    return _defaultInstance;
  }
  static ResourceFrameRateLimiter _defaultInstance;
  static void $checkItem(ResourceFrameRateLimiter v) {
    if (v is !ResourceFrameRateLimiter) checkItemFailed(v, 'ResourceFrameRateLimiter');
  }

  int get count => $_get(0, 1, 0);
  void set count(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasCount() => $_has(0, 1);
  void clearCount() => clearField(1);
}

class _ReadonlyResourceFrameRateLimiter extends ResourceFrameRateLimiter with ReadonlyMessageMixin {}

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
    ..a/*<ResponsePerformanceProfile>*/(14, 'performanceProfile', PbFieldType.OM, ResponsePerformanceProfile.getDefault, ResponsePerformanceProfile.create)
    ..a/*<ResponsePing>*/(15, 'ping', PbFieldType.OM, ResponsePing.getDefault, ResponsePing.create)
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

  ResponsePerformanceProfile get performanceProfile => $_get(12, 14, null);
  void set performanceProfile(ResponsePerformanceProfile v) { setField(14, v); }
  bool hasPerformanceProfile() => $_has(12, 14);
  void clearPerformanceProfile() => clearField(14);

  ResponsePing get ping => $_get(13, 15, null);
  void set ping(ResponsePing v) { setField(15, v); }
  bool hasPing() => $_has(13, 15);
  void clearPing() => clearField(15);
}

class _ReadonlyResponse extends Response with ReadonlyMessageMixin {}

class ResponseListItems extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponseListItems')
    ..pp/*<CrawlResponse>*/(1, 'items', PbFieldType.PM, CrawlResponse.$checkItem, CrawlResponse.create)
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

  List<CrawlResponse> get items => $_get(0, 1, null);

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

class ResponsePerformanceProfile extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResponsePerformanceProfile')
    ..a/*<int>*/(1, 'totalCalls', PbFieldType.O3)
    ..a/*<double>*/(2, 'totalTime', PbFieldType.OD)
    ..pp/*<PerformanceProfileFunction>*/(3, 'functions', PbFieldType.PM, PerformanceProfileFunction.$checkItem, PerformanceProfileFunction.create)
    ..hasRequiredFields = false
  ;

  ResponsePerformanceProfile() : super();
  ResponsePerformanceProfile.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResponsePerformanceProfile.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResponsePerformanceProfile clone() => new ResponsePerformanceProfile()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResponsePerformanceProfile create() => new ResponsePerformanceProfile();
  static PbList<ResponsePerformanceProfile> createRepeated() => new PbList<ResponsePerformanceProfile>();
  static ResponsePerformanceProfile getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResponsePerformanceProfile();
    return _defaultInstance;
  }
  static ResponsePerformanceProfile _defaultInstance;
  static void $checkItem(ResponsePerformanceProfile v) {
    if (v is !ResponsePerformanceProfile) checkItemFailed(v, 'ResponsePerformanceProfile');
  }

  int get totalCalls => $_get(0, 1, 0);
  void set totalCalls(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasTotalCalls() => $_has(0, 1);
  void clearTotalCalls() => clearField(1);

  double get totalTime => $_get(1, 2, null);
  void set totalTime(double v) { $_setDouble(1, 2, v); }
  bool hasTotalTime() => $_has(1, 2);
  void clearTotalTime() => clearField(2);

  List<PerformanceProfileFunction> get functions => $_get(2, 3, null);
}

class _ReadonlyResponsePerformanceProfile extends ResponsePerformanceProfile with ReadonlyMessageMixin {}

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

class SyncItem extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('SyncItem')
    ..a/*<CrawlResponse>*/(1, 'item', PbFieldType.QM, CrawlResponse.getDefault, CrawlResponse.create)
    ..a/*<List<int>>*/(2, 'token', PbFieldType.QY)
  ;

  SyncItem() : super();
  SyncItem.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SyncItem.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SyncItem clone() => new SyncItem()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static SyncItem create() => new SyncItem();
  static PbList<SyncItem> createRepeated() => new PbList<SyncItem>();
  static SyncItem getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlySyncItem();
    return _defaultInstance;
  }
  static SyncItem _defaultInstance;
  static void $checkItem(SyncItem v) {
    if (v is !SyncItem) checkItemFailed(v, 'SyncItem');
  }

  CrawlResponse get item => $_get(0, 1, null);
  void set item(CrawlResponse v) { setField(1, v); }
  bool hasItem() => $_has(0, 1);
  void clearItem() => clearField(1);

  List<int> get token => $_get(1, 2, null);
  void set token(List<int> v) { $_setBytes(1, 2, v); }
  bool hasToken() => $_has(1, 2);
  void clearToken() => clearField(2);
}

class _ReadonlySyncItem extends SyncItem with ReadonlyMessageMixin {}

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
    ..e/*<SubscriptionClosed_Reason>*/(1, 'reason', PbFieldType.QE, SubscriptionClosed_Reason.COMPLETE, SubscriptionClosed_Reason.valueOf)
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

class Task extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Task')
    ..a/*<String>*/(1, 'name', PbFieldType.OS)
    ..a/*<int>*/(2, 'count', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Task() : super();
  Task.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Task.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Task clone() => new Task()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Task create() => new Task();
  static PbList<Task> createRepeated() => new PbList<Task>();
  static Task getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTask();
    return _defaultInstance;
  }
  static Task _defaultInstance;
  static void $checkItem(Task v) {
    if (v is !Task) checkItemFailed(v, 'Task');
  }

  String get name => $_get(0, 1, '');
  void set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);

  int get count => $_get(1, 2, 0);
  void set count(int v) { $_setUnsignedInt32(1, 2, v); }
  bool hasCount() => $_has(1, 2);
  void clearCount() => clearField(2);
}

class _ReadonlyTask extends Task with ReadonlyMessageMixin {}

class TaskMonitor extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TaskMonitor')
    ..a/*<int>*/(1, 'count', PbFieldType.O3)
    ..pp/*<Task>*/(2, 'tasks', PbFieldType.PM, Task.$checkItem, Task.create)
    ..hasRequiredFields = false
  ;

  TaskMonitor() : super();
  TaskMonitor.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TaskMonitor.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TaskMonitor clone() => new TaskMonitor()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TaskMonitor create() => new TaskMonitor();
  static PbList<TaskMonitor> createRepeated() => new PbList<TaskMonitor>();
  static TaskMonitor getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTaskMonitor();
    return _defaultInstance;
  }
  static TaskMonitor _defaultInstance;
  static void $checkItem(TaskMonitor v) {
    if (v is !TaskMonitor) checkItemFailed(v, 'TaskMonitor');
  }

  int get count => $_get(0, 1, 0);
  void set count(int v) { $_setUnsignedInt32(0, 1, v); }
  bool hasCount() => $_has(0, 1);
  void clearCount() => clearField(1);

  List<Task> get tasks => $_get(1, 2, null);
}

class _ReadonlyTaskMonitor extends TaskMonitor with ReadonlyMessageMixin {}

