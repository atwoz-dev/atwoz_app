import 'package:deepple_app/app/constants/enum.dart';
import 'package:deepple_app/app/constants/region_data.dart';
import 'package:deepple_app/app/enum/contact_method.dart';
import 'package:deepple_app/app/provider/provider.dart';
import 'package:deepple_app/features/profile/data/dto/profile_detail_response.dart';
import 'package:deepple_app/features/profile/data/repository/profile_repository.dart';
import 'package:deepple_app/features/profile/domain/common/model.dart';
import 'package:deepple_app/features/profile/domain/common/enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileFetchUseCase {
  final Ref ref;

  const ProfileFetchUseCase(this.ref);

  Future<UserProfile> call(int id) async {
    final response = await ref
        .read(profileRepositoryProvider)
        .getProfileDetail(id);
    final myUserId = ref.read(globalProvider).profile.myUserId;

    return response.toModel(myUserId);
  }
}

extension ProfileDetailResponseX on ProfileDetailResponse {
  UserProfile toModel(int myUserId) {
    final basic = memberInfo;
    return UserProfile(
      id: basic.id,
      name: basic.nickname,
      profileUri: basic.profileImageUrl,
      age: basic.age ?? 0,
      mbti: basic.mbti,
      address: addressData.getLocationString(basic.city, basic.district),
      hobbies: basic.hobbies.map((hobby) => Hobby.parse(hobby)).toList(),
      selfIntroductionItems: interviews
          .map((intro) => intro.toModel())
          .toList(),
      smokingStatus: SmokingStatus.parse(basic.smokingStatus),
      drinkingStatus: DrinkingStatus.parse(basic.drinkingStatus),
      educationLevel: EducationLevel.parse(basic.highestEducation),
      religion: Religion.parse(basic.religion),
      height: basic.height,
      job: Job.parse(basic.job),
      matchStatus: matchInfo?.toModel(myUserId) ?? const UnMatched(),
      profileExchangeInfo: profileExchangeInfo,
      favoriteType: FavoriteType.tryParse(basic.likeLevel),
    );
  }
}

extension MatchInformationX on MatchInformation {
  MatchStatus toModel(int myUserId) => switch (matchStatus) {
    ('WAITING' || 'EXPIRED') when requesterId == myUserId => MatchingRequested(
      matchId: matchId,
      sentMessage: requestMessage ?? '',
      isExpired: matchStatus == 'EXPIRED',
    ),
    ('WAITING' || 'EXPIRED') when responderId == myUserId => MatchingReceived(
      matchId: matchId,
      receivedMessage: requestMessage ?? '',
      isExpired: matchStatus == 'EXPIRED',
    ),
    'MATCHED' => Matched(
      matchId: matchId,
      sentMessage: requestMessage ?? '',
      receivedMessage: responseMessage ?? '',
      contactMethod: switch (contactType) {
        'PHONE_NUMBER' => ContactMethod.phone,
        'KAKAO' => ContactMethod.kakao,
        _ => ContactMethod.phone,
      },
      contactInfo: contact ?? '',
    ),
    'REJECTED' ||
    _ => MatchRejected(matchId: matchId, sentMessage: requestMessage ?? ''),
  };
}

extension SelfIntroductionDataX on ProfileInterview {
  SelfIntroductionData toModel() => SelfIntroductionData(
    about: InterviewCategory.parse(category),
    title: content,
    content: answer,
  );
}
