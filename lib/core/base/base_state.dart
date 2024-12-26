import 'package:flutter/material.dart';

/// 공통적인 기능을 제공하는 BaseState
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  /// 상태 업데이트 시 안전성 보장
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }

  /// 언어 및 테마 관련 설정 (필요한 경우)
  late ThemeData theme;
  late TextTheme textTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context);
    textTheme = theme.textTheme;
  }
}

/// 기본 StatefulWidget 구조
abstract class BaseStatefulWidget extends StatefulWidget {
  const BaseStatefulWidget({super.key});

  @override
  BaseState<BaseStatefulWidget> createState();
}
