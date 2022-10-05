import 'package:base32/base32.dart';

import 'abstract_validator.dart';

class AlgoValidator extends AbstractValidator {
  static const ALGORAND_ADDRESS_LENGTH = 58;

  @override
  bool isValidAddress(String address) {
    if (address.length != ALGORAND_ADDRESS_LENGTH) {
      return false;
    }

    try {
      base32.decodeAsHexString(address);
      return true;
    } catch (e) {
      return false;
    }
  }
}
