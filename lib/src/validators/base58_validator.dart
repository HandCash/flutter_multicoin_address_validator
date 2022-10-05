import 'package:fast_base58/fast_base58.dart';

import 'abstract_validator.dart';

class Base58Validator extends AbstractValidator {
  @override
  bool isValidAddress(String address) {
    try {
      final decoded = Base58Decode(address);
      return decoded.length >= 32 && decoded.length <= 44;
    } catch (e) {
      return false;
    }
  }
}
