import 'package:atwoz_app/features/auth/data/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/domain/auth_service.dart';
import 'package:atwoz_app/features/auth/domain/auth_service_impl.dart';
import 'package:atwoz_app/features/auth/domain/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  late final AuthService authService;

  AuthNotifier();

  @override
  AuthState build() {
    // 초기화 작업은 build 메서드에서 수행
    authService = ref.read(authServiceProvider);
    return const AuthState();
  }

  Future<void> signIn(String phoneNumber) async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.signIn(UserSignInRequest(phoneNumber: phoneNumber));
      state = state.copyWith(isSignedIn: true, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void reset() {
    state = const AuthState();
  }
}

// AuthServiceProvider 추가
final authServiceProvider =
    Provider<AuthService>((ref) => AuthServiceImpl(ref));
