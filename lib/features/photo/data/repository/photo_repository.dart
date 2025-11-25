import 'dart:io';
import 'package:atwoz_app/features/photo/data/dto/presigned_url_response_dto.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_photo_upload_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/photo/data/dto/profile_image_response.dart';

final photoRepositoryProvider = Provider<PhotoRepository>((ref) {
  return PhotoRepository(ref);
});

class PhotoRepository extends BaseRepository {
  PhotoRepository(Ref ref) : super(ref, '/profileimage');

  Future<List<ProfileImageData>> fetchProfileImages() async {
    final res = await apiService.getJson(path);

    if (res is! Map<String, dynamic> || res['data'] is! List) {
      throw const FormatException('응답 형식이 올바르지 않습니다.');
    }

    return (res['data'] as List)
        .map((e) => ProfileImageData.fromJson(e))
        .toList();
  }

  Future<PresignedUrlResponseDto> getPresignedUrl() async {
    final res = await apiService.postJson(
      '$path/presigned-url',
      data: {'fileName': '${DateTime.now().millisecondsSinceEpoch}.png'},
    );

    if (res is! Map<String, dynamic> || res['data'] is! Map<String, dynamic>) {
      throw const FormatException('응답 형식이 올바르지 않습니다.');
    }

    return PresignedUrlResponseDto.fromJson(res['data']);
  }

  Future<bool> uploadImageToS3({
    required String presignedUrl,
    required File imageFile,
  }) async {
    final res = await Dio().put(
      presignedUrl,
      options: Options(headers: {'Content-Type': 'image/png'}),
      data: await imageFile.readAsBytes(),
    );

    return res.statusCode == 200;
  }

  Future<void> uploadProfilePhotos({required List<String> objectUrls}) async {
    final photoRequests = objectUrls
        .map((e) => PhotoRequest(imageUrl: e))
        .toList();

    final requests = ProfilePhotoUploadRequest(requests: photoRequests);

    await apiService.postJson(path, data: requests.toJson());
  }
}
