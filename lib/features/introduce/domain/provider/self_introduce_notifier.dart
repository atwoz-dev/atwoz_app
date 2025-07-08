import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/repository/introduce_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 등록 상태를 위한 간단한 클래스
class SelfIntroduceRegisterState {
  final bool isLoading;
  final bool isSuccess;
  final String? error;

  const SelfIntroduceRegisterState({
    this.isLoading = false,
    this.isSuccess = false,
    this.error,
  });

  SelfIntroduceRegisterState copyWith({
    bool? isLoading,
    bool? isSuccess,
    String? error,
    bool clearError = false,
  }) {
    return SelfIntroduceRegisterState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: clearError ? null : (error ?? this.error),
    );
  }

  factory SelfIntroduceRegisterState.initial() =>
      const SelfIntroduceRegisterState();
}

// 등록을 위한 StateNotifier
class SelfIntroduceRegisterNotifier
    extends StateNotifier<SelfIntroduceRegisterState> {
  SelfIntroduceRegisterNotifier(this.ref)
      : super(SelfIntroduceRegisterState.initial());

  final Ref ref;

  Future<void> registerIntroduction(String title, String content) async {
    if (state.isLoading) return;

    if (title.trim().isEmpty || content.trim().isEmpty) {
      state = state.copyWith(
        error: '제목과 내용을 모두 입력해주세요.',
      );
      return;
    }

    if (content.trim().length < 25) {
      state = state.copyWith(
        error: '내용은 최소 25글자 이상 입력해주세요.',
      );
      return;
    }

    state = state.copyWith(isLoading: true, clearError: true, isSuccess: false);

    try {
      final repository = ref.read(favoriteRepositoryProvider);
      await repository.writeSelfIntroduction(title.trim(), content.trim());

      state = state.copyWith(
        isLoading: false,
        isSuccess: true,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoading: false,
        error: '등록 중 오류가 발생했습니다: $e',
      );
    }
  }

  void resetState() {
    state = SelfIntroduceRegisterState.initial();
  }

  void clearError() {
    if (state.error != null) {
      state = state.copyWith(clearError: true);
    }
  }
}

// selfIntoductionRegister Provider
final selfIntroduceRegisterNotifierProvider = StateNotifierProvider<
    SelfIntroduceRegisterNotifier, SelfIntroduceRegisterState>(
  (ref) => SelfIntroduceRegisterNotifier(ref),
);
