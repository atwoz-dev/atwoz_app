import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/store/domain/usecase/store_fetch_usecase.dart';
import 'package:atwoz_app/features/store/domain/usecase/verify_receipt_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'store_state.dart';

part 'store_notifier.g.dart';

@riverpod
class StoreNotifier extends _$StoreNotifier {
  @override
  StoreState build() {
    _initializeHeartBalanceItem();
    return StoreState.initial();
  }

  Future<void> _initializeHeartBalanceItem() async {
    try {
      final heartBalance = await HeartBalanceFetchUseCase(ref).call();

      state = state.copyWith(
        heartBalance: StoreData(heartBalance: heartBalance),
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: HeartBalanceErrorType.network,
      );
    }
  }

  Future<void> fetchHeartBalance() async {
    await _initializeHeartBalanceItem();
  }

  Future<void> verifyReceipt(
    String appReceipt,
  ) async {
    try {
      await VerifyReceiptUseCase(ref).call(
        appReceipt: appReceipt,
      );
    } catch (e) {
      Log.e(e);
    }
  }
}
