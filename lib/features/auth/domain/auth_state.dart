import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool isSignedIn,
    @Default(null) UserResponse? user,
  }) = _AuthState;

  const AuthState._();
}
