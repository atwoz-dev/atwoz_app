import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {
  static Future<void> initialize() async {
    _instance ??= await SharedPreferences.getInstance();
  }

  static SharedPreferences? _instance;

  static void setValue<T>(_SharedPreferenceKey<T> key, T value) {
    assert(_instance != null, 'SharedPreferences is not initialized');

    switch (key) {
      case SharedPreferencePrimitiveKey<int>():
        _instance?.setInt(key.key, value as int);
      case SharedPreferencePrimitiveKey<double>():
        _instance?.setDouble(key.key, value as double);
      case SharedPreferencePrimitiveKey<bool>():
        _instance?.setBool(key.key, value as bool);
      case SharedPreferenceKey<T>():
        _instance?.setString(key.key, key.toJson(value));
      default:
        _instance?.setString(key.key, value.toString());
    }
  }

  static T? getValue<T>(_SharedPreferenceKey<T> key) {
    assert(_instance != null, 'SharedPreferences is not initialized');
    switch (key) {
      case SharedPreferenceKey<T>():
        final jsonString = _instance?.getString(key.key);
        if (jsonString == null) {
          return key.defaultValue;
        }
        return key.fromJson(json.decode(jsonString));
      case SharedPreferencePrimitiveKey<int>():
        return _instance?.getInt(key.key) as T? ?? key.defaultValue;
      case SharedPreferencePrimitiveKey<double>():
        return _instance?.getDouble(key.key) as T? ?? key.defaultValue;
      case SharedPreferencePrimitiveKey<bool>():
        return _instance?.getBool(key.key) as T? ?? key.defaultValue;
      case SharedPreferencePrimitiveKey<String>():
        return _instance?.getString(key.key) as T? ?? key.defaultValue;
      default:
        throw UnimplementedError();
    }
  }
}

sealed class _SharedPreferenceKey<T> {
  const _SharedPreferenceKey(
    this.key, {
    this.defaultValue,
  });

  final String key;
  final T? defaultValue;
}

class SharedPreferenceKey<T> extends _SharedPreferenceKey<T> {
  const SharedPreferenceKey(
    super.key, {
    required this.fromJson,
    required this.toJson,
    super.defaultValue,
  });

  final T Function(String) fromJson;
  final String Function(T) toJson;
}

class SharedPreferencePrimitiveKey<T> extends _SharedPreferenceKey<T> {
  const SharedPreferencePrimitiveKey(super.key, {super.defaultValue});
}
