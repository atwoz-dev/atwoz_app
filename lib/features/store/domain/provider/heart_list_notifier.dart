import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/store/data/repository/store_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'heart_list_state.dart';

part 'heart_list_notifier.g.dart';

@riverpod
class HeartListNotifier extends _$HeartListNotifier {
  @override
  HeartListState build() {
    _initializeHeartLists();
    return HeartListState.initial();
  }

  Future<void> _initializeHeartLists() async {
    try {
      final repository = ref.read(storeRepositoryProvider);
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
        error: HeartListErrorType.network,
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
      final heartListData = await ref
          .read(storeRepositoryProvider)
          .getHeartTransactionList(lastId);

      state = state.copyWith(
        heartTractions: state.heartTractions.copyWith(
          transactions: [
            ...state.heartTractions.transactions,
            ...heartListData.transactions
          ],
          hasMore: heartListData.hasMore,
        ),
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(error: HeartListErrorType.network);
    }
  }

  void resetError() {
    state = state.copyWith(error: null);
  }
}
