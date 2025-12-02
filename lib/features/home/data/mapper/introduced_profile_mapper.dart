import 'package:deepple_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:deepple_app/features/home/home.dart';
import 'package:deepple_app/features/profile/domain/common/enum.dart';

extension IntroducedProfileMapper on IntroducedProfileDto {
  IntroducedProfile toIntroducedProfile(List<String> tags) {
    return IntroducedProfile(
      memberId: memberId,
      profileImageUrl: profileImageUrl,
      tags: tags,
      interviewContent: interviewAnswerContent,
      isIntroduced: isIntroduced,
      favoriteType: FavoriteType.tryParse(likeLevel),
    );
  }
}
