import 'abstract_validator.dart';

class EtherumValidator extends AbstractValidator {
  @override
  bool isValidAddress(String address) => RegExp('^0x[a-fA-F0-9]{40}\$').hasMatch(address);
}
