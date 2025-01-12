import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
class AppBaseState with _$AppBaseState {
  const factory AppBaseState({
    @Default(1) int themeModeIndex,
    @Default('ko') String languageCode,
  }) = _AppBaseState;

  const AppBaseState._();

  ThemeMode get themeMode => ThemeMode.values[themeModeIndex];
  Locale get locale => Locale(languageCode);
}
