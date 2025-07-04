import 'package:atwoz_app/features/store/domain/provider/heart_list_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_list_response.freezed.dart';
part 'heart_list_response.g.dart';

@freezed
class HeartListItemResponse with _$HeartListItemResponse {
  const factory HeartListItemResponse({
    required int id,
    required DateTime createdAt,
    required String content,
    required int heartAmount,
  }) = _HeartListItemResponse;

  factory HeartListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$HeartListItemResponseFromJson(json);

  const HeartListItemResponse._();

  HeartTransactionSummary toModel() => HeartTransactionSummary(
        id: id,
        // TODO(Han): server 데이터 정합성 확보 후 non-nullable 하도록 수정
        createdAt: createdAt,
        content: content ?? '',
        heartAmount: heartAmount,
      );
}

@freezed
class HeartListResponse with _$HeartListResponse {
  const factory HeartListResponse({
    required List<HeartListItemResponse> transactions,
    required bool hasMore,
  }) = _HeartListResponse;

  factory HeartListResponse.fromJson(Map<String, dynamic> json) =>
      _$HeartListResponseFromJson(json);
}
