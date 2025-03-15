import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduced_profile.freezed.dart';
part 'introduced_profile.g.dart';

@freezed
class IntroducedProfile with _$IntroducedProfile {
  const factory IntroducedProfile({
    @Default('') String image, // imageUrl
    @Default([]) List<String> hashTags, // 관련 정보들
    @Default('') String interview, // 인터뷰 첫 대답
  }) = _IntroducedProfile;

  factory IntroducedProfile.fromJson(Map<String, dynamic> json) =>
      _$IntroducedProfileFromJson(json);
}
