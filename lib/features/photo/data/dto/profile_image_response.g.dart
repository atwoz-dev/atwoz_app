// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileImageResponse _$ProfileImageResponseFromJson(
  Map<String, dynamic> json,
) => _ProfileImageResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => ProfileImageData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProfileImageResponseToJson(
  _ProfileImageResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_ProfileImageData _$ProfileImageDataFromJson(Map<String, dynamic> json) =>
    _ProfileImageData(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      isPrimary: json['isPrimary'] as bool,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileImageDataToJson(_ProfileImageData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'isPrimary': instance.isPrimary,
      'order': instance.order,
    };
