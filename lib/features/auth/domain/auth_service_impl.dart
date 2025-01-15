// import 'dart:convert';
import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/mixin/toast_mixin.dart';
import 'package:atwoz_app/features/auth/domain/auth_service.dart';
import 'package:flutter/material.dart';
import '../data/user_sign_in_request.dart';
import '../data/user_response.dart';
import '../data/user_repository.dart';
import '../../../core/provider/base_repository_provider.dart';

class AuthServiceImpl extends BaseRepositoryProvider<UserRepository>
    with ToastMixin, LogMixin
    implements AuthService {
  AuthServiceImpl(super.ref);

  static const String _accessToken = 'AuthProvider.token';
  static const String _refreshToken = 'AuthProvider.reToken';
  static const String _user = 'AuthProvider.user';

  @override
  Future<void> signUp(Map<String, dynamic> data) async {
    await repository.signUp(data);
  }

  @override
  Future<void> signIn(UserSignInRequest user) async {
    final userResponse = await repository.signIn(user);

    try {
      if (userResponse.accessToken.isNotEmpty &&
          userResponse.refreshToken.isNotEmpty) {
        final localStorage = await storage;
        await localStorage.saveEncrypted(
            _accessToken, userResponse.accessToken);
        await localStorage.saveEncrypted(
            _refreshToken, userResponse.refreshToken);
        await localStorage.saveItem<UserResponse>(_user, userResponse);
      }
    } catch (e) {
      logD('Error saving user data: $e');
      addToastMessage('로그인 실패');
    }
  }

  @override
  Future<void> signOut() async {
    final localStorage = await storage;
    final refreshToken = await localStorage.getEncrypted(_refreshToken);
    if (refreshToken != null) {
      await repository.signOut(refreshToken);
      await localStorage.clear();
      await localStorage.clearEncrypted();
    }
  }

  @override
  Future<String?> getAccessToken() async {
    final localStorage = await storage;
    return localStorage.getEncrypted(_accessToken);
  }

  @override
  UserResponse? get user {
    final localStorage = ref.read(localStorageProvider).value;
    return localStorage?.readem<UserResponse>(_user);
  }

  /// 로컬 스토리지 변경사항 감지
  @override
  Listenable userRefresh() {
    final localStorage = ref.read(localStorageProvider).value;
    return localStorage!.listenable(keys: [_user]);
  }

  // @override
  // Future<Map<String, dynamic>?> refreshToken() async {
  //   try {
  //     final localStorage = await storage;
  //     final refreshToken = await localStorage.getEncrypted(_refreshToken);
  //     final accessToken = await localStorage.getEncrypted(_accessToken);
  //     final response =
  //         await repository.refreshToken(refreshToken!, accessToken!);

  //     final newAccessToken = response['AccessToken'];
  //     final newRefreshToken = response['RefreshToken'];

  //     if (newAccessToken != null) {
  //       await localStorage.saveEncrypted(_refreshToken, newRefreshToken);
  //       await localStorage.saveEncrypted(_accessToken, 'Bearer $newAccessToken');
  //       return {
  //         'accessToken': 'Bearer $newAccessToken',
  //         "refreshToken": newRefreshToken
  //       };
  //     }
  //   } catch (e) {
  //     logD("Error refreshing token: $e");
  //   }
  //   return null;
  // }

  /// Decode and get token expiration
  // @override
  // DateTime? getTokenExpiration(String token) {
  //   final parts = token.split('.');
  //   if (parts.length != 3) return null;

  //   final payload = parts[1];
  //   final normalized = base64Url.normalize(payload);
  //   final resp = base64Url.decode(normalized);
  //   final payloadMap = json.decode(utf8.decode(resp));

  //   if (payloadMap is! Map<String, dynamic>) return null;

  //   final exp = payloadMap['exp'];
  //   return exp is int
  //       ? DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true)
  //       : null;
  // }
}
