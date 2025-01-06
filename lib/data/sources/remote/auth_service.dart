import 'package:atwoz_app/data/models/user_sign_up_request.dart';
import 'package:atwoz_app/data/sources/remote/auth_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/user_sign_in_request.dart';
import '../../models/user_response.dart';

part 'auth_service.freezed.dart';
part 'auth_service.g.dart';

// TODO: 임의로 넣은 거라 수정 필요
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    String? error,
    User? user,
  }) = _AuthState;
}

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  late final AuthService _authService;

  @override
  AuthState build() {
    _authService = ref.read(authServiceProvider);
    return AuthState(user: _authService.user);
  }

  Future<void> signIn(UserSignInRequest request) async {
    state = state.copyWith(isLoading: true);
    try {
      await _authService.signIn(request);
      state = state.copyWith(
        isLoading: false,
        user: _authService.user,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> signOut() async {
    state = state.copyWith(isLoading: true);
    try {
      await _authService.signOut();
      state = const AuthState();
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  User? get user => state.user;
}

@Riverpod(keepAlive: true)
AuthService authService(Ref ref) {
  return AuthServiceImpl(ref);
}

/// 인증 서비스 인터페이스 정의
abstract class AuthService {
  Future<void> signIn(UserSignInRequest user);
  Future<void> signOut();
  Future<String?> getAuthToken();
  DateTime? getTokenExpiration(String token);
  Future<Map<String, dynamic>?> refreshToken();
  User? get user;
  Listenable userRefresh();
  Future<UserSignUpRequest> inquiryUserAccountInfor(String phone);
  Map<String, dynamic>? getBaseRequestData();
}
