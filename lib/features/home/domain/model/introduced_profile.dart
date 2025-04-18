import 'package:atwoz_app/app/constants/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduced_profile.freezed.dart';
part 'introduced_profile.g.dart';

@freezed
class IntroducedProfile with _$IntroducedProfile {
  const factory IntroducedProfile({
    required int id,
    required String imageUrl, // imageUrl
    required List<String> hashTags, // 관련 정보들
    required String interviewContent, // 인터뷰 첫 대답
    required bool isIntroduced, // 프로필 소개 여부
    required bool isFavorite, // 좋아요 여부
    required IntroducedCategoryEnum category,
  }) = _IntroducedProfile;

  factory IntroducedProfile.fromJson(Map<String, dynamic> json) {
    // TODO: DTO 생성 시 삭제
    final categoryString = json['category'] as String;

    final categoryEnum = introducedCategoryMap.entries.firstWhere(
      (entry) => entry.value == categoryString,
    );

    return IntroducedProfile(
      id: json['id'],
      imageUrl: json['imageUrl'],
      hashTags: List<String>.from(json['hashTags']),
      interviewContent: json['interviewContent'],
      isIntroduced: json['isIntroduced'],
      isFavorite: json['isFavorite'],
      category: categoryEnum.key,
    );
  }
}
