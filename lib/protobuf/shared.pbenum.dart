///
//  Generated code. Do not modify.
///
library starbelly_shared_pbenum;

import 'package:protobuf/protobuf.dart';

class JobRunState extends ProtobufEnum {
  static const JobRunState UNKNOWN = const JobRunState._(1, 'UNKNOWN');
  static const JobRunState CANCELLED = const JobRunState._(2, 'CANCELLED');
  static const JobRunState COMPLETED = const JobRunState._(3, 'COMPLETED');
  static const JobRunState PAUSED = const JobRunState._(4, 'PAUSED');
  static const JobRunState PENDING = const JobRunState._(5, 'PENDING');
  static const JobRunState RUNNING = const JobRunState._(6, 'RUNNING');

  static const List<JobRunState> values = const <JobRunState> [
    UNKNOWN,
    CANCELLED,
    COMPLETED,
    PAUSED,
    PENDING,
    RUNNING,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static JobRunState valueOf(int value) => _byValue[value] as JobRunState;
  static void $checkItem(JobRunState v) {
    if (v is !JobRunState) checkItemFailed(v, 'JobRunState');
  }

  const JobRunState._(int v, String n) : super(v, n);
}

