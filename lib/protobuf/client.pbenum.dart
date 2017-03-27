///
//  Generated code. Do not modify.
///
library starbelly_client_pbenum;

import 'package:protobuf/protobuf.dart';

class RequestSetJobStatus_Action extends ProtobufEnum {
  static const RequestSetJobStatus_Action CANCEL = const RequestSetJobStatus_Action._(1, 'CANCEL');
  static const RequestSetJobStatus_Action PAUSE = const RequestSetJobStatus_Action._(2, 'PAUSE');
  static const RequestSetJobStatus_Action RESUME = const RequestSetJobStatus_Action._(3, 'RESUME');

  static const List<RequestSetJobStatus_Action> values = const <RequestSetJobStatus_Action> [
    CANCEL,
    PAUSE,
    RESUME,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static RequestSetJobStatus_Action valueOf(int value) => _byValue[value] as RequestSetJobStatus_Action;
  static void $checkItem(RequestSetJobStatus_Action v) {
    if (v is !RequestSetJobStatus_Action) checkItemFailed(v, 'RequestSetJobStatus_Action');
  }

  const RequestSetJobStatus_Action._(int v, String n) : super(v, n);
}

