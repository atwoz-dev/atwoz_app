import 'package:atwoz_app/core/network/api_service.dart';
import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/home/data/dto/ideal_type_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final idealTypeRepositoryProvider = Provider<IdealTypeRepository>(
  (ref) => IdealTypeRepository(ref),
);

class IdealTypeRepository extends BaseRepository {
  IdealTypeRepository(Ref ref) : super(ref, '/member/ideal');

  Future<IdealTypeDto> getIdealType() async {
    final response = await apiService.getJson(path);

    return IdealTypeDto.fromJson(response['data']);
  }

  Future<void> updateIdealType(IdealTypeDto idealTypeDto) async {
    await apiService.patchJson(path);
  }
}
