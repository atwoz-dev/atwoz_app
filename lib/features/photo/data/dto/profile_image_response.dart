import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_response.freezed.dart';
part 'profile_image_response.g.dart';

@freezed
abstract class ProfileImageResponse with _$ProfileImageResponse {
  const factory ProfileImageResponse({
    required int status,
    required String code,
    required String message,
    required List<ProfileImageData> data,
  }) = _ProfileImageResponse;

  factory ProfileImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageResponseFromJson(json);
}

@freezed
abstract class ProfileImageData with _$ProfileImageData {
  const factory ProfileImageData({
    required int id,
    required String url,
    required bool isPrimary,
    required int order,
  }) = _ProfileImageData;

  factory ProfileImageData.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageDataFromJson(json);
}
