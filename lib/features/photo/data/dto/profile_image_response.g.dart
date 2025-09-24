// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImageResponseImpl _$$ProfileImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileImageResponseImpl(
      status: (json['status'] as num).toInt(),
      code: json['code'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProfileImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileImageResponseImplToJson(
        _$ProfileImageResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ProfileImageDataImpl _$$ProfileImageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileImageDataImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      isPrimary: json['isPrimary'] as bool,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$ProfileImageDataImplToJson(
        _$ProfileImageDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'isPrimary': instance.isPrimary,
      'order': instance.order,
    };
