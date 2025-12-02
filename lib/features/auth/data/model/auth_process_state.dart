import 'package:deepple_app/features/auth/data/dto/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_process_state.freezed.dart';

@freezed
abstract class AuthProcessState with _$AuthProcessState {
  const factory AuthProcessState({
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool isSignedIn,
    UserResponse? user,
  }) = _AuthProcessState;

  const AuthProcessState._();
}
