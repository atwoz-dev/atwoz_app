import 'package:atwoz_app/features/home/data/data.dart';
import 'package:atwoz_app/features/home/domain/repository/ideal_type_repository.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ideal_type_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
IdealTypeRepository idealTypeRepository(IdealTypeRepositoryRef ref) {
  return IdealTypeRepositoryImpl();
}

@riverpod
class IdealTypeNotifier extends _$IdealTypeNotifier {
  @override
  IdealTypeState build() {
    final state = IdealTypeState();

    // 별도의 메서드로 비동기 작업 실행 (이제 Future를 반환하지 않음)
    Future(() => _fetchIdealType());

    return state;
  }

  Future<void> _fetchIdealType() async {
    final idealTypeRepository = ref.read(idealTypeRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final result = await idealTypeRepository.getIdealType();
    state = state.copyWith(idealType: result, isLoading: false);
  }

  void updateAgeRange(int minAge, int maxAge) {
    final updatedIdealType =
        state.idealType.copyWith(minAge: minAge, maxAge: maxAge);
    state = state.copyWith(idealType: updatedIdealType);
  }

  void selectMultiType(String type, List<String> items) {
    if (type == '지역') {
      state = state.copyWith(
        idealType: state.idealType.copyWith(regions: items),
      );
    } else {
      // 취미
      state = state.copyWith(
        idealType: state.idealType.copyWith(hobbies: items),
      );
    }
  }

  void selecteSinglType(String type, String item) {
    if (type == '흡연') {
      state = state.copyWith(
        idealType: state.idealType.copyWith(smokingStatus: item),
      );
    } else if (type == '음주') {
      state = state.copyWith(
        idealType: state.idealType.copyWith(drinkingStatus: item),
      );
    } else {
      // 종교
      state = state.copyWith(
        idealType: state.idealType.copyWith(religion: item),
      );
    }
  }
}
