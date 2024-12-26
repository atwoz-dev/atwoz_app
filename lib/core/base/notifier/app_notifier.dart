import 'package:atwoz_app/core/base/notifier/app_base_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppNotifier extends AsyncNotifier<AppBaseState> {
  late final Box<AppBaseState> _hiveBox;

  @override
  Future<AppBaseState> build() async {
    _hiveBox = await Hive.openBox<AppBaseState>('AppNotifier');

    // 초기 상태 로드
    if (_hiveBox.isEmpty) {
      final initialState = AppBaseState();
      _hiveBox.put(0, initialState);
      return initialState;
    }

    return _hiveBox.get(0)!;
  }

  Future<void> changeThemeMode(ThemeMode mode) async {
    final newState = state.value!.copyWith(themeModeIndex: mode.index);
    state = AsyncData(newState);
    await _saveState(newState);
  }

  Future<void> changeLocale(Locale locale) async {
    final newState = state.value!.copyWith(languageCode: locale.languageCode);
    state = AsyncData(newState);
    await _saveState(newState);
  }

  Future<void> _saveState(AppBaseState state) async {
    await _hiveBox.put(0, state);
  }
}
