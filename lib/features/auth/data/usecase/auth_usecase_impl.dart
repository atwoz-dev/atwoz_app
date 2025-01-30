import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/mixin/toast_mixin.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/repository/user_repository.dart';
import 'package:atwoz_app/features/auth/domain/usecase/auth_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/provider/base_repository_provider.dart';

final authUsecaseProvider =
    Provider<AuthUseCase>((ref) => AuthUseCaseImpl(ref));

class AuthUseCaseImpl extends BaseRepositoryProvider<UserRepository>
    with ToastMixin, LogMixin
    implements AuthUseCase {
  AuthUseCaseImpl(super.ref);

  static const String _accessToken = 'AuthProvider.token';
  static const String _refreshToken = 'AuthProvider.reToken';
  static const String _user = 'AuthProvider.user';

  @override
  Future<void> signUp(Map<String, dynamic> data) async {
    await repository.signUp(data);
  }

  @override
  Future<UserResponse> signIn(UserSignInRequest user) async {
    final userResponse = await repository.signIn(user);
    try {
      final localStorage = await storage;
      await localStorage.saveEncrypted(_accessToken, userResponse.accessToken);

      await localStorage.saveItem<UserResponse>(_user, userResponse);

      return userResponse;
    } catch (e) {
      logD('유저 데이터 저장 실패: $e');
      addToastMessage('로그인 실패');
      rethrow;
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
}
