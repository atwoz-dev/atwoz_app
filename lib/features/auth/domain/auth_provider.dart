import 'package:atwoz_app/features/auth/domain/auth_service.dart';
import 'package:atwoz_app/features/auth/domain/auth_service_impl.dart';
import 'package:atwoz_app/features/auth/domain/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return const AuthState(); // 초기 상태 정의
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
    state = const AuthState();
  }
}

@Riverpod(keepAlive: true)
AuthService authService(Ref ref) {
  return AuthServiceImpl(ref);
}
