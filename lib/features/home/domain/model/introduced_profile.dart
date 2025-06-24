import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduced_profile.freezed.dart';

@freezed
class IntroducedProfile with _$IntroducedProfile {
  const factory IntroducedProfile({
    required int memberId,
    required String profileImageUrl, // imageUrl
    required List<String> tags, // 취미 + 종교 + mbti
    required List<Hobby> hobbies, // 취미들
    required Religion religion, // 종교
    required String mbti, // mbti
    required String interviewContent, // 인터뷰 첫 대답
    required bool isIntroduced, // 프로필 소개 여부
    required FavoriteType? favoriteType, // 좋아요 여부
  }) = _IntroducedProfile;
}
