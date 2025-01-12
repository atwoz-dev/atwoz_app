import 'package:atwoz_app/core/provider/common_provider.dart';
import 'package:atwoz_app/core/mixin/theme_mixin.dart';
import 'package:atwoz_app/app/widget/view/default_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Riverpod 기반 페이지 공통 동작 정의
/// buildPage 메서드는 페이지 레벨의 위젯에서만 사용하고, 일반 컴포넌트에서는 기본 build 메서드를 사용해야 합니다.
abstract class AppBaseConsumerStatefulPageState<
        T extends ConsumerStatefulWidget> extends ConsumerState<T>
    with AppThemeConsumerStatefulMixin {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(commonNotifierProvider);

    return Stack(
      alignment: Alignment.center,
      children: [
        buildPage(context),
        if (state.isLoading) const DefaultCircularProgressIndicator(),
      ],
    );
  }

  /// 하위 클래스에서 구현해야 하는 페이지의 주요 UI 구성 메서드
  Widget buildPage(BuildContext context);
}

/// buildPage 메서드는 페이지 레벨의 위젯에서만 사용하고, 일반 컴포넌트에서는 기본 build 메서드를 사용해야 합니다.
abstract class AppBaseStatefulPageBase<T extends StatefulWidget>
    extends State<T> with AppThemeStatefulMixin {
  @override
  Widget build(BuildContext context) {
    return buildPage(context);
  }

  Widget buildPage(BuildContext context);
}
