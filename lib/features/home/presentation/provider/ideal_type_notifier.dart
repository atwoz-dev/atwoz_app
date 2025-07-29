import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:atwoz_app/features/home/domain/enum/extended_home_enum.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_ideal_type_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/update_ideal_type_use_case.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ideal_type_notifier.g.dart';

@riverpod
class IdealTypeNotifier extends AutoDisposeAsyncNotifier<IdealType> {
  @override
  Future<IdealType> build() async {
    final state = await ref.read(fetchIdealTypeUseCaseProvider).execute();

    return state;
  }

  // 공통 업데이트 메서드
  void _updateState(IdealType Function(IdealType) updateFn) {
    if (!state.hasValue) return;
    final current = state.requireValue;
    state = AsyncData(updateFn(current));
  }

  void updateAgeRange(int minAge, int maxAge) {
    _updateState((it) => it.copyWith(minAge: minAge, maxAge: maxAge));
  }

  void updateCities(List<String> cities) {
    _updateState(
      (it) => it.copyWith(
        cities: cities
            .map(
              (e) => addressData.getCityByLabel(e),
            )
            .toList(),
      ),
    );
  }

  void updateHobbies(List<String> hobbies) {
    _updateState(
      (it) => it.copyWith(
        hobbies: hobbies.map((e) => Hobby.parse(e)).toList(),
      ),
    );
  }

  void updateSmokingStatus(String smokingStatus) {
    _updateState(
      (it) => it.copyWith(
        smokingStatus: ExtendedSmokingStatus.fromLabel(
          label: smokingStatus,
          enumValues: SmokingStatus.values,
          valueToLabel: (value) => value.label,
        ),
      ),
    );
  }

  void updateDrinkingStatus(String drinkingStatus) {
    _updateState(
      (it) => it.copyWith(
        drinkingStatus: ExtendedDrinkingStatus.fromLabel(
          label: drinkingStatus,
          enumValues: DrinkingStatus.values,
          valueToLabel: (value) => value.label,
        ),
      ),
    );
  }

  void updateReligion(String religion) {
    _updateState(
      (it) => it.copyWith(
        religion: ExtendedReligionStatus.fromLabel(
          label: religion,
          enumValues: Religion.values,
          valueToLabel: (value) => value.label,
        ),
      ),
    );
  }

  Future<bool> updateIdealType() async {
    if (!state.hasValue) return false;

    final idealType = state.requireValue;
    final isUpdated =
        await ref.read(updateIdealTypeUseCaseProvider).execute(idealType);
    return isUpdated;
  }
}
