import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduced_profile.freezed.dart';
part 'introduced_profile.g.dart';

@freezed
abstract class IntroducedProfile with _$IntroducedProfile {
  const factory IntroducedProfile({
    @Default(0) int id,
    @Default('') String imageUrl, // imageUrl
    @Default([]) List<String> hashTags, // 관련 정보들
    @Default('') String interviewContent, // 인터뷰 첫 대답
    @Default(false) bool isIntroduced, // 프로필 소개 여부
    @Default(false) bool isFavorite, // 좋아요 여부
    @Default("상위 5%") String category,
  }) = _IntroducedProfile;

  factory IntroducedProfile.fromJson(Map<String, dynamic> json) =>
      _$IntroducedProfileFromJson(json);
}
