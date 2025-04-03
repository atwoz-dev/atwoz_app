import 'package:atwoz_app/app/enum/contact_method.dart';
import 'package:atwoz_app/features/profile/data/dto/profile_detail_response.dart';
import 'package:atwoz_app/features/profile/data/repository/profile_repository.dart';
import 'package:atwoz_app/features/profile/profile_design_inspection.dart';
import 'package:riverpod/riverpod.dart';

import '../common/model.dart';

// TODO(Han): 추후 repository 를 받고 DI 로 주입 하도록 수정
class ProfileFetchUseCase {
  final Ref ref;

  const ProfileFetchUseCase(this.ref);

  Future<UserProfile> call(int id) async {
    final designInspectionPresetData = _designInspectionStatus;

    if (designInspectionPresetData != null) {
      return UserProfile(
        id: 0,
        name: '장원영',
        profileUri: 'https://picsum.photos/200/300',
        age: 20,
        mbti: 'ISTP',
        address: '서울특별시 동작구',
        hobbies: ['클라이밍', '공연 전시회 관람'],
        selfIntroductionItems: [],
        subInformationItems: [],
        matchStatus: designInspectionPresetData,
        favoriteType: FavoriteType.none,
      );
    }
    final response =
        await ref.read(profileRepositoryProvider).getProfileDetail(id);
    // TODO(Han): 실패 처리 필요 + my user id 받아오기
    return response.toModel(3);
  }
}

extension ProfileDetailResponseX on ProfileDetailResponse {
  UserProfile toModel(int myUserId) {
    final basic = basicMemberInfo;
    final currentYear = DateTime.now().year;
    return UserProfile(
      id: id,
      name: basic.nickname,
      profileUri: basic.profileImageUrl,
      age: currentYear - basic.year,
      mbti: basic.mbti,
      address: basic.region,
      hobbies: basicMemberInfo.hobbies,
      selfIntroductionItems:
          interviews.map((intro) => intro.toModel()).toList(),
      subInformationItems: [
        SubInformationData(ProfileSubInfoType.smoking, basic.smokingStatus),
        SubInformationData(ProfileSubInfoType.drinking, basic.drinkingStatus),
        SubInformationData(
          ProfileSubInfoType.education,
          basic.highestEducation,
        ),
        SubInformationData(ProfileSubInfoType.religion, basic.religion),
        SubInformationData(ProfileSubInfoType.height, '${basic.height}cm'),
        SubInformationData(ProfileSubInfoType.job, basic.job),
      ],
      matchStatus: matchInfo?.toModel(myUserId) ?? const UnMatched(),
      favoriteType: FavoriteType.none, // TODO(Han): server 구현 후 적용
    );
  }
}

extension MatchInformationX on MatchInformation {
  MatchStatus toModel(int myUserId) => switch (matchStatus) {
        ('WAITING' || 'EXPIRED') when requesterId == myUserId =>
          MatchingRequested(
            sentMessage: requestMessage ?? '',
            isExpired: matchStatus == 'EXPIRED',
          ),
        ('WAITING' || 'EXPIRED') when responderId == myUserId =>
          MatchingReceived(
            receivedMessage: responseMessage ?? '',
            isExpired: matchStatus == 'EXPIRED',
          ),
        'MATCHED' => Matched(
            sentMessage: requestMessage ?? '',
            receivedMessage: responseMessage ?? '',
            contactMethod: switch (contactType) {
              'PHONE_NUMBER' => ContactMethod.phone,
              'KAKAO' => ContactMethod.kakao,
              _ => ContactMethod.phone,
            },
            contactInfo: contact ?? '',
          ),
        'REJECTED' || _ => const UnMatched(),
      };
}

extension SelfIntroductionDataX on ProfileInterview {
  SelfIntroductionData toModel() => SelfIntroductionData(
        about: category,
        title: content,
        content: answer,
      );
}

// TODO(Han): it will be removed after design inspection
MatchStatus? get _designInspectionStatus => switch (kDebugPageType) {
      ProfileDesignInspectionType.main => const UnMatched(),
      ProfileDesignInspectionType.matchingBeforeResponse =>
        const MatchingRequested(
          sentMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
              '괜찮으시다면 저희 연락 한번 해봐요!',
        ),
      ProfileDesignInspectionType.matchingExpiredOrDenied =>
        const MatchingRequested(
          sentMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
              '괜찮으시다면 저희 연락 한번 해봐요!',
          isExpired: true,
        ),
      ProfileDesignInspectionType.messageReceived => const MatchingReceived(
          receivedMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
              '괜찮으시다면 저희 연락 한번 해봐요!',
        ),
      ProfileDesignInspectionType.matched => const Matched(
          sentMessage: '''
저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요
괜찮으시다면 저희 연락 한번 해봐요!
''',
          receivedMessage: '''
프로필을 보고 저와 결이 같다고 생각했어요
조금 더 알아가고 싶습니다😄
괜찮으시다면 아이스티 마시면서 같이 얘기나눠봐요:)
''',
          contactMethod: ContactMethod.kakao,
          contactInfo: 'jinjer9817',
        ),
      null => null,
    };
