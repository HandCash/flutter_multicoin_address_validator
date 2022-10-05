import 'package:flutter_multicoin_address_validator/src/currencies.dart';

import 'coins/coin_interface.dart';

class WalletAddressWalidator {
  bool validate(String address, String currencyNameOrSymbol) {
    return _findCurrency(currencyNameOrSymbol).validator.isValidAddress(address);
  }

  Coin _findCurrency(String nameOrSymbol) =>
      CURRENCIES.firstWhere((currency) => currency.name == nameOrSymbol || currency.symbol == nameOrSymbol);
}
