import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/tron_validator.dart';

class Tron extends Coin {
  Tron() : super('Tron', 'trx', TronValidator());
}
