import 'package:atwoz_app/core/config/config.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref);
});

class UserRepository extends BaseRepository {
  UserRepository(Ref ref) : super(ref, '/member');

  // 회원가입 및 로그인
  Future<UserResponse> signIn(UserSignInRequest data) async {
    final response = await apiService.postJson(
      '$path/login',
      data: {
        "phoneNumber": data.phoneNumber.removePhoneFormat,
      },
      requiresAccessToken: false,
    );

    await ref.read(authUsecaseProvider).getRefreshToken();

    final userResponse = UserResponse.fromJson(response['data']);
    return userResponse;
  }

  // 로그아웃
  Future<void> signOut() => apiService.getJson(
        '$path/logout',
        requiresRefreshCookie: true,
      );

  // 프로필 업데이트
  Future<void> updateProfile(ProfileUploadRequest requestData) async {
    try {
      await apiService.putJson(
        '$path/profile',
        data: requestData.toJson(),
        requiresAccessToken: true,
      );

      Log.d("프로필 업데이트 성공");
    } catch (e, st) {
      Log.e("프로필 업데이트 실패", errorObject: e, stackTrace: st);
      rethrow;
    }
  }

  Future<String> requestBizgoToken() async {
    final tokenResponse = await apiService.postJson<Map<String, dynamic>>(
      'https://omni.ibapi.kr/v1/auth/token',
      requiresAccessToken: false,
      headers: {
        'X-IB-Client-Id': Config.bizGoId,
        'X-IB-Client-Passwd': Config.bizGoPw,
      },
      data: {}, // 비즈고 토큰 발급은 body 없음
    );

    if (tokenResponse['code'] == 'A000') {
      final data = tokenResponse['data'];
      return '${data['schema']} ${data['token']}';
    } else {
      throw Exception('비즈고 토큰 발급 실패: ${tokenResponse['result']}');
    }
  }

  Future<void> sendSmsVerificationCode({
    required String phoneNumber,
    required String token,
    required String message,
  }) async {
    await apiService.postJson<Map<String, dynamic>>(
      'https://omni.ibapi.kr/v1/send/sms',
      requiresAccessToken: false,
      requiresRefreshToken: false,
      headers: {
        'Authorization': token,
      },
      data: {
        'from': Config.bizGoSenderPhone, // 등록된 발신번호
        'to': phoneNumber.replaceAll('-', ''),
        'text': message,
      },
    );
  }
}
