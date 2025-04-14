import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageNotifier extends StateNotifier<LocalStorage> {
  LocalStorageNotifier() : super(LocalStorage._());

  Future<void> initialize() async {
    await state.initialize();
  }
}

final localStorageProvider =
    StateNotifierProvider<LocalStorageNotifier, LocalStorage>((ref) {
  final notifier = LocalStorageNotifier();
  // 여긴 그냥 반환하고, Consumer 쪽에서 initialize 호출해줘야 함
  return notifier;
});

class LocalStorage {
  LocalStorage._();
  LocalStorage();
  static Box? _hiveStorage;
  static FlutterSecureStorage? _secureStorage;

  /// `Hive` 및 `FlutterSecureStorage` 초기화
  Future<void> initialize() async {
    _hiveStorage ??= await Hive.openBox('LocalStorage');
    _secureStorage ??= const FlutterSecureStorage();
  }

  /* ------------------ SECURE STORAGE ----------------------- */

  Future<String?> getEncrypted(String key) async {
    if (_secureStorage == null) {
      throw Exception('[LocalStorage] secureStorage가 초기화되지 않았습니다.');
    }
    try {
      return _secureStorage!.read(key: key);
    } on PlatformException {
      return null;
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
