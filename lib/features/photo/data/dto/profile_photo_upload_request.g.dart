// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_photo_upload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfilePhotoUploadRequest _$ProfilePhotoUploadRequestFromJson(
  Map<String, dynamic> json,
) => ProfilePhotoUploadRequest(
  requests: (json['requests'] as List<dynamic>)
      .map((e) => PhotoRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProfilePhotoUploadRequestToJson(
  ProfilePhotoUploadRequest instance,
) => <String, dynamic>{
  'requests': instance.requests.map((e) => e.toJson()).toList(),
};

PhotoRequest _$PhotoRequestFromJson(Map<String, dynamic> json) =>
    PhotoRequest(imageUrl: json['imageUrl'] as String);

Map<String, dynamic> _$PhotoRequestToJson(PhotoRequest instance) =>
    <String, dynamic>{'imageUrl': instance.imageUrl};
