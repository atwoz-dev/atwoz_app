import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_profile.freezed.dart';
part 'recommended_profile.g.dart';

@freezed
class RecommendedProfile with _$RecommendedProfile {
  const factory RecommendedProfile({
    @Default('') String image, // imageUrl
    @Default([]) List<String> hashTags, // 관련 정보들
    @Default('') String interview, // 인터뷰 첫 대답
  }) = _RecommendedProfile;

  factory RecommendedProfile.fromJson(
          Map<String, dynamic> json) => // TODO: DTO 파일 생성 시 제거
      _$RecommendedProfileFromJson(json);
}
