import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_detail_response.freezed.dart';
part 'introduce_detail_response.g.dart';

@freezed
abstract class IntroduceDetailResponse with _$IntroduceDetailResponse {
  const factory IntroduceDetailResponse({
    required int status,
    required String code,
    required String message,
    required IntroduceDetailDTO data,
  }) = _IntroduceDetailResponse;

  factory IntroduceDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceDetailResponseFromJson(json);
}

@freezed
abstract class IntroduceDetailDTO with _$IntroduceDetailDTO {
  const factory IntroduceDetailDTO({
    required String title,
    required String content,
    String? like,
    String? profileExchangeStatus,
    required MemberBasicInfoDTO memberBasicInfo,
  }) = _IntroduceDetailDTO;

  factory IntroduceDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$IntroduceDetailDTOFromJson(json);
}

@freezed
abstract class MemberBasicInfoDTO with _$MemberBasicInfoDTO {
  const factory MemberBasicInfoDTO({
    required int memberId,
    required int age,
    required String nickname,
    required String profileImageUrl,
    required String city,
    required String district,
    required String mbti,
    required List<String> hobbies,
  }) = _MemberBasicInfoDTO;

  factory MemberBasicInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$MemberBasicInfoDTOFromJson(json);
}
