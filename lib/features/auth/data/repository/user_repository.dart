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
}
