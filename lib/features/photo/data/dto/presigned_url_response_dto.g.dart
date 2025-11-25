// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_url_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PresignedUrlResponseDto _$PresignedUrlResponseDtoFromJson(
  Map<String, dynamic> json,
) => PresignedUrlResponseDto(
  presignedUrl: json['presignedUrl'] as String,
  objectUrl: json['objectUrl'] as String,
);

Map<String, dynamic> _$PresignedUrlResponseDtoToJson(
  PresignedUrlResponseDto instance,
) => <String, dynamic>{
  'presignedUrl': instance.presignedUrl,
  'objectUrl': instance.objectUrl,
};
