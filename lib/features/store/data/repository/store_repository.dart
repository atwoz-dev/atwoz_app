import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storeRepositoryProvider = Provider<StoreRepository>((ref) {
  return StoreRepository(ref);
});

class StoreRepository extends BaseRepository {
  StoreRepository(Ref ref) : super(ref, '/store');

// 상점 하트 사용내역
  Future<void> storeHistory() async {
    Map<String, dynamic> queryParameters = {
      'condition': {
        "productId": "string",
        "name": "string",
        "createdDateGoe": "2025-06-03",
        "createdDateLoe": "2025-06-03"
      },
      'pageable': {
        "page": 0,
        "size": 1,
        "sort": ["string"]
      }
    };

    await apiService.getJson(
      '$path/admin/heart-purchase-options',
      queryParameters: queryParameters,
      requiresAuthToken: true,
    );
  }
}
