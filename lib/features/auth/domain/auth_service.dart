import 'package:flutter/material.dart';

import '../data/user_sign_in_request.dart';
import '../data/user_sign_up_request.dart';
import '../data/user_response.dart';

// TODO: 임의로 넣은 거라 수정 필요
abstract class AuthService {
  Future<void> signIn(UserSignInRequest user);
  Future<void> signOut();
  Future<String?> getAuthToken();
  DateTime? getTokenExpiration(String token);
  Future<Map<String, dynamic>?> refreshToken();
  User? get user;
  Listenable userRefresh();
  Future<UserSignUpRequest> inquiryUserAccountInfo(String phone);
  Map<String, dynamic>? getBaseRequestData();
}
