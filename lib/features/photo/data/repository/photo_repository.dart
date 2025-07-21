import 'dart:io';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/my/domain/model/editable_profile_image.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_photo_upload_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_image_response.dart';

final photoRepositoryProvider = Provider<PhotoRepository>((ref) {
  return PhotoRepository(ref);
});

class PhotoRepository extends BaseRepository {
  PhotoRepository(Ref ref) : super(ref, '/profileimage');

  // XFile → MultipartFile 변환 함수 (공통 처리)
  Future<MultipartFile?> _convertToMultipartFile(XFile photo) async {
    if (!await File(photo.path).exists()) {
      Log.d("❌ 파일이 존재하지 않음: ${photo.path}");
      return null;
    }

    final mimeType = lookupMimeType(photo.path) ?? 'application/octet-stream';
    return MultipartFile.fromFile(
      photo.path,
      filename: basename(photo.path),
      contentType: MediaType.parse(mimeType),
    );
  }

  // 프로필 사진 단건 업로드
  Future<void> uploadSinglePhoto(int index, XFile photo) async {
    final multipartFile = await _convertToMultipartFile(photo);
    if (multipartFile == null) return;

    final formData = FormData.fromMap({
      "requests[0].image": multipartFile,
      "requests[0].isPrimary": index == 0 ? "true" : "false",
      "requests[0].order": index.toString(),
    });

    try {
      Log.d("단건 업로드 요청 데이터: ${formData.fields}");
      await apiService.postFormData(path,
          data: formData, requiresAccessToken: true);
    } catch (e) {
      Log.d("단건 사진 업로드 중 오류 발생: $e");
    }
  }

  // 프로필 사진 다건 업로드
  Future<void> uploadProfilePhotos(List<XFile?> photos) async {
    final validPhotos = photos.whereType<XFile>().toList(); // null 제거
    final convertedFiles =
        await Future.wait(validPhotos.map(_convertToMultipartFile));
    final files = convertedFiles.whereType<MultipartFile>().toList(); // null 제거

    if (files.isEmpty) {
      Log.d("업로드할 파일이 없습니다.");
      return;
    }

    final formData = FormData();
    for (var i = 0; i < files.length; i++) {
      formData.files.add(MapEntry("requests[$i].image", files[i]));
    }
    final fields = <String, String>{};

    for (var i = 0; i < files.length; i++) {
      final json =
          ProfilePhotoUploadRequest(isPrimary: i == 0, order: i).toJson();

      json.entries.where((entry) => entry.value != null).forEach((entry) {
        fields["requests[$i].${entry.key}"] = entry.value.toString();
      });
    }

    formData.fields.addAll(fields.entries);

    try {
      await apiService.postFormData(path,
          data: formData, requiresAccessToken: true);
    } catch (e) {
      Log.d("사진 업로드 중 오류 발생: $e");
    }
  }

  // 프로필 사진 삭제
  Future<void> deleteProfilePhoto(int id) async {
    try {
      await apiService.deleteJson(
        '$path/$id',
      );
    } catch (e) {
      Log.d("❌ 프로필 이미지 삭제 중 오류 발생: $e");
    }
  }

  // 프로필 이미지 조회
  Future<ProfileImageResponse?> fetchProfileImages() async {
    try {
      final response =
          await apiService.getJson(path, requiresAccessToken: true);
      final profileImageResponse = ProfileImageResponse.fromJson(response);

      Log.d("프로필 이미지 조회 성공: ${profileImageResponse.toString()}");
      return profileImageResponse;
    } catch (e) {
      Log.d("❌ 프로필 이미지 조회 중 오류 발생: $e");
      return null;
    }
  }

  // 프로필 이미지 업데이트
  Future<void> updateProfilePhotos(List<EditableProfileImage> photos) async {
    final formData = FormData();

    int reqIdx = 0; // 요청 인덱스

    for (final photo in photos) {
      if (photo.imageFile == null) continue; // imageFile이 null이면 건너뜀

      final multipartFile = await _convertToMultipartFile(
          photo.imageFile!); // XFile → MultipartFile 변환
      if (multipartFile == null) continue; // multipartFile이 null이면 건너뜀

      formData.files.add(
        MapEntry(
          "requests[$reqIdx].image",
          multipartFile,
        ),
      ); // 요청 이미지 추가

      formData.fields.add(
        MapEntry(
          "requests[$reqIdx].order",
          photo.order.toString(),
        ),
      ); // 요청 order 추가

      formData.fields.add(
        MapEntry(
          "requests[$reqIdx].isPrimary",
          photo.isPrimary.toString(),
        ),
      ); // 요청 isPrimary 추가

      if (photo.id != null) {
        // id가 null이 아니면 이미지 변경
        formData.fields.add(
          MapEntry(
            "requests[$reqIdx].id",
            photo.id.toString(),
          ),
        ); // 요청 id 추가
      }

      reqIdx++;
    }

    try {
      await apiService.postFormData(path,
          data: formData, requiresAccessToken: true);
    } catch (e) {
      Log.d("❌ 프로필 사진 업데이트 중 오류 발생: $e");
    }
  }
}
