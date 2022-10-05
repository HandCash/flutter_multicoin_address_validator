import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/hedera_validator.dart';

class Hedera extends Coin {
  Hedera() : super('Hedera', 'hbar', HederaValidator());
}
