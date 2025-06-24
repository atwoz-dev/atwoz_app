import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String nickname,
    @Default([]) List<IntroducedProfile> recommendedProfiles,
  }) = _HomeState;
}
