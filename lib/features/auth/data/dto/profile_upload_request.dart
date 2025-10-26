import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_upload_request.freezed.dart';
part 'profile_upload_request.g.dart';

@freezed
abstract class ProfileUploadRequest with _$ProfileUploadRequest {
  const factory ProfileUploadRequest({
    required String nickname,
    required String gender,
    required int yearOfBirth,
    required int height,
    required String job,
    required String district,
    required String highestEducation,
    required String mbti,
    required String smokingStatus,
    required String drinkingStatus,
    required String religion,
    required List<String> hobbies,
  }) = _ProfileUploadRequest;

  factory ProfileUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUploadRequestFromJson(json);
}
