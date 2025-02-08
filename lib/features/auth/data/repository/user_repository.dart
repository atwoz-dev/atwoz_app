import 'dart:convert';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_photo_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_upload_request.dart';
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class UserRepository extends BaseRepository {
  UserRepository(Ref ref) : super(ref, '/member');

  // 회원가입
  Future<void> signUp(Map<String, dynamic> data) =>
      apiService.postJson('$path/signup', data: data, requiresAuthToken: false);

  Future<UserResponse> signIn(UserSignInRequest data) async {
    final response = await apiService.postJson(
      '$path/login',
      data: data.phoneNumber,
      requiresAuthToken: false,
    );

    final String? accessToken =
        await ref.read(authUsecaseProvider).getAccessToken();

    print('엑세스: $accessToken');

    final userResponse = UserResponse.fromJson(response['data']);
    return userResponse;
  }

  // 로그아웃
  Future<void> signOut(String refreshToken) => apiService.postJson(
        '$path/logout',
        headers: {}, // refresh token은 쿠키로 관리
        data: {},
        requiresAuthToken: false,
      );

  // 프로필 사진 업로드
  Future<void> uploadProfilePhotos(List<XFile?> photos) async {
    final formData = FormData();
    final List<Map<String, dynamic>> requestList = [];

    for (int i = 0; i < photos.length; i++) {
      final photo = photos[i];

      if (photo == null) continue;
      final file = await MultipartFile.fromFile(photo.path);
      formData.files.add(MapEntry("files", file));

      // DTO 객체를 JSON으로 변환하여 리스트에 추가
      final request = ProfilePhotoUploadRequest(
        id: null, // 새 이미지면 null
        isPrimary: i == 0, // 첫 번째 이미지만 대표 이미지
        order: i,
      ).toJson();
      requestList.add(request);
    }

    if (formData.files.isEmpty) {
      print("❌ 업로드할 이미지가 없습니다.");
      return;
    }

    // JSON 데이터 추가
    formData.fields.add(MapEntry("requests", jsonEncode(requestList)));
    print('폼데이터: ${formData.fields}');
    try {
      final response = await apiService.postFormData(
        '/profileimage',
        data: formData,
        requiresAuthToken: true,
      );

      print("✅ 사진 업로드 성공: $response");
    } catch (e) {
      print("❌ 사진 업로드 중 오류 발생: $e");
    }
  }

  // 프로필 업데이트
  Future<UserResponse> updateProfile(ProfileUploadRequest requestData) async {
    try {
      final response = await apiService.putJson(
        '$path/profile',
        data: requestData.toJson(),
        requiresAuthToken: true,
      );

      final userResponse = UserResponse.fromJson(response['data']);
      return userResponse;
    } catch (e) {
      print("❌ 프로필 업데이트 실패: $e");
      rethrow;
    }
  }
}
