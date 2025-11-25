import 'package:atwoz_app/features/auth/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

part 'store_state.freezed.dart';

enum HeartBalanceErrorType { network }

@freezed
abstract class StoreState with _$StoreState {
  const factory StoreState({
    required HeartBalance heartBalance,
    @Default([]) List<ProductDetails> products,
    @Default(false) bool isLoaded,
    @Default(false) bool isPurchasePending,
    HeartBalanceErrorType? error,
  }) = _StoreState;

  const StoreState._();

  factory StoreState.initial() => StoreState(heartBalance: HeartBalance.init());

  int get totalHeartBalance => heartBalance.totalHeartBalance;
}
