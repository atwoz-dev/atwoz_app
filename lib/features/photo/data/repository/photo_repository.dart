import 'dart:io';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_photo_upload_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/auth/data/dto/profile_image_response.dart';

final photoRepositoryProvider = Provider<PhotoRepository>((ref) {
  return PhotoRepository(ref);
});

class PhotoRepository extends BaseRepository {
  PhotoRepository(Ref ref) : super(ref, '/profileimage');

  // 프로필 사진 업로드
  Future<void> uploadProfilePhotos(List<XFile?> photos) async {
    final List<MultipartFile> files = [];
    final Map<String, String> fields = {};

    for (int i = 0; i < photos.length; i++) {
      final photo = photos[i];
      if (photo == null) continue;
      final fileExists = await File(photo.path).exists();
      if (!fileExists) {
        Log.d("파일이 존재하지 않음: ${photo.path}");
        continue;
      }

      final mimeType = lookupMimeType(photo.path) ?? 'application/octet-stream';

      final multipartFile = await MultipartFile.fromFile(
        photo.path,
        filename: basename(photo.path),
        contentType: MediaType.parse(mimeType),
      );

      files.add(multipartFile);

      // ProfilePhotoUploadRequest 객체 생성 후 id가 null인 경우 제외
      final request = ProfilePhotoUploadRequest(
        isPrimary: (i == 0),
        order: i,
      ).toJson()
        ..removeWhere((key, value) => value == null); // null 값 제거

      // fields 맵에 개별적으로 추가
      request.forEach((key, value) {
        fields["requests[$i].$key"] = value.toString();
      });
    }

    if (files.isEmpty) {
      Log.d("업로드할 파일이 없습니다.");
      return;
    }

    final FormData formData = FormData();

    // `requests[i].image` 형식으로 파일 추가
    for (int i = 0; i < files.length; i++) {
      formData.files.add(MapEntry("requests[$i].image", files[i]));
    }

    // JSON 데이터를 `fields` 맵을 통해 추가
    fields.forEach((key, value) {
      formData.fields.add(MapEntry(key, value));
    });

    try {
      final response = await apiService.postFormData(
        path,
        data: formData,
        requiresAuthToken: true,
      );

      Log.d("✅ 사진 업로드 성공: ${response.toString()}");
    } catch (e) {
      Log.d("❌ 사진 업로드 중 오류 발생: $e");
    }
  }

  // 프로필 사진 삭제
  Future<void> deleteProfilePhoto(int id) async {
    try {
      final response = await apiService.deleteJson(
        '$path/$id',
        requiresAuthToken: true,
      );

      Log.d("✅ 프로필 이미지 삭제 성공: ${response.toString()}");
    } catch (e) {
      Log.d("❌ 프로필 이미지 삭제 중 오류 발생: $e");
    }
  }

  // 프로필 이미지 조회
  Future<ProfileImageResponse?> fetchProfileImages() async {
    try {
      final response = await apiService.getJson(path, requiresAuthToken: true);

      final jsonResponse = response;
      final profileImageResponse = ProfileImageResponse.fromJson(jsonResponse);

      Log.d("✅ 프로필 이미지 조회 성공: ${profileImageResponse.toString()}");
      return profileImageResponse;
    } catch (e) {
      Log.d("❌ 프로필 이미지 조회 중 오류 발생: $e");
      return null;
    }
  }
}
