import 'package:atwoz_app/app/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';

/// 일반 컴포넌트를 위한 기본 State 클래스
abstract class AppBaseWidgetState<T extends StatefulWidget> extends State<T> {
  /// 상태 업데이트 시 안전성 보장
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }

  /// 테마 관련 설정 (필요한 경우)
  late ThemeData theme;
  late TextTheme textTheme;
  late Palette colors;
  late ColorScheme palette;
  late double screenWidth;
  late double screenHeight;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context);
    textTheme = theme.textTheme;
    // colors = context.colors;
    palette = context.palette;
    screenWidth = context.screenWidth;
    screenHeight = context.screenHeight;
  }

  /// 컴포넌트 레벨의 UI를 구성하는 메서드
  /// 페이지 레벨의 위젯은 AppBasePageBase 계열의 클래스를 사용해야 합니다.
  @override
  Widget build(BuildContext context);
}

/// Riverpod 컴포넌트를 위한 기본 State 클래스
abstract class AppBaseConsumerWidgetState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T> {
  /// 상태 업데이트 시 안전성 보장
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }

  /// 테마 관련 설정 (필요한 경우)
  late ThemeData theme;
  late TextTheme textTheme;
  late Palette colors;
  late ColorScheme palette;
  late double screenWidth;
  late double screenHeight;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context);
    textTheme = theme.textTheme;
    // colors = context.colors;
    palette = context.palette;
    screenWidth = context.screenWidth;
    screenHeight = context.screenHeight;
  }

  /// 컴포넌트 레벨의 UI를 구성하는 메서드
  /// 페이지 레벨의 위젯은 AppBasePageBase 계열의 클래스를 사용해야 합니다.
  @override
  Widget build(BuildContext context);
}
