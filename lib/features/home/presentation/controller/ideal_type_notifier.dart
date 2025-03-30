import 'package:atwoz_app/features/home/data/repository/ideal_type_repository_impl.dart';
import 'package:atwoz_app/features/home/domain/repository/ideal_type_repository.dart';
import 'package:atwoz_app/features/home/presentation/controller/ideal_type_state.dart';
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
    _fetchIdealType();
    return IdealTypeState();
  }

  Future<void> _fetchIdealType() async {
    final idealTypeRepository = ref.watch(idealTypeRepositoryProvider);
    final result = await idealTypeRepository.getIdealType();
    state = state.copyWith(idealType: result, isLoading: true);
  }

  void updateAgeRange(int minAge, int maxAge) {
    final updatedIdealType =
        state.idealType.copyWith(minAge: minAge, maxAge: maxAge);
    state = state.copyWith(idealType: updatedIdealType);
  }
}
