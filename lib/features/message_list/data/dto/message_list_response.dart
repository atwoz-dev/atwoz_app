import 'package:atwoz_app/features/message_list/domain/message_list_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_list_response.freezed.dart';
part 'message_list_response.g.dart';

@freezed
abstract class MessageListItemResponse with _$MessageListItemResponse {
  const factory MessageListItemResponse({
    required int likeId,
    required int opponentId,
    required String? profileImageUrl,
    required String? nickname,
    required String? city,
    required int age,
    required bool isMutualLike,
    required DateTime createdAt,
  }) = _MessageListItemResponse;

  factory MessageListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageListItemResponseFromJson(json);

  const MessageListItemResponse._();

  // TODO(Han): 해당 파일 서버 API 반영 후 확인
  MessageSummary toModel() => MessageSummary(
    userId: opponentId,
    profileUrl: profileImageUrl ?? '',
    name: nickname ?? '',
    content: 'some message contents',
    createdAt: createdAt,
    age: age,
  );
}

@freezed
abstract class MessageListResponse with _$MessageListResponse {
  const factory MessageListResponse({
    required List<MessageListItemResponse> likes,
    required bool hasMore,
  }) = _MessageListResponse;

  factory MessageListResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageListResponseFromJson(json);
}
