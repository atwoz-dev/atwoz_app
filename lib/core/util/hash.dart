import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:zooper_flutter_encoding_utf16/utf16.dart';

class Hash {
  Hash._();

  // utf16le + sha512
  static String convertSHA512Utf16LE(String plainText) {
    final encoder = UTF16LE();

    // plainText를 UTF-16BE로 인코딩
    List<int> encodedUtf16 = encoder.encode(plainText);

    // 인코딩된 바이트 리스트를 사용하여 SHA512 해시 계산
    var digest = sha512.convert(encodedUtf16);

    return digest.toString();
  }

  // utf8 + sha512
  static String convertSHA512Utf8(String plainText) {
    final crytptoPassword = sha512.convert(utf8.encode(plainText)).toString();
    return crytptoPassword;
  }
}
