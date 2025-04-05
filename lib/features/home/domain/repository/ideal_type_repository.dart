import 'package:atwoz_app/features/home/domain/domain.dart';

abstract interface class IdealTypeRepository {
  Future<IdealType> getIdealType();

  Future<void> setIdealType(IdealType idealType);
}
