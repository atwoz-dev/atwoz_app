import 'package:atwoz_app/features/heart_history/domain/provider/heart_history_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_history_response.freezed.dart';
part 'heart_history_response.g.dart';

@freezed
class HeartHistoryItemResponse with _$HeartHistoryItemResponse {
  const factory HeartHistoryItemResponse({
    required int id,
    required DateTime createdAt,
    required String content,
    required int heartAmount,
  }) = _HeartHistoryItemResponse;

  factory HeartHistoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$HeartHistoryItemResponseFromJson(json);

  const HeartHistoryItemResponse._();

  HeartTransactionSummary toModel() => HeartTransactionSummary(
        id: id,
        createdAt: createdAt,
        content: content,
        heartAmount: heartAmount,
      );
}

@freezed
class HeartHistoryResponse with _$HeartHistoryResponse {
  const factory HeartHistoryResponse({
    required List<HeartHistoryItemResponse> transactions,
    required bool hasMore,
  }) = _HeartHistoryResponse;

  factory HeartHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HeartHistoryResponseFromJson(json);
}
