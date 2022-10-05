import 'abstract_validator.dart';

class FlowValidator extends AbstractValidator {
  @override
  bool isValidAddress(String address) => address.startsWith('0x') && (address.replaceAll('0x', '')).length == 16;
}
