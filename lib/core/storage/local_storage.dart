import 'dart:async';
import 'dart:convert';

import 'package:atwoz_app/core/storage/local_storage_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class LocalStorageNotifier extends Notifier<LocalStorage> {
  @override
  LocalStorage build() {
    final storage = LocalStorage._();
    return storage;
  }
}

final localStorageProvider =
    NotifierProvider<LocalStorageNotifier, LocalStorage>(
      LocalStorageNotifier.new,
    );

class LocalStorage {
  LocalStorage._();

  static Box? _hiveStorage;
  static FlutterSecureStorage? _secureStorage;

  final _initCompleter = Completer();

  /// `Hive` 및 `FlutterSecureStorage` 초기화
  Future<void> initialize() async {
    if (_initCompleter.isCompleted) return;
    _hiveStorage ??= await Hive.openBox('LocalStorage');
    _secureStorage ??= const FlutterSecureStorage();

    _initCompleter.complete();
  }

  /* ------------------ SECURE STORAGE ----------------------- */

  Future<String?> getEncrypted(SecureStorageItem key) async {
    await _initCompleter.future;
    try {
      return _secureStorage?.read(key: key.key);
    } on PlatformException {
      return null;
    }
  }

  Future<bool> saveEncrypted(SecureStorageItem key, String value) async {
    await _initCompleter.future;
    try {
      await _secureStorage!.write(key: key.key, value: value);
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

  Future<void> saveItem<T>(Object key, T? value) async {
    await _initCompleter.future;
    if (value != null) {
      return _hiveStorage!.put(key, value);
    } else {
      return _hiveStorage!.delete(key);
    }
  }

  Future<void> clear() => _hiveStorage!.clear();
}
