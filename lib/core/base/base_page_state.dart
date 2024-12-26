import 'package:atwoz_app/core/base/notifier/common_state_notifier.dart';
import 'package:atwoz_app/core/widgets/view/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Riverpod 기반 페이지 공통 동작 정의
abstract class BasePageBaseState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(commonStateNotifierProvider);

    return Stack(
      alignment: Alignment.center,
      children: [
        buildPage(context),
        if (state.isLoading) const AppCircularProgressIndicator(),
      ],
    );
  }

  /// 하위 클래스에서 구현해야 하는 페이지의 주요 UI 구성 메서드
  Widget buildPage(BuildContext context);
}

/*
< 사용 예시 >
class ExampleScreen extends ConsumerStatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends BasePageBaseState<ExampleScreen> {
  @override
  Widget buildPage(BuildContext context) {
    final state = ref.watch(exampleNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Example Screen")),
      body: Center(
        child: state.when(
          initial: () => const Text("Press the button to load data"),
          loading: () => const CircularProgressIndicator(),
          success: () => const Text("Data Loaded Successfully!"),
          error: (exception) => Text("Error: ${exception?.toString()}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(exampleNotifierProvider.notifier).loadData();
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}

 */
