import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

extension IntroducedProfileMapper on IntroducedProfileDto {
  IntroducedProfile toIntroducedProfile() {
    return IntroducedProfile(
      memberId: memberId,
      profileImageUrl: profileImageUrl,
      tags: [], // usecase에서 설정
      hobbies: hobbies.map((e) => Hobby.parseFromData(e)).toList(),
      religion: Religion.parse(religion),
      mbti: mbti,
      interviewContent: interviewAnswerContent,
      isIntroduced: isIntroduced,
      favoriteType: FavoriteType.tryParse(likeLevel),
    );
  }
}
