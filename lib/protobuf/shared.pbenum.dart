///
//  Generated code. Do not modify.
///
library starbelly_shared_pbenum;

import 'package:protobuf/protobuf.dart';

class JobStatus_JobState extends ProtobufEnum {
  static const JobStatus_JobState CANCELLED = const JobStatus_JobState._(1, 'CANCELLED');
  static const JobStatus_JobState PAUSED = const JobStatus_JobState._(2, 'PAUSED');
  static const JobStatus_JobState PENDING = const JobStatus_JobState._(3, 'PENDING');
  static const JobStatus_JobState RUNNING = const JobStatus_JobState._(4, 'RUNNING');

  static const List<JobStatus_JobState> values = const <JobStatus_JobState> [
    CANCELLED,
    PAUSED,
    PENDING,
    RUNNING,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static JobStatus_JobState valueOf(int value) => _byValue[value] as JobStatus_JobState;
  static void $checkItem(JobStatus_JobState v) {
    if (v is !JobStatus_JobState) checkItemFailed(v, 'JobStatus_JobState');
  }

  const JobStatus_JobState._(int v, String n) : super(v, n);
}

