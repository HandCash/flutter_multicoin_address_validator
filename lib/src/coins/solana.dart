import 'package:flutter_multicoin_address_validator/src/coins/coin_interface.dart';

import '../validators/base58_validator.dart';

class Solana extends Coin {
  Solana() : super('Solana', 'sol', Base58Validator());
}
