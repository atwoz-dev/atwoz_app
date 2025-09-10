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
