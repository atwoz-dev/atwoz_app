import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String name,
    required String profileUri,
    required int age,
    required String mbti,
    required String address,
    required List<String> hobbies,
    required List<SelfIntroductionData> selfIntroductionItems,
    required List<SubInformationData> subInformationItems,
    required MatchStatus matchStatus,
    required FavoriteType favoriteType,
  }) = _UserProfile;
}

class SubInformationData {
  const SubInformationData(this.iconPath, this.information);

  final String iconPath;
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

enum FavoriteType {
  none(''),
  general(IconPath.generalFavorite),
  strong(IconPath.strongFavorite);

  final String path;
  const FavoriteType(this.path);

  bool get isFavorite => this != none;
}

const _expiredDuration = Duration(days: 3);
