// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_photo_upload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfilePhotoUploadRequest _$ProfilePhotoUploadRequestFromJson(
  Map<String, dynamic> json,
) => _ProfilePhotoUploadRequest(
  id: json['id'] as String?,
  isPrimary: json['isPrimary'] as bool,
  order: (json['order'] as num).toInt(),
);

Map<String, dynamic> _$ProfilePhotoUploadRequestToJson(
  _ProfilePhotoUploadRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'isPrimary': instance.isPrimary,
  'order': instance.order,
};
