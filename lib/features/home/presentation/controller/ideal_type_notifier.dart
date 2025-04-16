import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/home/data/data.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ideal_type_notifier.g.dart'; // 코드 생성을 위한 부분

final idealTypeRepository = Provider<IdealTypeRepository>((ref) {
  return IdealTypeRepositoryImpl();
});

@riverpod
class IdealTypeNotifier extends AutoDisposeAsyncNotifier<IdealType> {
  @override
  Future<IdealType> build() async {
    final repository = ref.read(idealTypeRepository);
    final idealType = await repository.getIdealType();
    return idealType;
  }

  void updateAgeRange(int minAge, int maxAge) {
    if (!state.hasValue) return;
    state = AsyncData(state.requireValue.copyWith(
      minAge: minAge,
      maxAge: maxAge,
    ));
  }

  void updateRegions(List<String> regions) {
    if (!state.hasValue) return;
    state = AsyncData(state.requireValue.copyWith(
      regions: regions,
    ));
  }

  void updateHobbies(List<String> hobbies) {
    if (!state.hasValue) return;
    state = AsyncData(state.requireValue.copyWith(
      hobbies: hobbies,
    ));
  }

  void updateSmokingStatus(SmokingStatusEnum smokingStatus) {
    if (!state.hasValue) return;
    state = AsyncData(state.requireValue.copyWith(
      smokingStatus: smokingStatus,
    ));
  }

  void updateDrinkingStatus(DrinkingStatusEnum drinkingStatus) {
    if (!state.hasValue) return;
    state = AsyncData(state.requireValue.copyWith(
      drinkingStatus: drinkingStatus,
    ));
  }

  void updateReligion(ReligionEnum religion) {
    if (!state.hasValue) return;
    state = AsyncData(state.requireValue.copyWith(
      religion: religion,
    ));
  }
}
