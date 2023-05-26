import 'package:encrypt/encrypt.dart';

class CryptoUtils {
  static final String _key = 'wPqQqTcFgKjN6r9u';
  static final String _iv = 'x3z6A8z9F4h7K2p5';

  static String encryptString(String plainText) {
    final encrypter = Encrypter(AES(Key.fromUtf8(_key), mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(plainText, iv: IV.fromUtf8(_iv));

    return encrypted.base64;
  }

  static String decryptString(String cipherText) {
    final encrypter = Encrypter(AES(Key.fromUtf8(_key), mode: AESMode.cbc));
    final decrypted = encrypter.decrypt64(cipherText, iv: IV.fromUtf8(_iv));

    return decrypted;
  }
}
