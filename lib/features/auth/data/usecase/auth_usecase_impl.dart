import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/core/notification/firebase_manager.dart';
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
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

/// UserRepository 주입을 명확하게 하기 위한 Provider
final authUsecaseProvider = Provider<AuthUseCase>((ref) {
  return AuthUseCaseImpl(ref);
});

/// AuthUseCaseImpl에서 필요한 의존성을 명확하게 주입
class AuthUseCaseImpl with LogMixin implements AuthUseCase {
  final Ref _ref;

  AuthUseCaseImpl(
    this._ref,
  );

  UserRepository get _userRepository => _ref.read(userRepositoryProvider);
  LocalStorage get _localStorage => _ref.read(localStorageProvider);
  ApiServiceImpl get _apiService => _ref.read(apiServiceProvider);
  PhotoRepository get _photoRepository => _ref.read(photoRepositoryProvider);
  GlobalNotifier get _globalNotifier =>
      _ref.read(globalProvider.notifier);

  static const String _accessToken = 'AuthProvider.token';
  static const String _refreshToken = 'AuthProvider.reToken';

  @override
  Future<UserData> signIn(UserSignInRequest user) async {
    final userResponse = await _userRepository.signIn(user);
    try {
      await _localStorage.saveEncrypted(_accessToken, userResponse.accessToken);
      final success = await _registerDeviceToServer();
      if (!success) {
        await _localStorage.saveEncrypted(_accessToken, '');
        throw Exception('device registration failed: clear user token');
      }
      return userResponse;
    } catch (e) {
      logD('유저 데이터 저장 실패: $e');
      showToastMessage('로그인 실패');
      rethrow;
    }
  }

  @override
  Future<bool> signOut() async {
    try {
      final uri = Uri.parse(Config.baseUrl);
      final cookieJar = _apiService.cookieJar;

      try {
        // 서버 로그아웃 먼저 처리
        await _userRepository.signOut();
      } catch (e) {
        Log.e("서버 로그아웃 실패");
        return false; // 실패 시 로그아웃 불가
      }

      try {
        // 로컬 데이터는 성공/삭제 여부 상관없이 로그아웃 처리
        await cookieJar.delete(uri, true);

        await _globalNotifier.clearLocalData();
      } catch (e) {
        Log.e('로컬 관련 데이터 삭제 실패');
      }

      return true;
    } catch (e) {
      Log.e("로그아웃 중 예기치 못한 에러 발생: $e");
      return false;
    }
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

  Future<bool> _registerDeviceToServer() async {
    final fcmToken = await FirebaseManager().getFcmToken();
    if (fcmToken == null) {
      Log.e('FCM 토큰을 가져오지 못했습니다.');
      return false;
    }

    try {
      final deviceId = await _getDeviceId();
      Log.d('register device($deviceId) to server with $fcmToken');

      await _apiService.postJson(
        '/notifications/device-registration',
        data: {
          'deviceId': deviceId ?? '',
          'registrationToken': fcmToken,
        },
      );
      return true;
    } catch (e) {
      Log.e('기기 등록 실패: $e');
      return false;
    }
  }

  Future<String?> _getDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor;
    } else if (Platform.isAndroid) {
      return await const AndroidId().getId();
    }
    return null;
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

  @override
  Future<void> activateAccount(String phoneNumber) async {
    await _userRepository.activateAccount(phoneNumber);
  }
}
