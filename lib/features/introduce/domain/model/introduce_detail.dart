import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_detail.freezed.dart';

@freezed
abstract class IntroduceDetail with _$IntroduceDetail {
  const factory IntroduceDetail({
    required String title,
    required String content,
    required MemberBasicInfo memberBasicInfo,
    FavoriteType? like,
    required ProfileExchangeStatus profileExchangeStatus,
  }) = _IntroduceDetail;
}

@freezed
abstract class MemberBasicInfo with _$MemberBasicInfo {
  const factory MemberBasicInfo({
    required int memberId,
    required int age,
    required String nickname,
    required String profileImageUrl,
    required String city,
    required String district,
    required String mbti,
    required List<String> hobbies,
    required Gender gender,
  }) = _MemberBasicInfo;
}
