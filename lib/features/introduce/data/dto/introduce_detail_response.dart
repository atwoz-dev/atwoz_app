import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_detail_response.freezed.dart';
part 'introduce_detail_response.g.dart';

@freezed
abstract class IntroduceDetailResponse with _$IntroduceDetailResponse {
  const factory IntroduceDetailResponse({
    required int status,
    required String code,
    required String message,
    required IntroduceDetailData data,
  }) = _IntroduceDetailResponse;

  factory IntroduceDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceDetailResponseFromJson(json);
}

@freezed
abstract class IntroduceDetailData with _$IntroduceDetailData {
  const factory IntroduceDetailData({
    required String title,
    required String content,
    String? like,
    String? profileExchangeStatus,
    required MemberBasicInfo memberBasicInfo,
  }) = _IntroduceDetailData;

  factory IntroduceDetailData.fromJson(Map<String, dynamic> json) =>
      _$IntroduceDetailDataFromJson(json);
}

@freezed
abstract class MemberBasicInfo with _$MemberBasicInfo {
  const factory MemberBasicInfo({
    required int memberId,
    required int age,
    required String nickname,
    required String city,
    required String district,
    required String mbti,
    required List<String> hobbies,
  }) = _MemberBasicInfo;

  factory MemberBasicInfo.fromJson(Map<String, dynamic> json) =>
      _$MemberBasicInfoFromJson(json);
}
