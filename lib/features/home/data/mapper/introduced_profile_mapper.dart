import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension IntroducedProfileMapper on IntroducedProfileDto {
  IntroducedProfile toIntroducedProfile({required bool isFavorite}) {
    return IntroducedProfile(
      id: memberId,
      imageUrl: profileImageUrl,
      hashTags: [...hobbies, mbti, Religion.parse(religion).label],
      interviewContent: interviewAnswerContent,
      isIntroduced: isIntroduced,
      isFavorite: isFavorite,
    );
  }
}
