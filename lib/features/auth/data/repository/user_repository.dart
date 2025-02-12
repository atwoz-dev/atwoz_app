import 'dart:convert';
import 'package:atwoz_app/core/extension/extension.dart';
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
      data: {
        "phoneNumber": data.phoneNumber.removePhoneFormat,
      },
      requiresAuthToken: false,
    );

    final String? accessToken =
        await ref.read(authUsecaseProvider).getAccessToken();
    final String? refreshToken =
        await ref.read(authUsecaseProvider).getRefreshToken();
    print('🔐 액세스: $accessToken');
    print('🔐 리프레시: $refreshToken');
    await ref.read(authUsecaseProvider).getRefreshToken();

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
    final List<ProfilePhotoUploadRequest> requestList = [];
    final List<int> usedOrders = [];

    bool hasPrimary = false;

    for (int i = 0; i < photos.length; i++) {
      final photo = photos[i];
      if (photo == null) continue; // 빈 항목이면 스킵

      // order 중복 방지
      int order = i; // 기본적으로 리스트 인덱스를 order로 사용
      while (usedOrders.contains(order)) {
        order++;
      }
      usedOrders.add(order);

      // 첫 번째 이미지를 대표 이미지로 설정
      final isPrimary = (i == 0);
      if (isPrimary) hasPrimary = true;

      final request = ProfilePhotoUploadRequest(
        id: null, // 새 프로필 업로드라 항상 null
        isPrimary: isPrimary,
        order: order,
      );

      requestList.add(request);

      final file = await MultipartFile.fromFile(photo.path);
      formData.files.add(MapEntry("files", file));
    }

    if (!hasPrimary) {
      throw Exception("대표 이미지를 하나 이상 설정해야 합니다.");
    }

    formData.fields.add(MapEntry(
        "requests", jsonEncode(requestList.map((r) => r.toJson()).toList())));

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
