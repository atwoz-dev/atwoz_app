import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_list_response.freezed.dart';
part 'message_list_response.g.dart';

@freezed
abstract class MessageMatchItem with _$MessageMatchItem {
  const factory MessageMatchItem({
    required int matchId,
    required int opponentId,
    required String? opponentMessage,
    required String? myMessage,
    required String nickName,
    required String profileImageUrl,
    required String city,
    required String matchStatus,
    required DateTime createdAt,
  }) = _MessageMatchItem;

  factory MessageMatchItem.fromJson(Map<String, dynamic> json) =>
      _$MessageMatchItemFromJson(json);
}

@freezed
abstract class MessageListResponse with _$MessageListResponse {
  const factory MessageListResponse({
    required List<MessageMatchItem> matches,
    required bool hasMore,
  }) = _MessageListResponse;

  factory MessageListResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageListResponseFromJson(json);
}
