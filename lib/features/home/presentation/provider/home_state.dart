import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    List<IntroducedProfile>? recommendedProfiles,
    @Default(false) bool isCheckingIntroducedProfiles,
  }) = _HomeState;
}
