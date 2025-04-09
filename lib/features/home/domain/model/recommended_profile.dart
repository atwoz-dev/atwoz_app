import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_profile.freezed.dart';
part 'recommended_profile.g.dart';

@freezed
class RecommendedProfile with _$RecommendedProfile {
  const factory RecommendedProfile({
    @Default(0) int id,
    @Default('') String image, // imageUrl
    @Default([]) List<String> hashTags, // 종교, 취미 정보
    @Default('') String interviewContent, // 인터뷰 첫 대답
  }) = _RecommendedProfile;

  factory RecommendedProfile.fromJson(
          Map<String, dynamic> json) => // TODO: DTO 파일 생성 시 제거
      _$RecommendedProfileFromJson(json);
}
