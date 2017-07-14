///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: library_prefixes
library starbelly_shared_pbenum;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class JobRunState extends ProtobufEnum {
  static const JobRunState CANCELLED = const JobRunState._(1, 'CANCELLED');
  static const JobRunState COMPLETED = const JobRunState._(2, 'COMPLETED');
  static const JobRunState PAUSED = const JobRunState._(3, 'PAUSED');
  static const JobRunState PENDING = const JobRunState._(4, 'PENDING');
  static const JobRunState RUNNING = const JobRunState._(5, 'RUNNING');
  static const JobRunState DELETED = const JobRunState._(6, 'DELETED');

  static const List<JobRunState> values = const <JobRunState> [
    CANCELLED,
    COMPLETED,
    PAUSED,
    PENDING,
    RUNNING,
    DELETED,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static JobRunState valueOf(int value) => _byValue[value] as JobRunState;
  static void $checkItem(JobRunState v) {
    if (v is! JobRunState) checkItemFailed(v, 'JobRunState');
  }

  const JobRunState._(int v, String n) : super(v, n);
}

class PatternMatch extends ProtobufEnum {
  static const PatternMatch MATCHES = const PatternMatch._(1, 'MATCHES');
  static const PatternMatch DOES_NOT_MATCH = const PatternMatch._(2, 'DOES_NOT_MATCH');

  static const List<PatternMatch> values = const <PatternMatch> [
    MATCHES,
    DOES_NOT_MATCH,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static PatternMatch valueOf(int value) => _byValue[value] as PatternMatch;
  static void $checkItem(PatternMatch v) {
    if (v is! PatternMatch) checkItemFailed(v, 'PatternMatch');
  }

  const PatternMatch._(int v, String n) : super(v, n);
}

class PolicyRobotsTxt_Usage extends ProtobufEnum {
  static const PolicyRobotsTxt_Usage OBEY = const PolicyRobotsTxt_Usage._(1, 'OBEY');
  static const PolicyRobotsTxt_Usage INVERT = const PolicyRobotsTxt_Usage._(2, 'INVERT');
  static const PolicyRobotsTxt_Usage IGNORE = const PolicyRobotsTxt_Usage._(3, 'IGNORE');

  static const List<PolicyRobotsTxt_Usage> values = const <PolicyRobotsTxt_Usage> [
    OBEY,
    INVERT,
    IGNORE,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static PolicyRobotsTxt_Usage valueOf(int value) => _byValue[value] as PolicyRobotsTxt_Usage;
  static void $checkItem(PolicyRobotsTxt_Usage v) {
    if (v is! PolicyRobotsTxt_Usage) checkItemFailed(v, 'PolicyRobotsTxt_Usage');
  }

  const PolicyRobotsTxt_Usage._(int v, String n) : super(v, n);
}

class PolicyUrlRule_Action extends ProtobufEnum {
  static const PolicyUrlRule_Action ADD = const PolicyUrlRule_Action._(1, 'ADD');
  static const PolicyUrlRule_Action MULTIPLY = const PolicyUrlRule_Action._(2, 'MULTIPLY');

  static const List<PolicyUrlRule_Action> values = const <PolicyUrlRule_Action> [
    ADD,
    MULTIPLY,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static PolicyUrlRule_Action valueOf(int value) => _byValue[value] as PolicyUrlRule_Action;
  static void $checkItem(PolicyUrlRule_Action v) {
    if (v is! PolicyUrlRule_Action) checkItemFailed(v, 'PolicyUrlRule_Action');
  }

  const PolicyUrlRule_Action._(int v, String n) : super(v, n);
}

