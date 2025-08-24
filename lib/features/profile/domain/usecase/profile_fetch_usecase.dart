import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/enum/contact_method.dart';
import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';
import 'package:atwoz_app/features/profile/data/dto/profile_detail_response.dart';
import 'package:atwoz_app/features/profile/data/repository/profile_repository.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:atwoz_app/features/profile/profile_design_inspection.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileFetchUseCase {
  final Ref ref;

  const ProfileFetchUseCase(this.ref);

  Future<UserProfile> call(int id) async {
    final designInspectionPresetData = _designInspectionStatus;

    if (designInspectionPresetData != null) {
      return UserProfile(
        id: 1,
        name: '장원영',
        profileUri: 'https://picsum.photos/200/300',
        age: 20,
        mbti: 'ISTP',
        address: '서울특별시 동작구',
        hobbies: ['클라이밍', '공연 전시회 관람'],
        selfIntroductionItems: [],
        smokingStatus: SmokingStatus.none,
        drinkingStatus: DrinkingStatus.none,
        educationLevel: EducationLevel.other,
        religion: Religion.none,
        region: Region.seoul,
        height: 165.0,
        job: Job.artsAndSports,
        matchStatus: designInspectionPresetData,
        profileExchangeStatus: ProfileExchangeStatus.none,
        favoriteType: FavoriteType.interested,
      );
    }
    final response =
        await ref.read(profileRepositoryProvider).getProfileDetail(id);
    final myUserId = ref.read(globalUserProfileNotifierProvider).myUserId;

    // TODO(Han): 실패 처리 필요 + my user id 받아오기
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
      address: basic.region ?? '',
      hobbies: basic.hobbies,
      selfIntroductionItems:
          interviews.map((intro) => intro.toModel()).toList(),
      smokingStatus: SmokingStatus.parse(basic.smokingStatus),
      drinkingStatus: DrinkingStatus.parse(basic.drinkingStatus),
      educationLevel: EducationLevel.parse(basic.highestEducation),
      religion: Religion.parse(basic.religion),
      region: Region.parse(basic.region),
      height: basic.height.toDouble(),
      job: Job.parse(basic.job),
      matchStatus: matchInfo?.toModel(myUserId) ?? const UnMatched(),
      // TOOD(Han): profileExchangeStatus는 아직 사용하지 않음
      profileExchangeStatus: profileExchangeInfo?.profileExchangeStatus ??
          ProfileExchangeStatus.none,
      favoriteType: FavoriteType.tryParse(basic.likeLevel),
    );
  }
}

extension MatchInformationX on MatchInformation {
  MatchStatus toModel(int myUserId) => switch (matchStatus) {
        ('WAITING' || 'EXPIRED') when requesterId == myUserId =>
          MatchingRequested(
            matchId: matchId,
            sentMessage: requestMessage ?? '',
            isExpired: matchStatus == 'EXPIRED',
          ),
        ('WAITING' || 'EXPIRED') when responderId == myUserId =>
          MatchingReceived(
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
        'REJECTED' || _ => MatchRejected(
            matchId: matchId,
            sentMessage: requestMessage ?? '',
          ),
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
          matchId: 0,
          sentMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
              '괜찮으시다면 저희 연락 한번 해봐요!',
        ),
      ProfileDesignInspectionType.matchingExpiredOrDenied =>
        const MatchingRequested(
          matchId: 0,
          sentMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
              '괜찮으시다면 저희 연락 한번 해봐요!',
          isExpired: true,
        ),
      ProfileDesignInspectionType.messageReceived => const MatchingReceived(
          matchId: 0,
          receivedMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요\n'
              '괜찮으시다면 저희 연락 한번 해봐요!',
        ),
      ProfileDesignInspectionType.matched => const Matched(
          matchId: 0,
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
