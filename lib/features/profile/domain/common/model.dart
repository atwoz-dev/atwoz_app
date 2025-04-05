import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    required List<SubInformationData> subInformationItems,
    required MatchStatus matchStatus,
    required FavoriteType favoriteType,
  }) = _UserProfile;
}

class SubInformationData {
  const SubInformationData(this.type, this.information);

  final ProfileSubInfoType type;
  final String information;
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
  const Matching({required this.isExpired});

  final bool isExpired;
}

class MatchingRequested extends Matching {
  const MatchingRequested({
    required this.sentMessage,
    super.isExpired = false,
  });

  final String sentMessage;

  @override
  List<Object> get props => [sentMessage, isExpired];
}

class MatchingReceived extends Matching {
  const MatchingReceived({
    required this.receivedMessage,
    super.isExpired = false,
  });

  final String receivedMessage;

  @override
  List<Object> get props => [receivedMessage, isExpired];
}

enum ProfileSubInfoType {
  smoking(IconPath.smoking),
  drinking(IconPath.wineglass),
  education(IconPath.school),
  religion(IconPath.bless),
  height(IconPath.ruler),
  job(IconPath.business);

  final String iconPath;

  const ProfileSubInfoType(this.iconPath);
}

enum FavoriteType {
  none(''),
  general(IconPath.generalFavorite),
  strong(IconPath.strongFavorite);

  final String path;
  const FavoriteType(this.path);

  bool get isFavorite => this != none;
}
