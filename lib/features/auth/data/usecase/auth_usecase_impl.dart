import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/network/api_service_impl.dart';
import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/repository/user_repository.dart';
import 'package:atwoz_app/features/auth/domain/usecase/auth_usecase.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_image_response.dart';
import 'package:atwoz_app/features/photo/data/repository/photo_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

/// UserRepository 주입을 명확하게 하기 위한 Provider
final authUsecaseProvider = Provider<AuthUseCase>((ref) {
  final userRepository = ref.read(userRepositoryProvider);
  final localStorage = ref.read(localStorageProvider);
  final apiService = ref.read(apiServiceProvider);
  final photoRepository = ref.read(photoRepositoryProvider);
  return AuthUseCaseImpl(
      userRepository, localStorage, apiService, photoRepository);
});

/// AuthUseCaseImpl에서 필요한 의존성을 명확하게 주입
class AuthUseCaseImpl with LogMixin implements AuthUseCase {
  final UserRepository _userRepository;
  final LocalStorage _localStorage;
  final ApiServiceImpl _apiService;
  final PhotoRepository _photoRepository;

  AuthUseCaseImpl(this._userRepository, this._localStorage, this._apiService,
      this._photoRepository);

  static const String _accessToken = 'AuthProvider.token';
  static const String _refreshToken = 'AuthProvider.reToken';
  static const String _user = 'AuthProvider.user';

  @override
  Future<UserData> signIn(UserSignInRequest user) async {
    final userResponse = await _userRepository.signIn(user);
    try {
      await _localStorage.saveEncrypted(_accessToken, userResponse.accessToken);
      await _localStorage.saveItem<UserData>(_user, userResponse);

      return userResponse;
    } catch (e) {
      logD('유저 데이터 저장 실패: $e');
      showToastMessage('로그인 실패');
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    final Uri uri = Uri.parse(Config.baseUrl);
    final cookieJar = await _apiService.cookieJar;
    await cookieJar.delete(uri, true);

    await _userRepository.signOut();

    await _localStorage.clear();
    await _localStorage.clearEncrypted();

    Log.d("로그아웃 완료: 쿠키 및 로컬 데이터 삭제");
  }

  // 프로필 사진 업로드
  @override
  Future<void> uploadProfilePhotos(List<XFile?> photos) async {
    await _photoRepository.uploadProfilePhotos(photos);
  }

  // 프로필 사진 삭제
  @override
  Future<void> deleteProfilePhoto(int index) async {
    await _photoRepository.deleteProfilePhoto(index);
  }

  @override
  Future<ProfileImageResponse?> fetchProfileImages() async {
    try {
      return await _photoRepository.fetchProfileImages();
    } catch (e) {
      Log.e("❌ 프로필 사진 조회 실패: $e");
      rethrow;
    }
  }

  @override
  Future<String?> getAccessToken() async {
    return _localStorage.getEncrypted(_accessToken);
  }

  @override
  void setAccessToken(String accessToken) {
    _localStorage.saveEncrypted(_accessToken, accessToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    return _localStorage.getEncrypted(_refreshToken);
  }

  @override
  UserResponse? get user {
    return _localStorage.readem<UserResponse>(_user);
  }

  @override
  Listenable userRefresh() {
    return _localStorage.listenable(keys: [_user]);
  }

  @override
  Future<void> uploadProfile(ProfileUploadRequest profileData) async {
    try {
      await _userRepository.updateProfile(profileData);
      Log.d("✅ 프로필 업로드 성공");
    } catch (e) {
      Log.e("❌ 프로필 업로드 실패: $e");
      rethrow;
    }
  }

  @override
  Future<void> sendSmsVerificationCode(String phoneNumber) async {
    await _userRepository.sendVerificationCode(
      phoneNumber: phoneNumber,
    );
  }
}
