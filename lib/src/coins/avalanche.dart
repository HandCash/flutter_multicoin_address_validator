import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/ethereum_validator.dart';

class Avalanche extends Coin {
  Avalanche() : super('Avalanche', 'avax', EtherumValidator());
}
