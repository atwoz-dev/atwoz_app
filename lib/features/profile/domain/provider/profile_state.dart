import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    required UserProfile profile,
    required MatchStatus matchStatus,
    required String myUserName,
    required bool registeredContact,
    required int hartPoint,
    required String message,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        profile: const UserProfile(
          name: '장원영',
          profileUri: 'https://picsum.photos/200/300',
          age: 20,
          mbti: 'ISTP',
          address: '서울특별시 동작구',
          hobbies: ['클라이밍', '공연 전시회 관람'],
          selfIntroductionItems: _selfIntroductionList,
          subInformationItems: _profileSubInforamtionList,
        ),
        matchStatus: MatchingRequested(
          sentMessage: '저와 비슷한 가치관을 가지고 계셔서 호감이 생겼어요'
              '괜찮으시다면 저희 연락 한번 해봐요!',
          requestedDateTime: DateTime.now().subtract(const Duration(days: 4)),
        ),
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
        // TODO(Han): 추후 Global State에서 얻어오는 방식으로 변경 (내 정보)
        myUserName: '은우',
        registeredContact: false,
        hartPoint: 30,
        message: '',
      );
}

class UserProfile {
  const UserProfile({
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

sealed class MatchStatus extends Equatable {
  const MatchStatus();
}

class Matched extends MatchStatus {
  const Matched({
    required this.sentMessage,
    required this.receivedMessage,
    required this.contactMethod,
    required this.contactInfo,
  });

  final String sentMessage;
  final String receivedMessage;
  final ContactMethod contactMethod;
  final String contactInfo;

  @override
  List<Object> get props => [
        sentMessage,
        receivedMessage,
        contactMethod,
        contactInfo,
      ];
}

class UnMatched extends MatchStatus {
  const UnMatched();

  @override
  List<Object> get props => [];
}

abstract class Matching extends MatchStatus {
  const Matching();

  bool get isExpired;
}

class MatchingRequested extends Matching {
  const MatchingRequested({
    required this.sentMessage,
    required this.requestedDateTime,
  });

  final String sentMessage;
  final DateTime requestedDateTime;

  @override
  List<Object> get props => [sentMessage, requestedDateTime];

  @override
  bool get isExpired =>
      requestedDateTime.isBefore(DateTime.now().subtract(_expiredDuration));
}

class MatchingReceived extends Matching {
  const MatchingReceived({
    required this.receivedMessage,
    required this.receivedDateTime,
  });

  final String receivedMessage;
  final DateTime receivedDateTime;

  @override
  List<Object> get props => [receivedMessage, receivedDateTime];

  @override
  bool get isExpired =>
      receivedDateTime.isBefore(DateTime.now().subtract(_expiredDuration));
}

const _expiredDuration = Duration(days: 3);

enum ContactMethod {
  phone('휴대폰 번호'),
  kakao('카카오톡 ID');

  final String label;

  const ContactMethod(this.label);
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
