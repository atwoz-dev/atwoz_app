import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_photo_upload_request.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfilePhotoUploadRequest {
  final List<PhotoRequest> requests;

  const ProfilePhotoUploadRequest({required this.requests});

  factory ProfilePhotoUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfilePhotoUploadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProfilePhotoUploadRequestToJson(this);
}

@JsonSerializable()
class PhotoRequest {
  final String imageUrl;

  const PhotoRequest({required this.imageUrl});

  factory PhotoRequest.fromJson(Map<String, dynamic> json) =>
      _$PhotoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoRequestToJson(this);
}
