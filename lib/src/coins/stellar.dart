import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/stellar_validator.dart';

class Stellar extends Coin {
  Stellar() : super('Stellar', 'xlm', XLMValidator());
}