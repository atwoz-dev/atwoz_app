import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/mixin/toast_mixin.dart';
import 'package:atwoz_app/core/network/api_service_impl.dart';
import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/repository/user_repository.dart';
import 'package:atwoz_app/features/auth/domain/usecase/auth_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
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
      final localStorage = storage;
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
    final localStorage = storage;

    // 1️1. 쿠키 저장소에서 refreshToken 삭제
    final Uri uri = Uri.parse(Config.baseUrl);
    final cookieJar = ref.read(apiServiceProvider).dioService.getCookieJar();
    await cookieJar.delete(uri, true); // 해당 도메인의 모든 쿠키 삭제

    // 2️. 백엔드에 로그아웃 요청
    await repository.signOut();

    // 3️. 로컬 스토리지 초기화
    await localStorage.clear();
    await localStorage.clearEncrypted();

    print("로그아웃 완료: 쿠키 및 로컬 데이터 삭제");
  }

  @override
  // 프로필 사진 업로드
  Future<void> uploadProfilePhotos(List<XFile?> photos) async {
    await repository.uploadProfilePhotos(photos);
  }

  @override
  Future<String?> getAccessToken() async {
    final localStorage = storage;
    return localStorage.getEncrypted(_accessToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    final localStorage = storage;
    final storedToken = await localStorage.getEncrypted(_refreshToken);
    return storedToken;
  }

  @override
  UserResponse? get user {
    final localStorage = ref.read(localStorageProvider);
    return localStorage.readem<UserResponse>(_user);
  }

  /// 로컬 스토리지 변경사항 감지
  @override
  Listenable userRefresh() {
    final localStorage = ref.read(localStorageProvider);
    return localStorage.listenable(keys: [_user]);
  }

  // 프로필(회원 정보) 업로드
  @override
  Future<void> uploadProfile(ProfileUploadRequest profileData) async {
    try {
      await repository.updateProfile(profileData);
      print("✅ 프로필 업로드 성공");
    } catch (e) {
      print("❌ 프로필 업로드 실패: $e");
      rethrow;
    }
  }
}
