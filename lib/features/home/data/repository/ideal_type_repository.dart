import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdealTypeRepository extends BaseRepository {
  IdealTypeRepository(Ref ref) : super(ref, 'member/ideal');
}
