import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/store/data/dto/heart_list_response.dart';
import 'package:atwoz_app/features/store/domain/provider/heart_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final storeRepositoryProvider = Provider<StoreRepository>((ref) {
  return StoreRepository(ref);
});

class StoreRepository extends BaseRepository {
  StoreRepository(Ref ref) : super(ref, '/heart-transactions');

  Future<HeartListData> getHeartTransactionList([
    int? lastId,
  ]) async {
    final res = await apiService.getJson(
      path,
      queryParameters: lastId != null ? {'lastId': lastId} : null,
    );
    return _parseHeartList(res);
  }

  HeartListData _parseHeartList(dynamic res) {
    if (res is! Map<String, dynamic> || res['data'] is! Map<String, dynamic>) {
      Log.e(
          'Invalid response format: expected Map<String, dynamic> with data key, got $res');
      throw Exception('Invalid heart transaction response format');
    }

    final response = HeartListResponse.fromJson(res['data']);
    return HeartListData(
      transactions: response.transactions.map((e) => e.toModel()).toList(),
      hasMore: response.hasMore,
    );
  }
}
