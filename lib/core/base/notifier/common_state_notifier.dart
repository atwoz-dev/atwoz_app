import 'package:atwoz_app/core/base/notifier/common_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'common_state_notifier.g.dart';

/// CommonStateNotifier - 공통 상태 관리 클래스
@riverpod
class CommonStateNotifier extends _$CommonStateNotifier {
  /// 초기 상태 설정
  @override
  CommonState build() {
    return const CommonState.initial();
  }

  /// 로딩 상태로 변경
  void emitLoading() {
    state = const CommonState.loading();
  }

  /// 에러 상태로 변경
  void emitError([Exception? exception]) {
    state = CommonState.error(exception);
  }

  /// 성공 상태로 변경
  void emitSuccess() {
    state = const CommonState.success();
  }

  /// 초기 상태로 변경
  void emitInitial() {
    state = const CommonState.initial();
  }
}