import 'package:flutter/material.dart';

import 'package:atwoz_app/core/extension/extended_context.dart';

/// `ThemeMixin`은 기존 `ContextExtension`을 활용해 간소화된 테마 및 다국어 설정 기능을 제공합니다.
mixin ThemeMixin<T extends StatefulWidget> on State<T> {
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
