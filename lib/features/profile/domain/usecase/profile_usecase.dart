import 'package:atwoz_app/app/constants/constants.dart';

import '../common/model.dart';

// TODO(Han): 추후 repository 를 받고 DI 로 주입 하도록 수정
class ProfileFetchUseCase {
  static Future<UserProfile?> call() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    return UserProfile(
      name: '장원영',
      profileUri: 'https://picsum.photos/200/300',
      age: 20,
      mbti: 'ISTP',
      address: '서울특별시 동작구',
      hobbies: ['클라이밍', '공연 전시회 관람'],
      selfIntroductionItems: _selfIntroductionList,
      subInformationItems: _profileSubInforamtionList,
      matchStatus: MatchingRequested(
        sentMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요'
            '괜찮으시다면 저희 연락 한번 해봐요!',
        requestedDateTime: DateTime.now().subtract(const Duration(days: 4)),
      ),
      favoriteType: FavoriteType.none,
      // TODO(Han): UI test용 데이터 API 연동 후 제거 필요
      // matchStatus: MatchingReceived(
      //   receivedMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요'
      //       '괜찮으시다면 저희 연락 한번 해봐요!',
      //   receivedDateTime: DateTime.now(),
      // ),
      // matchStatus: UnMatched(),
      // matchStatus: Matched(
      //   sentMessage: 'sentMessage',
      //   receivedMessage: 'receivedMessage',
      //   contactMethod: ContactMethod.kakao,
      //   contactInfo: 'contactInfo',
      // ),
    );
  }
}

// TODO(Han): remove below code after checking how to get this information
const _selfIntroductionList = [
  SelfIntroductionData(
    about: '나',
    title: '😊 내가 생각하는 나의 반전 매력은 이거야',
    content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
  ),
  SelfIntroductionData(
    about: '관계',
    title: '😍 내가 생각하는 나의 반전 매력은 이거야',
    content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
  ),
  SelfIntroductionData(
    about: '연인',
    title: '😅 내가 생각하는 나의 반전 매력은 이거야',
    content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
  ),
  SelfIntroductionData(
    about: '연인',
    title: '🥲 내가 생각하는 나의 반전 매력은 이거야',
    content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
  ),
  SelfIntroductionData(
    about: '연인',
    title: '🤔 내가 생각하는 나의 반전 매력은 이거야',
    content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
  ),
  SelfIntroductionData(
    about: '연인',
    title: '😒 내가 생각하는 나의 반전 매력은 이거야',
    content:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
  ),
];

const _profileSubInforamtionList = [
  SubInformationData(
    IconPath.school,
    '고등학교 졸업',
  ),
  SubInformationData(
    IconPath.wineglass,
    '사회적 음주',
  ),
  SubInformationData(
    IconPath.business,
    '취업 준비중',
  ),
  SubInformationData(
    IconPath.smoking,
    '전자담배',
  ),
  SubInformationData(
    IconPath.ruler,
    '170cm',
  ),
  SubInformationData(
    IconPath.bless,
    '기독교',
  ),
];
