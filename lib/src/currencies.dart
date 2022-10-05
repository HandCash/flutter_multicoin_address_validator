import 'package:flutter_multicoin_address_validator/src/coins/algorand.dart';
import 'package:flutter_multicoin_address_validator/src/coins/avalanche.dart';
import 'package:flutter_multicoin_address_validator/src/coins/flow.dart';
import 'package:flutter_multicoin_address_validator/src/coins/hedera.dart';
import 'package:flutter_multicoin_address_validator/src/coins/solana.dart';
import 'package:flutter_multicoin_address_validator/src/coins/stellar.dart';
import 'package:flutter_multicoin_address_validator/src/coins/tron.dart';

import 'coins/coin_interface.dart';

final List<Coin> CURRENCIES = [
  Solana(),
  Avalanche(),
  Tron(),
  Algorand(),
  Stellar(),
  Flow(),
  Hedera(),
];
