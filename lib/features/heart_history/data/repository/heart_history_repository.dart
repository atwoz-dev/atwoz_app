import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/heart_history/data/dto/heart_history_response.dart';
import 'package:atwoz_app/features/heart_history/domain/provider/heart_history_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final heartHistoryRepositoryProvider = Provider<HeartHistoryRepository>((ref) {
  return HeartHistoryRepository(ref);
});

class HeartHistoryRepository extends BaseRepository {
  HeartHistoryRepository(Ref ref) : super(ref, '/heart-transactions');

  Future<HeartHistoryData> getHeartTransactionList([
    int? lastId,
  ]) async {
    final res = await apiService.getJson(
      path,
      queryParameters: lastId != null ? {'lastId': lastId} : null,
    );
    return _parseHeartHistory(res);
  }

  HeartHistoryData _parseHeartHistory(dynamic res) {
    if (res is! Map<String, dynamic> || res['data'] is! Map<String, dynamic>) {
      Log.e(
          'Invalid response format: expected Map<String, dynamic> with data key, got $res');
      throw Exception('Invalid heart transaction response format');
    }

    final response = HeartHistoryResponse.fromJson(res['data']);
    return HeartHistoryData(
      transactions: response.transactions.map((e) => e.toModel()).toList(),
      hasMore: response.hasMore,
    );
  }
}
