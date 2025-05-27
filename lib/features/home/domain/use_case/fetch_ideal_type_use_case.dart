import 'package:atwoz_app/features/home/data/mapper/ideal_type_mapper.dart';
import 'package:atwoz_app/features/home/data/repository/ideal_type_repository.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchIdealTypeUseCaseProvider = Provider<FetchIdealTypeUseCase>((ref) {
  return FetchIdealTypeUseCase(
    repository: IdealTypeRepository(ref),
  );
});

class FetchIdealTypeUseCase {
  final IdealTypeRepository _repository;

  FetchIdealTypeUseCase({required IdealTypeRepository repository})
      : _repository = repository;

  Future<IdealType> execute() async {
    final response = await _repository.getIdealType();
    return response.toIdealType();
  }
}
