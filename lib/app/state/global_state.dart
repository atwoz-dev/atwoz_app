import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    @Default(1) int themeModeIndex,
  }) = _AppGlobalState;

  const AppGlobalState._();

  ThemeMode get themeMode => ThemeMode.values[themeModeIndex];
}
