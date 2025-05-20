import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/home.dart';

extension IntroducedProfileMapper on IntroducedProfileDto {
  IntroducedProfile toIntroducedProfile() {
    return IntroducedProfile(
      id: memberId,
      imageUrl: profileImageUrl ?? '',
      hashTags: tags.map((tag) => tag ?? '').toList(),
      interviewContent: interviewAnswerContent,
      isIntroduced: isIntroduced,
      isFavorite: false,
    );
  }
}
