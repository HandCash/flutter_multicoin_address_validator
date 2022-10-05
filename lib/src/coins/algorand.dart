import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/algo_validator.dart';

class Algorand extends Coin {
  Algorand() : super('Algorand', 'algo', AlgoValidator());
}