import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_state.freezed.dart'; // Freezed에서 생성된 파일
part 'sign_in_state.g.dart'; // Riverpod에서 생성된 파일

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool isSignedIn,
  }) = _SignInState;

  const SignInState._();
}

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() {
    return const SignInState(); // 초기 상태 정의
  }

  Future<void> signIn(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Simulate authentication logic
      await Future.delayed(const Duration(seconds: 2));

      // Update state to indicate success
      state = state.copyWith(isLoading: false, isSignedIn: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void reset() {
    state = const SignInState();
  }
}
