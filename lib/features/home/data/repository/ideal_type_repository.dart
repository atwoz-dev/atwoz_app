import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/util.dart';
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

  Future<bool> updateIdealType(IdealTypeDto idealTypeDto) async {
    try {
      await apiService.patchJson(
        path,
        data: idealTypeDto,
      );

      return true;
    } on NetworkException catch (e) {
      Log.e('네트워크 오류입니다. ${e.message}');
      return false;
    } catch (e) {
      Log.e('알 수 없는 오류입니다. $e');
      return false;
    }
  }
}
