import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_balance_response.freezed.dart';
part 'heart_balance_response.g.dart';

@freezed
abstract class HeartBalanceResponse with _$HeartBalanceResponse {
  const factory HeartBalanceResponse({
    required int status,
    required String code,
    required String message,
    required HeartBalanceItem data,
  }) = _HeartBalanceResponse;

  factory HeartBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$HeartBalanceResponseFromJson(json);
}

@freezed
abstract class HeartBalanceItem with _$HeartBalanceItem {
  const factory HeartBalanceItem({
    required int purchaseHeartBalance,
    required int missionHeartBalance,
    required int totalHeartBalance,
  }) = _HeartBalanceItem;

  factory HeartBalanceItem.fromJson(Map<String, dynamic> json) =>
      _$HeartBalanceItemFromJson(json);
}
