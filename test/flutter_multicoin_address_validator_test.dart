import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_multicoin_address_validator/flutter_multicoin_address_validator.dart';

void main() {
  group('Solana', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('HAE1oNnc3XBmPudphRcHhyCvGShtgDYtZVzx2MocKEr1', 'sol'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('ee1oNnc3XBmPudphRcHhyCvGSYtZVzx2MocKEr1', 'sol'), false);
    });
  });

  group('Avalance', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('0xd17a5D992567E2Fc2a3FE1c8BC58bF63D24E55E1', 'avax'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('0xd17a5D992567E1bF63D24eweweE55E1', 'avax'), false);
    });
  });

  group('Tron', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('TNPeeaaFB7K9cmo4uQpcU32zGK8G1NYqeL', 'trx'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('TAzsQ9Gx8eqFNFSKbeXrbiPHzA8wr', 'trx'), false);
    });
  });

  group('Algorand', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('NJY27OQ2ZXK6OWBN44LE4K43TA2AV3DPILPYTHAJAMKIVZDWTEJKZJKO4A', 'algo'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('NJY27OQK6OWBN44LE4K43TA2AV3DPILPYTHAJAMKIVZDWTEJKZJKO4A', 'algo'), false);
    });
  });

  group('Stellar', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('GBH4TZYZ4IRCPO44CBOLFUHULU2WGALXTAVESQA6432MBJMABBB4GIYI', 'xlm'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('GBH4TZYZ4IRCPO44CBOLFUHULU2WGALXT4SQA6432MBJMABBB4GIYI', 'xlm'), false);
    });
  });

  group('Flow', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('0x8f3e345219de6fed', 'flow'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('0x8f3e345219de6fe', 'flow'), false);
    });
  });

  group('Hedera', () {
    test('Valid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('0.0.12', 'hbar'), true);
    });
    test('Invalid address', () {
      final validator = WalletAddressWalidator();
      expect(validator.validate('0.0', 'hbar'), false);
    });
  });
}
