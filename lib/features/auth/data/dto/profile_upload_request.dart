import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_upload_request.freezed.dart';
part 'profile_upload_request.g.dart';

@freezed
class ProfileUploadRequest with _$ProfileUploadRequest {
  const factory ProfileUploadRequest({
    @JsonKey(name: "nickName") required String nickname,
    @JsonKey(name: "gender") required String selectedGender,
    required int yearOfBirth,
    @JsonKey(name: "height") required int selectedHeight,
    @JsonKey(name: "district") required String region,
    @JsonKey(name: "highestEducation") required String selectedEducation,
    required String mbti,
    @JsonKey(name: "smokingStatus") required String selectedSmoking,
    @JsonKey(name: "drinkingStatus") required String selectedDrinking,
    @JsonKey(name: "religion") required String selectedReligion,
    @JsonKey(name: "hobbies") required List<String> selectedHobbies,
    @JsonKey(name: "job") required String selectedJob,
  }) = _ProfileUploadRequest;

  factory ProfileUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUploadRequestFromJson(json);
}
