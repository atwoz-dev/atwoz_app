import 'package:freezed_annotation/freezed_annotation.dart';

part 'presigned_url_response_dto.g.dart';

@JsonSerializable()
class PresignedUrlResponseDto {
  final String presignedUrl;
  final String objectUrl;

  const PresignedUrlResponseDto({
    required this.presignedUrl,
    required this.objectUrl,
  });

  factory PresignedUrlResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PresignedUrlResponseDtoFromJson(json);
}
