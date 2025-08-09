import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/heart_history/data/repository/heart_history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'heart_history_state.dart';

part 'heart_history_notifier.g.dart';

@riverpod
class HeartHistoryNotifier extends _$HeartHistoryNotifier {
  @override
  HeartHistoryState build() {
    _initializeHeartHistorys();
    return HeartHistoryState.initial();
  }

  Future<void> _initializeHeartHistorys() async {
    try {
      final repository = ref.read(heartHistoryRepositoryProvider);
      final heart = await repository.getHeartTransactionList();

      state = state.copyWith(
        heartTractions: heart,
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: HeartHistoryErrorType.network,
      );
    }
  }

  Future<void> loadMoreHeartTractions() async {
    if (!state.heartTractions.hasMore) {
      return;
    }

    try {
      if (state.heartTractions.transactions.isEmpty) {
        return;
      }
      final lastId = state.heartTractions.transactions.last.id;
      final heartHistoryData = await ref
          .read(heartHistoryRepositoryProvider)
          .getHeartTransactionList(lastId);

      state = state.copyWith(
        heartTractions: state.heartTractions.copyWith(
          transactions: [
            ...state.heartTractions.transactions,
            ...heartHistoryData.transactions
          ],
          hasMore: heartHistoryData.hasMore,
        ),
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: HeartHistoryErrorType.network);
    }
  }

  void resetError() {
    state = state.copyWith(error: null);
  }
}
