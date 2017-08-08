///
//  Generated code. Do not modify.
///
library starbelly_server_pbenum;

import 'package:protobuf/protobuf.dart';

class SubscriptionClosed_Reason extends ProtobufEnum {
  static const SubscriptionClosed_Reason COMPLETE = const SubscriptionClosed_Reason._(1, 'COMPLETE');
  static const SubscriptionClosed_Reason ERROR = const SubscriptionClosed_Reason._(2, 'ERROR');

  static const List<SubscriptionClosed_Reason> values = const <SubscriptionClosed_Reason> [
    COMPLETE,
    ERROR,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static SubscriptionClosed_Reason valueOf(int value) => _byValue[value] as SubscriptionClosed_Reason;
  static void $checkItem(SubscriptionClosed_Reason v) {
    if (v is !SubscriptionClosed_Reason) checkItemFailed(v, 'SubscriptionClosed_Reason');
  }

  const SubscriptionClosed_Reason._(int v, String n) : super(v, n);
}

