import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

final localStorageProvider = FutureProvider<LocalStorage>((ref) async {
  return LocalStorage.create();
});

/// 키 밸류 형태의 로컬 데이터 베이스
class LocalStorage {
  const LocalStorage._();

  static Future<LocalStorage> create() async {
    // Hive 초기화(initialize)
    _hiveStorage ??= await Hive.openBox('LocalStorage');

    // FlutterSecureStorage 초기화(initialize)
    _secureStorage ??= const FlutterSecureStorage();

    return const LocalStorage._();
  }

  /* ------------------ SECURE STORAGE ----------------------- */

  static FlutterSecureStorage? _secureStorage;

  Future<String?> getEncrypted(String key) {
    try {
      return _secureStorage!.read(key: key);
    } on PlatformException {
      return Future<String?>.value();
    }
  }

  Future<bool> saveEncrypted(String key, String value) async {
    try {
      await _secureStorage!.write(key: key, value: value);
      return Future<bool>.value(true);
    } on PlatformException catch (_) {
      return Future<bool>.value(false);
    }
  }

  Future<void> clearEncrypted() => _secureStorage!.deleteAll();

  /* ------------------ HIVE STORAGE ----------------------- */

  static Box? _hiveStorage;

  String generateSecureKey() => base64UrlEncode(Hive.generateSecureKey());

  ValueListenable<Box<dynamic>> listenable({List<dynamic>? keys}) =>
      _hiveStorage!.listenable(keys: keys);

  T? readem<T>(Object key, {T? defaultValue}) {
    try {
      return _hiveStorage!.get(key, defaultValue: defaultValue);
    } catch (_) {
      _hiveStorage?.delete(key);
      return null;
    }
  }

  Future<void> saveItem<T>(Object key, T? value) {
    if (value != null) {
      return _hiveStorage!.put(key, value);
    } else {
      return _hiveStorage!.delete(key);
    }
  }

  Future<void> clear() => _hiveStorage!.clear();
}
