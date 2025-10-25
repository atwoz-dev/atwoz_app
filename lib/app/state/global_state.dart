import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
abstract class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    required CachedUserProfile profile,
  }) = _AppGlobalState;
}
