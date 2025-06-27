import 'package:atwoz_app/features/introduce/domain/provider/self_introduce_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_list_response.freezed.dart';
part 'introduce_list_response.g.dart';

@freezed
class IntroduceListItemResponse with _$IntroduceListItemResponse {
  const factory IntroduceListItemResponse({
    required String? nickname,
    required String? profileUrl,
    required int yearOfBirth,
    required String title,
    required int id,
  }) = _IntroduceListItemResponse;

  factory IntroduceListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceListItemResponseFromJson(json);

  const IntroduceListItemResponse._();

  SelfIntroduceListData toModel() => SelfIntroduceListData(
        id: id,
        nickname: nickname ?? '',
        profileUrl: profileUrl ?? '',
        yearOfBirth: yearOfBirth,
        title: title,
      );
}

@freezed
class IntroduceMemberBasicInfoResponse with _$IntroduceMemberBasicInfoResponse {
  const factory IntroduceMemberBasicInfoResponse({
    required int memberId,
    required String nickname,
    required int age,
    required String profileImageUrl,
    required String city,
    required String district,
    required String mbti,
    required List<String> hobbies,
  }) = _IntroduceMemberBasicInfoResponse;

  factory IntroduceMemberBasicInfoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$IntroduceMemberBasicInfoResponseFromJson(json);

  const IntroduceMemberBasicInfoResponse._();

  SelfIntroduceMemberBasicInfo toModel() => SelfIntroduceMemberBasicInfo(
        memberId: memberId,
        nickname: nickname,
        age: age,
        profileImageUrl: profileImageUrl,
        city: city,
        district: district,
        mbti: mbti,
        hobbies: hobbies,
      );
}

@freezed
class IntroduceResponse with _$IntroduceResponse {
  const factory IntroduceResponse({
    required IntroduceMemberBasicInfoResponse memberBasicInfo,
    required String like,
    required String title,
    required String content,
    required String profileExchangeStatus,
  }) = _IntroduceResponse;

  factory IntroduceResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroduceResponseFromJson(json);
}
