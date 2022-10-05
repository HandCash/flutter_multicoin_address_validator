import '../validators/abstract_validator.dart';

abstract class Coin {
  final String name;
  final String symbol;
  final AbstractValidator validator;

  Coin(this.name, this.symbol, this.validator);

  bool isAddressValid(String address) => validator.isValidAddress(address);
}
