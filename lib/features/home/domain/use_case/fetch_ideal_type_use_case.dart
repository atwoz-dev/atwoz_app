import 'package:deepple_app/core/util/util.dart';
import 'package:deepple_app/features/home/data/mapper/ideal_type_mapper.dart';
import 'package:deepple_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIdealTypeUseCaseProvider = Provider<FetchIdealTypeUseCase>((ref) {
  return FetchIdealTypeUseCase(
    repository: ref.read(idealTypeRepositoryProvider),
  );
});

class FetchIdealTypeUseCase {
  final IdealTypeRepository _repository;

  FetchIdealTypeUseCase({required IdealTypeRepository repository})
    : _repository = repository;

  Future<IdealType> execute() async {
    try {
      final response = await _repository.getIdealType();
      return response.toIdealType();
    } catch (e, stackTrace) {
      Log.e('이상형 정보를 불러오는 데 실패했습니다: $e\n$stackTrace');
      rethrow;
    }
  }
}
