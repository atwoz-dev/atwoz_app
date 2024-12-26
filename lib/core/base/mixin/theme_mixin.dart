import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:atwoz_app/core/extension/context_extension.dart';

/// `ThemeMixin`은 기존 `ContextExtension`을 활용해 간소화된 테마 및 다국어 설정 기능을 제공합니다.
mixin ThemeMixin<T extends StatefulWidget> on State<T> {
  AppLocalizations get l10n => context.l10n;

  ColorScheme get colorScheme => context.colorScheme;

  ThemeData get appTheme => context.theme;

  TextTheme get textStyle => context.textStyle;

  bool get isDarkTheme => context.isDarkTheme;

  /// 상태 안전성을 보장하는 `setState`
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }
}
