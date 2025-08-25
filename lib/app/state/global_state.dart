import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/home/domain/model/cached_user_profile.dart';

part 'global_state.freezed.dart';

@freezed
class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    required CachedUserProfile profile,
  }) = _AppGlobalState;
}
