import 'package:flutter_multicoin_address_validator/src/validators/abstract_validator.dart';

class BsvValidator extends AbstractValidator {
  final RegExp bitcoinAddressRegExp = RegExp(r"^[1][a-km-zA-HJ-NP-Z0-9]{26,33}$", caseSensitive: false);

  @override
  bool isValidAddress(String address) {
    return bitcoinAddressRegExp.hasMatch(address);
  }
}
