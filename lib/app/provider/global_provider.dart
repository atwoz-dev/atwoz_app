import 'package:atwoz_app/app/state/global_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_provider.g.dart';

@Riverpod(keepAlive: true)
class Global extends AsyncNotifier<AppGlobalState> {
  late final Box<AppGlobalState> _hiveBox;

  @override
  Future<AppGlobalState> build() async {
    _hiveBox = await Hive.openBox<AppGlobalState>('AppGlobalNotifier');

    // 초기 상태 로드
    if (_hiveBox.isEmpty) {
      final initialState = AppGlobalState();
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

  Future<void> _saveState(AppGlobalState state) async {
    await _hiveBox.put(0, state);
  }
}
