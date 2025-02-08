import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_upload_request.freezed.dart';
part 'profile_upload_request.g.dart';

@freezed
class ProfileUploadRequest with _$ProfileUploadRequest {
  const factory ProfileUploadRequest({
    @JsonKey(name: "nickName") required String nickname,
    @JsonKey(name: "gender") required String selectedGender,
    required int age,
    @JsonKey(name: "height") required int selectedHeight,
    required int jobId,
    @JsonKey(name: "region") required String region,
    @JsonKey(name: "highestEducation") required String selectedEducation,
    required String mbti,
    @JsonKey(name: "smokingStatus") required String selectedSmoking,
    @JsonKey(name: "drinkingStatus") required String selectedDrinking,
    @JsonKey(name: "religionStatus") required String selectedReligion,
    @JsonKey(name: "hobbyIds") required List<int> selectedHobbies,
  }) = _ProfileUploadRequest;

  factory ProfileUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUploadRequestFromJson(json);
}
