import 'package:atwoz_app/app/widget/error/dialogue_error.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required UserProfile? profile,
    required String myUserName,
    required int heartPoint,
    required String message,
    required bool isLoaded,
    required DialogueErrorType? error,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
    profile: null,
    myUserName: '',
    heartPoint: 0,
    message: '',
    isLoaded: false,
    error: null,
  );

  const ProfileState._();

  MatchStatus? get matchStatus => profile?.matchStatus;

  bool get enabledMessageInput =>
      profile?.matchStatus is UnMatched ||
      profile?.matchStatus is MatchingReceived;
}
