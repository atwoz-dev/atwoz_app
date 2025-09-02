import 'package:atwoz_app/features/store/data/dto/heart_balance_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

part 'store_state.freezed.dart';

enum HeartBalanceErrorType {
  network,
}

@freezed
class StoreState with _$StoreState {
  const factory StoreState({
    @Default(StoreData()) StoreData heartBalance,
    @Default([]) List<ProductDetails> products,
    @Default(false) bool isLoaded,
    @Default(false) bool isPurchasePending,
    HeartBalanceErrorType? error,
  }) = _StoreState;

  const StoreState._();

  factory StoreState.initial() => const StoreState();
}

@freezed
class StoreData with _$StoreData {
  const factory StoreData({
    @Default(const HeartBalanceItem(
      purchaseHeartBalance: 0,
      missionHeartBalance: 0,
      totalHeartBalance: 0,
    ))
    HeartBalanceItem heartBalance,
  }) = _StoreData;
}
