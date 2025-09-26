// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_photo_upload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilePhotoUploadRequestImpl _$$ProfilePhotoUploadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfilePhotoUploadRequestImpl(
      id: json['id'] as String?,
      isPrimary: json['isPrimary'] as bool,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$$ProfilePhotoUploadRequestImplToJson(
        _$ProfilePhotoUploadRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isPrimary': instance.isPrimary,
      'order': instance.order,
    };
