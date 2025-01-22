import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/model/auth_process_state.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/auth/domain/usecase/auth_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@riverpod
class AuthState extends _$AuthState {
  late final AuthUseCase authUseCase;

  @override
  AuthProcessState build() {
    authUseCase = ref.read(authUsecaseProvider);
    return const AuthProcessState();
  }

  Future<void> signIn(String phoneNumber) async {
    state = state.copyWith(isLoading: true);
    try {
      await authUseCase.signIn(UserSignInRequest(phoneNumber: phoneNumber));
      state = state.copyWith(isSignedIn: true, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void reset() {
    state = const AuthProcessState();
  }
}
