import 'package:atwoz_app/features/home/data/mapper/ideal_type_mapper.dart';
import 'package:atwoz_app/features/home/data/repository/ideal_type_repository.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateIdealTypeUseCaseProvider = Provider<UpdateIdealTypeUseCase>(
  (ref) => UpdateIdealTypeUseCase(
    idealTypeRepository: IdealTypeRepository(ref),
  ),
);

class UpdateIdealTypeUseCase {
  final IdealTypeRepository _idealTypeRepository;

  UpdateIdealTypeUseCase({
    required IdealTypeRepository idealTypeRepository,
  }) : _idealTypeRepository = idealTypeRepository;

  Future<void> execute(IdealType idealType) async {
    await _idealTypeRepository.updateIdealType(idealType.toIdealTypeDto());
  }
}
