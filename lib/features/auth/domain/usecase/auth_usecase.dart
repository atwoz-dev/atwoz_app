import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:flutter/material.dart';

abstract class AuthUseCase {
  Future<void> signUp(Map<String, dynamic> data);
  Future<void> signIn(UserSignInRequest user);
  Future<void> signOut();
  Future<String?> getAccessToken();
  UserResponse? get user;
  Listenable userRefresh();
  // Future<Map<String, dynamic>?> refreshToken();
  // DateTime? getTokenExpiration(String token);
}
