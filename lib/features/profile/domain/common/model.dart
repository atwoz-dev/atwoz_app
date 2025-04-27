import 'package:atwoz_app/app/enum/enum.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum.dart';

part 'model.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String name,
    required String profileUri,
    required int age,
    required String mbti,
    required String address,
    required List<String> hobbies,
    required List<SelfIntroductionData> selfIntroductionItems,
    required SmokingStatus smokingStatus,
    required DrinkingStatus drinkingStatus,
    required EducationLevel educationLevel,
    required Religion religion,
    required Region region,
    required double height,
    required String job,
    required MatchStatus matchStatus,
    required FavoriteType? favoriteType,
  }) = _UserProfile;
}

class SelfIntroductionData {
  const SelfIntroductionData({
    required this.about,
    required this.title,
    required this.content,
  });

  final String about;
  final String title;
  final String content;
}

sealed class MatchStatus extends Equatable {
  const MatchStatus({required this.matchId});

  final int matchId;

  @override
  List<Object> get props => [matchId];
}

class Matched extends MatchStatus {
  const Matched({
    required super.matchId,
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
        matchId,
        sentMessage,
        receivedMessage,
        contactMethod,
        contactInfo,
      ];
}

class UnMatched extends MatchStatus {
  const UnMatched() : super(matchId: 0);
}

abstract class Matching extends MatchStatus {
  const Matching({
    required super.matchId,
    required this.isExpired,
  });

  final bool isExpired;

  @override
  List<Object> get props => [matchId, isExpired];
}

class MatchingRequested extends Matching {
  const MatchingRequested({
    required super.matchId,
    required this.sentMessage,
    super.isExpired = false,
  });

  final String sentMessage;

  @override
  List<Object> get props => [
        matchId,
        sentMessage,
        isExpired,
      ];
}

class MatchRejected extends MatchingRequested {
  const MatchRejected({
    required super.matchId,
    required super.sentMessage,
  }) : super(isExpired: true);
}

class MatchingReceived extends Matching {
  const MatchingReceived({
    required super.matchId,
    required this.receivedMessage,
    super.isExpired = false,
  });

  final String receivedMessage;

  @override
  List<Object> get props => [
        matchId,
        receivedMessage,
        isExpired,
      ];
}

enum ProfileErrorType {
  network('네트워크 연결에 실패했습니다.'),
  unknown('알 수 없는 오류가 발생했습니다.');

  const ProfileErrorType(this.label);
  final String label;
}
