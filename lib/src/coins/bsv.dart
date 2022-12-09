import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';
import 'package:flutter_multicoin_address_validator/src/validators/bsv_validator.dart';

class BSV extends Coin {
  BSV() : super('BSV', 'bsv', BsvValidator());
}