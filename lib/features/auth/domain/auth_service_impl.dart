import 'dart:convert';

import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/mixin/toast_mixin.dart';
import 'package:atwoz_app/features/auth/domain/auth_service.dart';
import 'package:flutter/material.dart';
import '../data/user_sign_in_request.dart';
import '../data/user_sign_up_request.dart';
import '../data/user_response.dart';
import '../data/user_repository.dart';
import '../../../core/provider/base_repository_provider.dart';

class AuthServiceImpl extends BaseRepositoryProvider<UserRepository>
    with ToastMixin, LogMixin
    implements AuthService {
  AuthServiceImpl(super.ref);

  static const String _keyToken = 'AuthProvider.token';
  static const String _reToken = 'AuthProvider.reToken';
  static const String _keyUser = 'AuthProvider.user';

  @override
  Future<String?> getAuthToken() async {
    final localStorage = await storage;
    return localStorage.getEncrypted(_keyToken);
  }

  @override
  User? get user {
    final localStorage = ref.read(localStorageProvider).value;
    return localStorage?.readem<User>(_keyUser);
  }

  /// Get base request data
  @override
  Map<String, dynamic>? getBaseRequestData() {
    final localStorage = ref.read(localStorageProvider).value;
    final userData = localStorage?.readem<User>(_keyUser);
    return userData?.toJson();
  }

  /// Watch for changes in local storage
  @override
  Listenable userRefresh() {
    final localStorage = ref.read(localStorageProvider).value;
    return localStorage!.listenable(keys: [_keyUser]);
  }

  /// Decode and get token expiration
  @override
  DateTime? getTokenExpiration(String token) {
    final parts = token.split('.');
    if (parts.length != 3) return null;

    final payload = parts[1];
    final normalized = base64Url.normalize(payload);
    final resp = base64Url.decode(normalized);
    final payloadMap = json.decode(utf8.decode(resp));

    if (payloadMap is! Map<String, dynamic>) return null;

    final exp = payloadMap['exp'];
    return exp is int
        ? DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true)
        : null;
  }

  @override
  Future<void> signIn(UserSignInRequest user) async {
    try {
      final response = await repository.signIn(user);
      final accessToken = 'Bearer ${response['Token']['AccessToken']}';
      final refreshToken = response['Token']['RefreshToken'];
      final userData = User.fromJson(response['UserInfo']);

      if (accessToken.isNotEmpty && refreshToken.isNotEmpty) {
        final localStorage = await storage;
        await localStorage.saveEncrypted(_reToken, refreshToken);
        await localStorage.saveEncrypted(_keyToken, accessToken);
        await localStorage.saveItem<User>(_keyUser, userData);
      }
    } catch (e) {
      addToastMessage("로그인 실패: $e");
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    final localStorage = await storage;
    await localStorage.clear();
    await localStorage.clearEncrypted();
  }

  @override
  Future<Map<String, dynamic>?> refreshToken() async {
    try {
      final localStorage = await storage;
      final refreshToken = await localStorage.getEncrypted(_reToken);
      final accessToken = await localStorage.getEncrypted(_keyToken);
      final response =
          await repository.refreshToken(refreshToken!, accessToken!);

      final newAccessToken = response['AccessToken'];
      final newRefreshToken = response['RefreshToken'];

      if (newAccessToken != null) {
        await localStorage.saveEncrypted(_reToken, newRefreshToken);
        await localStorage.saveEncrypted(_keyToken, 'Bearer $newAccessToken');
        return {
          'accessToken': 'Bearer $newAccessToken',
          "refreshToken": newRefreshToken
        };
      }
    } catch (e) {
      logD("Error refreshing token: $e");
    }
    return null;
  }

  /// Fetch user account info
  @override
  Future<UserSignUpRequest> inquiryUserAccountInfo(String phone) async {
    return repository.inquiryUserAccountInfor(phone);
  }
}
