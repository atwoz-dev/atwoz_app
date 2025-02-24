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

  void reset() {
    state = const AuthProcessState();
  }
}
