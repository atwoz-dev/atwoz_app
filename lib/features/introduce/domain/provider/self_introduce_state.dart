import 'package:freezed_annotation/freezed_annotation.dart';

part 'self_introduce_state.freezed.dart';

enum SelfIntroduceListErrorType {
  network,
  validation,
}

// @freezed
// class FavoriteListState with _$FavoriteListState {
//   const factory FavoriteListState({
//     @Default(FavoriteListData()) FavoriteListData myFavoriteUsers,
//     @Default(FavoriteListData()) FavoriteListData favoriteMeUsers,
//     @Default(false) bool isLoaded,
//     FavoriteListErrorType? error,
//   }) = _FavoriteListState;

//   const FavoriteListState._();

//   factory FavoriteListState.initial() => const FavoriteListState();
// }

@freezed
class SelfIntroduceState with _$SelfIntroduceState {
  const factory SelfIntroduceState({
    @Default([]) List<SelfIntroduceListData> introduceList,
    @Default(false) bool isLoading,
    @Default(false) bool isLoaded,
    @Default(false) bool hasMore,
    SelfIntroduceListErrorType? error,
  }) = _SelfIntroduceState;

  const SelfIntroduceState._();

  factory SelfIntroduceState.initial() => const SelfIntroduceState();
}

@freezed
class SelfIntroduceRegisterState with _$SelfIntroduceRegisterState {
  const factory SelfIntroduceRegisterState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    String? error,
  }) = _SelfIntroduceRegisterState;

  const SelfIntroduceRegisterState._();

  factory SelfIntroduceRegisterState.initial() =>
      const SelfIntroduceRegisterState();
}

class SelfIntroduceListData {
  final int id;
  final String nickname;
  final String profileUrl;
  final int yearOfBirth;
  final String title;

  const SelfIntroduceListData({
    this.id = 0,
    this.nickname = '',
    this.profileUrl = '',
    this.yearOfBirth = 0,
    this.title = '',
  });

  SelfIntroduceListData copyWith({
    int? id,
    String? nickname,
    String? profileUrl,
    int? yearOfBirth,
    String? title,
  }) {
    return SelfIntroduceListData(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      profileUrl: profileUrl ?? this.profileUrl,
      yearOfBirth: yearOfBirth ?? this.yearOfBirth,
      title: title ?? this.title,
    );
  }
}

class SelfIntroduceDetailData {
  final String like;
  final String title;
  final String content;
  final String profileExchangeStatus;
  final SelfIntroduceMemberBasicInfo? memberBasicInfo;

  const SelfIntroduceDetailData(
      {this.like = '',
      this.title = '',
      this.content = '',
      this.profileExchangeStatus = '',
      this.memberBasicInfo});

  SelfIntroduceDetailData copyWith({
    String? like,
    String? title,
    String? content,
    String? profileExchangeStatus,
    SelfIntroduceMemberBasicInfo? memberBasicInfo,
  }) {
    return SelfIntroduceDetailData(
      like: like ?? this.like,
      title: title ?? this.title,
      content: content ?? this.content,
      profileExchangeStatus:
          profileExchangeStatus ?? this.profileExchangeStatus,
      memberBasicInfo: memberBasicInfo ?? this.memberBasicInfo,
    );
  }
}

class SelfIntroduceMemberBasicInfo {
  final int memberId;
  final String nickname;
  final int age;
  final String profileImageUrl;
  final String city;
  final String district;
  final String mbti;
  final List<String> hobbies;

  const SelfIntroduceMemberBasicInfo({
    required this.memberId,
    required this.nickname,
    required this.age,
    required this.profileImageUrl,
    required this.city,
    required this.district,
    required this.mbti,
    required this.hobbies,
  });
}
