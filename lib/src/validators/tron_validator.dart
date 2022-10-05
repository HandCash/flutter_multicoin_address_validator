import 'package:fast_base58/fast_base58.dart';

import 'abstract_validator.dart';

class TronValidator extends AbstractValidator {
  @override
  bool isValidAddress(String address) {
    try {
      if (address.startsWith('T')) {
        var decodedAddress = Base58Decode(address);

        return decodedAddress.isNotEmpty && address.length == 34;
      }

      return int.parse(address, radix: 16).toString().startsWith('T') && address.length == 34;
    } catch (e) {
      return false;
    }
  }
}
