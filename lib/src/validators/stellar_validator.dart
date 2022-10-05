import 'abstract_validator.dart';

class XLMValidator extends AbstractValidator {
  static const ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567';
  final regexp = RegExp('^[$ALPHABET]{56}\$');

  @override
  bool isValidAddress(String address) => regexp.hasMatch(address);
}
