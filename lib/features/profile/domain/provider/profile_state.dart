import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    required UserProfile? profile,
    required String myUserName,
    required bool registeredContact,
    required int heartPoint,
    required String message,
    required bool isLoaded,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        profile: null,
        myUserName: '',
        registeredContact: false,
        heartPoint: 0,
        message: '',
        isLoaded: false,
      );

  MatchStatus? get matchStatus => profile?.matchStatus;

  bool get enabledMessageInput {
    final matchStatus = profile?.matchStatus;
    return matchStatus is UnMatched ||
        matchStatus is MatchingReceived ||
        (matchStatus is Matching && matchStatus.isExpired);
  }
}
