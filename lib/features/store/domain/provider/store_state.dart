import 'package:atwoz_app/features/store/data/dto/heart_balance_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_state.freezed.dart';

enum HeartBalanceErrorType {
  network,
}

@freezed
class StoreState with _$StoreState {
  const factory StoreState({
    @Default(StoreData()) StoreData heartBalance,
    @Default(false) bool isLoaded,
    HeartBalanceErrorType? error,
  }) = _StoreState;

  const StoreState._();

  factory StoreState.initial() => const StoreState();
}

@freezed
class StoreData with _$StoreData {
  const factory StoreData({
    @Default(HeartBalanceItem(
      purchaseHeartBalance: 0,
      missionHeartBalance: 0,
      totalHeartBalance: 0,
    ))
    HeartBalanceItem heartBalance,
  }) = _StoreData;
}
