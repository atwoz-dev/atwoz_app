import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_detail_response.freezed.dart';
part 'profile_detail_response.g.dart';

@freezed
class ProfileDetailResponse with _$ProfileDetailResponse {
  const factory ProfileDetailResponse({
    required int id,
    required BasicMemberInformation basicMemberInfo,
    required MatchInformation? matchInfo,
    @Default([]) List<ProfileInterview> interviews,
  }) = _ProfileDetailResponse;

  factory ProfileDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailResponseFromJson(json);
}

@freezed
class BasicMemberInformation with _$BasicMemberInformation {
  const factory BasicMemberInformation({
    required String nickname,
    required String profileImageUrl,
    @JsonKey(name: 'age') required int year,
    required String gender,
    required int height,
    required String job,
    required List<String> hobbies,
    required String mbti,
    required String region,
    required String smokingStatus,
    required String drinkingStatus,
    required String highestEducation,
    required String religion,
  }) = _BasicMemberInformation;

  factory BasicMemberInformation.fromJson(Map<String, dynamic> json) =>
      _$BasicMemberInformationFromJson(json);
}

@freezed
class MatchInformation with _$MatchInformation {
  const factory MatchInformation({
    required int matchId,
    required int requesterId,
    required int responderId,
    required String? requestMessage,
    required String? responseMessage,
    required String matchStatus,
    required String? contactType,
    required String? contact,
  }) = _MatchInformation;

  factory MatchInformation.fromJson(Map<String, dynamic> json) =>
      _$MatchInformationFromJson(json);
}

@freezed
class ProfileInterview with _$ProfileInterview {
  const factory ProfileInterview({
    required String content,
    required String category,
    required String answer,
  }) = _ProfileInterview;

  factory ProfileInterview.fromJson(Map<String, dynamic> json) =>
      _$ProfileInterviewFromJson(json);
}
