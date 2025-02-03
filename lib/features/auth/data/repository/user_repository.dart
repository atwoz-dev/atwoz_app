import 'dart:io';

import 'package:atwoz_app/core/network/base_repository.dart';

import 'package:atwoz_app/core/storage/secure_storage.dart';

import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as img;

class UserRepository extends BaseRepository {
  UserRepository(Ref ref) : super(ref, '/member');

  final SecureStorage _secureStorage = SecureStorage(); // 기존 SecureStorage 활용

  // 회원가입
  Future<void> signUp(Map<String, dynamic> data) =>
      apiService.postJson('$path/signup', data: data, requiresAuthToken: false);

  Future<UserResponse> signIn(UserSignInRequest data) async {
    final response = await apiService.postJson(
      '$path/login',
      data: data.phoneNumber,
      requiresAuthToken: false,
    );

    final userResponse = UserResponse.fromJson(response['data']);
    print('로그인 성공: ${userResponse.accessToken}');
    return userResponse;
  }

  // 로그아웃
  Future<void> signOut(String refreshToken) => apiService.postJson(
        '$path/logout',
        headers: {}, // refresh token은 쿠키로 관리
        data: {},
        requiresAuthToken: false,
      );
  Future<File> resizeImage(File file) async {
    final bytes = await file.readAsBytes();
    final image = img.decodeImage(bytes);
    final resized = img.copyResize(image!, width: 800); // 너비 800px로 줄이기

    final tempDir = await getTemporaryDirectory();
    final resizedFile =
        File('${tempDir.path}/resized_${file.path.split('/').last}')
          ..writeAsBytesSync(img.encodeJpg(resized, quality: 85));

    return resizedFile;
  }

// 프로필 사진 업로드
  Future<void> uploadProfilePhotos(List<XFile?> photos) async {
    final List<Map<String, dynamic>> requests = [];

    for (int i = 0; i < photos.length; i++) {
      final photo = photos[i];
      if (photo == null) continue; // null 값 건너뛰기

      final resizedFile = await resizeImage(File(photo.path));
      final file = await MultipartFile.fromFile(resizedFile.path);

      requests.add({
        'image': file,
        'isPrimary': i == 0, // Boolean 값 유지
        'order': i,
      });
    }

    final formData = FormData();
    for (var request in requests) {
      formData.files.add(MapEntry("requests", request['image']));
      formData.fields
          .add(MapEntry("isPrimary", request['isPrimary'].toString()));
      formData.fields.add(MapEntry("order", request['order'].toString()));
    }

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
}
