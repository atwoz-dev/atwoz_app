import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    required UserProfileInfo userInformation,
    required MatchStatus matchStatus,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        userInformation: UserProfileInfo(
          name: '장원영',
          profileUri: 'https://picsum.photos/200/300',
          age: 20,
          mbti: 'ISTP',
          address: '서울특별시 동작구',
          hobbies: ['클라이밍', '공연 전시회 관람'],
          selfIntroductionItems: _selfIntroductionList,
          subInformationItems: _profileSubInforamtionList,
        ),
        matchStatus: UnMatched(sentMessage: ''),
      );

  UnMatched? get maybeUnMatched =>
      matchStatus is UnMatched ? matchStatus as UnMatched : null;
}

class UserProfileInfo {
  const UserProfileInfo({
    required this.name,
    required this.profileUri,
    required this.age,
    required this.mbti,
    required this.address,
    required this.hobbies,
    required this.selfIntroductionItems,
    required this.subInformationItems,
  });

  final String name;
  final String profileUri;
  final int age;
  final String mbti;
  final String address;
  final List<String> hobbies;
  final List<SelfIntroductionData> selfIntroductionItems;
  final List<SubInformationData> subInformationItems;
}

// TODO(Han): remove below code after checking how to get this information
const _selfIntroductionList = [
  SelfIntroductionData('나', '내가 생각하는 나의 반전 매력은 이거야.'),
  SelfIntroductionData('관계', '내가 생각하는 나의 반전 매력은 이거야.'),
  SelfIntroductionData('연인', '내가 생각하는 나의 반전 매력은 이거야.'),
  SelfIntroductionData('연인', '내가 생각하는 나의 반전 매력은 이거야.'),
  SelfIntroductionData('연인', '내가 생각하는 나의 반전 매력은 이거야.'),
  SelfIntroductionData('연인', '내가 생각하는 나의 반전 매력은 이거야.'),
];

const _profileSubInforamtionList = [
  SubInformationData(
    Icons.question_mark_rounded,
    '고등학교 졸업',
  ),
  SubInformationData(
    Icons.question_mark_rounded,
    '사회적 음주',
  ),
  SubInformationData(
    Icons.question_mark_rounded,
    '취업 준비중',
  ),
  SubInformationData(
    Icons.question_mark_rounded,
    '전자담배',
  ),
  SubInformationData(
    Icons.question_mark_rounded,
    '170cm',
  ),
  SubInformationData(
    Icons.question_mark_rounded,
    '기독교',
  ),
];

class SubInformationData {
  const SubInformationData(this.iconData, this.information);

  final IconData iconData;
  final String information;
}

class SelfIntroductionData {
  const SelfIntroductionData(this.about, this.introduction);

  final String about;
  final String introduction;
}

sealed class MatchStatus {
  const MatchStatus();
}

class Matched extends MatchStatus {
  const Matched();
  // TODO(Han): matching 되었을 때, 볼 수 있는 정보
}

class UnMatched extends MatchStatus {
  const UnMatched({
    required this.sentMessage,
  });

  final String sentMessage;
}

class Matching extends UnMatched {
  const Matching({
    required super.sentMessage,
    required this.receivedMessage,
  });

  final String receivedMessage;
}

class MatchRejected extends UnMatched {
  const MatchRejected({required super.sentMessage});
}
