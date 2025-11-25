import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/auth/data/repository/location_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCurrentLocationUseCaseProvider =
    Provider<GetCurrentUserLocationUseCase>((ref) {
      return GetCurrentUserLocationUseCase(ref);
    });

class GetCurrentUserLocationUseCase {
  final Ref _ref;

  GetCurrentUserLocationUseCase(this._ref);

  Future<String> execute() async {
    try {
      final position = await _ref
          .read(locationRepositoryProvider)
          .getCurrentPosition();
      return _ref
          .read(locationRepositoryProvider)
          .getAddressFromPosition(position);
    } catch (e) {
      Log.e('위치 정보를 가져오는 데 실패했습니다: $e');
      return '';
    }
  }
}
