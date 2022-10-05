import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/flow_validator.dart';

class Flow extends Coin {
  Flow() : super('Flow', 'flow', FlowValidator());
}
