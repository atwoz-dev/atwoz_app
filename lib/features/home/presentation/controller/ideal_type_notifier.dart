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
    if (state.hasValue) {
      final updatedIdealType = state.value!.copyWith(
        minAge: minAge,
        maxAge: maxAge,
      );
      state = AsyncData(updatedIdealType);
    }
  }

  void updateRegions(List<String> regions) {
    if (state.hasValue) {
      final updated = state.value!.copyWith(regions: regions);
      state = AsyncData(updated);
    }
  }

  void updateHobbies(List<String> hobbies) {
    if (state.hasValue) {
      final updated = state.value!.copyWith(hobbies: hobbies);
      state = AsyncData(updated);
    }
  }

  void updateSmokingStatus(SmokingStatusEnum smokingStatus) {
    if (state.hasValue) {
      final updated = state.value!.copyWith(smokingStatus: smokingStatus);
      state = AsyncData(updated);
    }
  }

  void updateDrinkingStatus(DrinkingStatusEnum drinkingStatus) {
    if (state.hasValue) {
      final updated = state.value!.copyWith(drinkingStatus: drinkingStatus);
      state = AsyncData(updated);
    }
  }

  void updateReligion(ReligionEnum religion) {
    if (state.hasValue) {
      final updated = state.value!.copyWith(religion: religion);
      state = AsyncData(updated);
    }
  }
}
