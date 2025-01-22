import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRepository extends BaseRepository {
  const UserRepository(Ref ref) : super(ref, '/member/auth');

  // 회원가입
  Future<void> signUp(Map<String, dynamic> data) =>
      apiService.postJson('$path/signup', data: data, requiresAuthToken: false);

  // 로그인
  Future<UserResponse> signIn(UserSignInRequest data) async {
    final response = await apiService.postJson(
      '$path/login',
      data: data.toJson(),
      requiresAuthToken: false,
    );
    return UserResponse.fromJson(response);
  }

  // 로그아웃
  Future<void> signOut(String refreshToken) => apiService.postJson(
        '$path/logout',
        headers: {}, // refresh token은 쿠키로 관리
        data: {},
        requiresAuthToken: false,
      );

  // 401, 402 에러 발생 시 리프레시 토큰 가지고 액세스 토큰 재발급
  // Future<Map<String, dynamic>> refreshToken(
  //     String refreshToken, String accessToken) {
  //   print('2. 리포 진입 \n액세스토큰 : $accessToken\n리프레시 토큰: $refreshToken');

  //   return apiService.postJson(
  //     '$path/refresh',
  //     data: {},
  //     requiresAuthToken: false,
  //     headers: {
  //       'Refresh-Token': refreshToken,
  //       "Authorization": accessToken
  //     }, // 헤더에 리프레쉬 토큰 추가
  //   );
  // }
}
