import 'abstract_validator.dart';

class HederaValidator extends AbstractValidator {
  @override
  bool isValidAddress(String address) => RegExp(r'^[0-9]*\.[0-9]*\.[0-9]*$').hasMatch(address);
}