import 'package:atwoz_app/features/home/domain/entity/ideal_type.dart';

abstract interface class IdealTypeRepository {
  Future<IdealType> getIdealType();

  Future<void> setIdealType(IdealType idealType);
}
