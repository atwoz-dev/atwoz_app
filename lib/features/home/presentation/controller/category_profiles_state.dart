import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_profiles_state.freezed.dart';

@freezed
class CategoryProfilesState with _$CategoryProfilesState {
  const factory CategoryProfilesState({
    @Default([]) List<IntroducedProfile> profiles,
    @Default(false) bool isLoading,
  }) = _CategoryProfilesState;
}
