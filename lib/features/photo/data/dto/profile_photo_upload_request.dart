import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_photo_upload_request.freezed.dart';
part 'profile_photo_upload_request.g.dart';

@freezed
abstract class ProfilePhotoUploadRequest with _$ProfilePhotoUploadRequest {
  const factory ProfilePhotoUploadRequest({
    String? id, // 새 이미지면 null
    required bool isPrimary, // 대표 이미지 여부
    required int order, // 사진 순서
  }) = _ProfilePhotoUploadRequest;

  factory ProfilePhotoUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfilePhotoUploadRequestFromJson(json);
}
