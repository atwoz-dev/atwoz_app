import 'package:atwoz_app/data/models/user_sign_in_request.dart';
import 'package:atwoz_app/data/models/user_sign_up_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_response.dart';
import '../sources/remote/api_service.dart';
import '../../core/base/repository/base_repository.dart';

class UserRepository extends BaseRepository {
  const UserRepository(Ref ref) : super(ref, '/user');

  Future<User> getUser() => apiService.getJson('$path/init',
      converter: (data) => User.fromJson(data));

  ///  로그인
  Future<Map<String, dynamic>> signIn(UserSignInRequest data) async {
    final Future<Map<String, dynamic>> test = (apiService.postJson(
      '$path/login',
      data: data.toJson(),
      requiresAuthToken: false,
    ));
    return test;
  }

  // 아래는 회원가입 메서드로, 회사 코드, 아이디, 비밀번호는 인증(authentication) 과정 후에 확인 가능합니다.
  Future<void> signUp(Map<String, dynamic> data) =>
      apiService.postJson('$path/signup', data: data, requiresAuthToken: false);

  // 로그아웃
  Future<Map<String, dynamic>> signOut() => apiService.postJson(
        '$path/logout',
        data: {},
      );

  // 사용자 계정 정보 (닉네임, 핸드폰 번호, 아이디) 가져오기
  Future<UserSignUpRequest> inquiryUserAccountInfor(String phone) =>
      apiService.getJson('$path/find/account/$phone',
          requiresAuthToken: false,
          converter: (data) => UserSignUpRequest.fromJson(data));

  // 401, 402 에러 발생 시 리프레시 토큰 가지고 액세스 토큰 재발급
  Future<Map<String, dynamic>> refreshToken(
      String refreshToken, String accessToken) {
    print('2. 리포 진입 \n액세스토큰 : $accessToken\n리프레시 토큰: $refreshToken');

    return apiService.postJson(
      '$path/refresh',
      data: {},
      requiresAuthToken: false,
      headers: {
        'Refresh-Token': refreshToken,
        "Authorization": accessToken
      }, // 헤더에 리프레쉬 토큰 추가
    );
  }
}
