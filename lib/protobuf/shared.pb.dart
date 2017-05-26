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
    ..a/*<String>*/(2, 'charset', PbFieldType.OS)
    ..a/*<String>*/(3, 'completedAt', PbFieldType.OS)
    ..a/*<String>*/(4, 'contentType', PbFieldType.OS)
    ..a/*<double>*/(5, 'cost', PbFieldType.OD)
    ..a/*<double>*/(6, 'duration', PbFieldType.OD)
    ..a/*<String>*/(7, 'exception', PbFieldType.OS)
    ..pp/*<CrawlItem_HeadersEntry>*/(8, 'headers', PbFieldType.PM, CrawlItem_HeadersEntry.$checkItem, CrawlItem_HeadersEntry.create)
    ..a/*<bool>*/(9, 'isBodyCompressed', PbFieldType.OB)
    ..a/*<bool>*/(10, 'isSuccess', PbFieldType.OB)
    ..a/*<List<int>>*/(11, 'jobId', PbFieldType.OY)
    ..a/*<String>*/(12, 'startedAt', PbFieldType.OS)
    ..a/*<int>*/(13, 'statusCode', PbFieldType.O3)
    ..a/*<String>*/(14, 'url', PbFieldType.OS)
    ..a/*<String>*/(15, 'urlCan', PbFieldType.OS)
    ..a/*<List<int>>*/(16, 'urlHash', PbFieldType.OY)
    ..a/*<List<int>>*/(17, 'syncToken', PbFieldType.OY)
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

  String get charset => $_get(1, 2, '');
  void set charset(String v) { $_setString(1, 2, v); }
  bool hasCharset() => $_has(1, 2);
  void clearCharset() => clearField(2);

  String get completedAt => $_get(2, 3, '');
  void set completedAt(String v) { $_setString(2, 3, v); }
  bool hasCompletedAt() => $_has(2, 3);
  void clearCompletedAt() => clearField(3);

  String get contentType => $_get(3, 4, '');
  void set contentType(String v) { $_setString(3, 4, v); }
  bool hasContentType() => $_has(3, 4);
  void clearContentType() => clearField(4);

  double get cost => $_get(4, 5, null);
  void set cost(double v) { $_setDouble(4, 5, v); }
  bool hasCost() => $_has(4, 5);
  void clearCost() => clearField(5);

  double get duration => $_get(5, 6, null);
  void set duration(double v) { $_setDouble(5, 6, v); }
  bool hasDuration() => $_has(5, 6);
  void clearDuration() => clearField(6);

  String get exception => $_get(6, 7, '');
  void set exception(String v) { $_setString(6, 7, v); }
  bool hasException() => $_has(6, 7);
  void clearException() => clearField(7);

  List<CrawlItem_HeadersEntry> get headers => $_get(7, 8, null);

  bool get isBodyCompressed => $_get(8, 9, false);
  void set isBodyCompressed(bool v) { $_setBool(8, 9, v); }
  bool hasIsBodyCompressed() => $_has(8, 9);
  void clearIsBodyCompressed() => clearField(9);

  bool get isSuccess => $_get(9, 10, false);
  void set isSuccess(bool v) { $_setBool(9, 10, v); }
  bool hasIsSuccess() => $_has(9, 10);
  void clearIsSuccess() => clearField(10);

  List<int> get jobId => $_get(10, 11, null);
  void set jobId(List<int> v) { $_setBytes(10, 11, v); }
  bool hasJobId() => $_has(10, 11);
  void clearJobId() => clearField(11);

  String get startedAt => $_get(11, 12, '');
  void set startedAt(String v) { $_setString(11, 12, v); }
  bool hasStartedAt() => $_has(11, 12);
  void clearStartedAt() => clearField(12);

  int get statusCode => $_get(12, 13, 0);
  void set statusCode(int v) { $_setUnsignedInt32(12, 13, v); }
  bool hasStatusCode() => $_has(12, 13);
  void clearStatusCode() => clearField(13);

  String get url => $_get(13, 14, '');
  void set url(String v) { $_setString(13, 14, v); }
  bool hasUrl() => $_has(13, 14);
  void clearUrl() => clearField(14);

  String get urlCan => $_get(14, 15, '');
  void set urlCan(String v) { $_setString(14, 15, v); }
  bool hasUrlCan() => $_has(14, 15);
  void clearUrlCan() => clearField(15);

  List<int> get urlHash => $_get(15, 16, null);
  void set urlHash(List<int> v) { $_setBytes(15, 16, v); }
  bool hasUrlHash() => $_has(15, 16);
  void clearUrlHash() => clearField(16);

  List<int> get syncToken => $_get(16, 17, null);
  void set syncToken(List<int> v) { $_setBytes(16, 17, v); }
  bool hasSyncToken() => $_has(16, 17);
  void clearSyncToken() => clearField(17);
}

class _ReadonlyCrawlItem extends CrawlItem with ReadonlyMessageMixin {}

class Policy extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Policy')
    ..a/*<List<int>>*/(1, 'policyId', PbFieldType.OY)
    ..a/*<String>*/(2, 'name', PbFieldType.OS)
    ..a/*<String>*/(3, 'createdAt', PbFieldType.OS)
    ..a/*<String>*/(4, 'updatedAt', PbFieldType.OS)
    ..a/*<PolicyLimits>*/(5, 'limits', PbFieldType.OM, PolicyLimits.getDefault, PolicyLimits.create)
    ..pp/*<PolicyProxyRule>*/(6, 'proxyRules', PbFieldType.PM, PolicyProxyRule.$checkItem, PolicyProxyRule.create)
    ..pp/*<PolicyMimeTypeRule>*/(7, 'mimeTypeRules', PbFieldType.PM, PolicyMimeTypeRule.$checkItem, PolicyMimeTypeRule.create)
    ..a/*<PolicyRobotsTxt>*/(8, 'robotsTxt', PbFieldType.OM, PolicyRobotsTxt.getDefault, PolicyRobotsTxt.create)
    ..pp/*<PolicyUrlRule>*/(9, 'urlRules', PbFieldType.PM, PolicyUrlRule.$checkItem, PolicyUrlRule.create)
    ..pp/*<PolicyUserAgent>*/(10, 'userAgents', PbFieldType.PM, PolicyUserAgent.$checkItem, PolicyUserAgent.create)
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
    if (v is !Policy) checkItemFailed(v, 'Policy');
  }

  List<int> get policyId => $_get(0, 1, null);
  void set policyId(List<int> v) { $_setBytes(0, 1, v); }
  bool hasPolicyId() => $_has(0, 1);
  void clearPolicyId() => clearField(1);

  String get name => $_get(1, 2, '');
  void set name(String v) { $_setString(1, 2, v); }
  bool hasName() => $_has(1, 2);
  void clearName() => clearField(2);

  String get createdAt => $_get(2, 3, '');
  void set createdAt(String v) { $_setString(2, 3, v); }
  bool hasCreatedAt() => $_has(2, 3);
  void clearCreatedAt() => clearField(3);

  String get updatedAt => $_get(3, 4, '');
  void set updatedAt(String v) { $_setString(3, 4, v); }
  bool hasUpdatedAt() => $_has(3, 4);
  void clearUpdatedAt() => clearField(4);

  PolicyLimits get limits => $_get(4, 5, null);
  void set limits(PolicyLimits v) { setField(5, v); }
  bool hasLimits() => $_has(4, 5);
  void clearLimits() => clearField(5);

  List<PolicyProxyRule> get proxyRules => $_get(5, 6, null);

  List<PolicyMimeTypeRule> get mimeTypeRules => $_get(6, 7, null);

  PolicyRobotsTxt get robotsTxt => $_get(7, 8, null);
  void set robotsTxt(PolicyRobotsTxt v) { setField(8, v); }
  bool hasRobotsTxt() => $_has(7, 8);
  void clearRobotsTxt() => clearField(8);

  List<PolicyUrlRule> get urlRules => $_get(8, 9, null);

  List<PolicyUserAgent> get userAgents => $_get(9, 10, null);
}

class _ReadonlyPolicy extends Policy with ReadonlyMessageMixin {}

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
    if (v is !PolicyLimits) checkItemFailed(v, 'PolicyLimits');
  }

  double get maxCost => $_get(0, 1, null);
  void set maxCost(double v) { $_setDouble(0, 1, v); }
  bool hasMaxCost() => $_has(0, 1);
  void clearMaxCost() => clearField(1);

  double get maxDuration => $_get(1, 2, null);
  void set maxDuration(double v) { $_setDouble(1, 2, v); }
  bool hasMaxDuration() => $_has(1, 2);
  void clearMaxDuration() => clearField(2);

  int get maxItems => $_get(2, 3, 0);
  void set maxItems(int v) { $_setUnsignedInt32(2, 3, v); }
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
    if (v is !PolicyMimeTypeRule) checkItemFailed(v, 'PolicyMimeTypeRule');
  }

  String get pattern => $_get(0, 1, '');
  void set pattern(String v) { $_setString(0, 1, v); }
  bool hasPattern() => $_has(0, 1);
  void clearPattern() => clearField(1);

  PatternMatch get match => $_get(1, 2, null);
  void set match(PatternMatch v) { setField(2, v); }
  bool hasMatch() => $_has(1, 2);
  void clearMatch() => clearField(2);

  bool get save => $_get(2, 3, false);
  void set save(bool v) { $_setBool(2, 3, v); }
  bool hasSave() => $_has(2, 3);
  void clearSave() => clearField(3);
}

class _ReadonlyPolicyMimeTypeRule extends PolicyMimeTypeRule with ReadonlyMessageMixin {}

class PolicyProxyRule extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PolicyProxyRule')
    ..a/*<String>*/(1, 'pattern', PbFieldType.OS)
    ..e/*<PatternMatch>*/(2, 'match', PbFieldType.OE, PatternMatch.MATCHES, PatternMatch.valueOf)
    ..a/*<String>*/(3, 'proxyUrl', PbFieldType.QS)
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
    if (v is !PolicyProxyRule) checkItemFailed(v, 'PolicyProxyRule');
  }

  String get pattern => $_get(0, 1, '');
  void set pattern(String v) { $_setString(0, 1, v); }
  bool hasPattern() => $_has(0, 1);
  void clearPattern() => clearField(1);

  PatternMatch get match => $_get(1, 2, null);
  void set match(PatternMatch v) { setField(2, v); }
  bool hasMatch() => $_has(1, 2);
  void clearMatch() => clearField(2);

  String get proxyUrl => $_get(2, 3, '');
  void set proxyUrl(String v) { $_setString(2, 3, v); }
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
    if (v is !PolicyRobotsTxt) checkItemFailed(v, 'PolicyRobotsTxt');
  }

  PolicyRobotsTxt_Usage get usage => $_get(0, 1, null);
  void set usage(PolicyRobotsTxt_Usage v) { setField(1, v); }
  bool hasUsage() => $_has(0, 1);
  void clearUsage() => clearField(1);
}

class _ReadonlyPolicyRobotsTxt extends PolicyRobotsTxt with ReadonlyMessageMixin {}

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
    if (v is !PolicyUrlRule) checkItemFailed(v, 'PolicyUrlRule');
  }

  String get pattern => $_get(0, 1, '');
  void set pattern(String v) { $_setString(0, 1, v); }
  bool hasPattern() => $_has(0, 1);
  void clearPattern() => clearField(1);

  PatternMatch get match => $_get(1, 2, null);
  void set match(PatternMatch v) { setField(2, v); }
  bool hasMatch() => $_has(1, 2);
  void clearMatch() => clearField(2);

  PolicyUrlRule_Action get action => $_get(2, 3, null);
  void set action(PolicyUrlRule_Action v) { setField(3, v); }
  bool hasAction() => $_has(2, 3);
  void clearAction() => clearField(3);

  double get amount => $_get(3, 4, null);
  void set amount(double v) { $_setDouble(3, 4, v); }
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
    if (v is !PolicyUserAgent) checkItemFailed(v, 'PolicyUserAgent');
  }

  String get name => $_get(0, 1, '');
  void set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);
}

class _ReadonlyPolicyUserAgent extends PolicyUserAgent with ReadonlyMessageMixin {}

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
    ..p/*<String>*/(2, 'seeds', PbFieldType.PS)
    ..a/*<Policy>*/(3, 'policy', PbFieldType.OM, Policy.getDefault, Policy.create)
    ..a/*<String>*/(4, 'name', PbFieldType.OS)
    ..e/*<JobRunState>*/(5, 'runState', PbFieldType.OE, JobRunState.CANCELLED, JobRunState.valueOf)
    ..a/*<String>*/(6, 'startedAt', PbFieldType.OS)
    ..a/*<String>*/(7, 'completedAt', PbFieldType.OS)
    ..a/*<int>*/(8, 'itemCount', PbFieldType.O3, -1)
    ..a/*<int>*/(9, 'httpSuccessCount', PbFieldType.O3, -1)
    ..a/*<int>*/(10, 'httpErrorCount', PbFieldType.O3, -1)
    ..a/*<int>*/(11, 'exceptionCount', PbFieldType.O3, -1)
    ..pp/*<Job_HttpStatusCountsEntry>*/(12, 'httpStatusCounts', PbFieldType.PM, Job_HttpStatusCountsEntry.$checkItem, Job_HttpStatusCountsEntry.create)
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

  List<String> get seeds => $_get(1, 2, null);

  Policy get policy => $_get(2, 3, null);
  void set policy(Policy v) { setField(3, v); }
  bool hasPolicy() => $_has(2, 3);
  void clearPolicy() => clearField(3);

  String get name => $_get(3, 4, '');
  void set name(String v) { $_setString(3, 4, v); }
  bool hasName() => $_has(3, 4);
  void clearName() => clearField(4);

  JobRunState get runState => $_get(4, 5, null);
  void set runState(JobRunState v) { setField(5, v); }
  bool hasRunState() => $_has(4, 5);
  void clearRunState() => clearField(5);

  String get startedAt => $_get(5, 6, '');
  void set startedAt(String v) { $_setString(5, 6, v); }
  bool hasStartedAt() => $_has(5, 6);
  void clearStartedAt() => clearField(6);

  String get completedAt => $_get(6, 7, '');
  void set completedAt(String v) { $_setString(6, 7, v); }
  bool hasCompletedAt() => $_has(6, 7);
  void clearCompletedAt() => clearField(7);

  int get itemCount => $_get(7, 8, -1);
  void set itemCount(int v) { $_setUnsignedInt32(7, 8, v); }
  bool hasItemCount() => $_has(7, 8);
  void clearItemCount() => clearField(8);

  int get httpSuccessCount => $_get(8, 9, -1);
  void set httpSuccessCount(int v) { $_setUnsignedInt32(8, 9, v); }
  bool hasHttpSuccessCount() => $_has(8, 9);
  void clearHttpSuccessCount() => clearField(9);

  int get httpErrorCount => $_get(9, 10, -1);
  void set httpErrorCount(int v) { $_setUnsignedInt32(9, 10, v); }
  bool hasHttpErrorCount() => $_has(9, 10);
  void clearHttpErrorCount() => clearField(10);

  int get exceptionCount => $_get(10, 11, -1);
  void set exceptionCount(int v) { $_setUnsignedInt32(10, 11, v); }
  bool hasExceptionCount() => $_has(10, 11);
  void clearExceptionCount() => clearField(11);

  List<Job_HttpStatusCountsEntry> get httpStatusCounts => $_get(11, 12, null);
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
    if (v is !RateLimit) checkItemFailed(v, 'RateLimit');
  }

  String get name => $_get(0, 1, '');
  void set name(String v) { $_setString(0, 1, v); }
  bool hasName() => $_has(0, 1);
  void clearName() => clearField(1);

  double get delay => $_get(1, 2, null);
  void set delay(double v) { $_setFloat(1, 2, v); }
  bool hasDelay() => $_has(1, 2);
  void clearDelay() => clearField(2);

  String get domain => $_get(2, 3, '');
  void set domain(String v) { $_setString(2, 3, v); }
  bool hasDomain() => $_has(2, 3);
  void clearDomain() => clearField(3);
}

class _ReadonlyRateLimit extends RateLimit with ReadonlyMessageMixin {}

