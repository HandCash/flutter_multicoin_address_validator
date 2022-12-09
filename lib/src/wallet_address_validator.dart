import 'package:flutter_multicoin_address_validator/src/coins/bsv.dart';

import 'coins/coins.dart';

class WalletAddressWalidator {
  final List<Coin> supportedCoins = [
  Solana(),
  Avalanche(),
  Tron(),
  Algorand(),
  Stellar(),
  Flow(),
  Hedera(),
  BSV(),
];


  bool validate(String address, String currencyNameOrSymbol) {
    return _findCurrency(currencyNameOrSymbol).validator.isValidAddress(address);
  }

  Coin _findCurrency(String nameOrSymbol) =>
      supportedCoins.firstWhere((currency) => currency.name == nameOrSymbol || currency.symbol == nameOrSymbol);
}
