import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/store/data/dto/heart_balance_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storeRepositoryProvider = Provider<StoreRepository>((ref) {
  return StoreRepository(ref);
});

class StoreRepository extends BaseRepository {
  StoreRepository(Ref ref) : super(ref, '/member');

  /// 보유하트 조회 API
  Future<HeartBalanceItem> getHeartBalance() async {
    try {
      final response = await apiService.getJson<Map<String, dynamic>>(
        '$path/heartbalance',
      );

      final result = HeartBalanceResponse.fromJson(response);

      return result.data;
    } catch (e) {
      Log.e(e);
      return const HeartBalanceItem(
        purchaseHeartBalance: 0,
        missionHeartBalance: 0,
        totalHeartBalance: 0,
      );
    }
  }
}
