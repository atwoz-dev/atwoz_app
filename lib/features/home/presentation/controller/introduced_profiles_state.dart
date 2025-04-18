import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduced_profiles_state.freezed.dart';

@freezed
class IntroducedProfilesState with _$IntroducedProfilesState {
  const factory IntroducedProfilesState({
    @Default([]) List<IntroducedProfile> profiles,
    @Default(false) bool isLoading,
  }) = _CategoryProfilesState;
}
