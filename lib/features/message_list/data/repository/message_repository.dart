import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/message_list/data/dto/message_list_response.dart';
import 'package:atwoz_app/features/message_list/domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  return MessageRepository(ref);
});

class MessageRepository extends BaseRepository {
  MessageRepository(Ref ref) : super(ref, '/likes');

  Future<MessageListData> getSentMessages([
    int? lastId,
  ]) async {
    final res = await apiService.getJson(
      '$path/sent',
      queryParameters: lastId != null ? {'lastLikeId': lastId} : null,
    );
    return _parseMessageList(res);
  }

  Future<MessageListData> getReceivedMessages([
    int? lastId,
  ]) async {
    final res = await apiService.getJson(
      '$path/received',
      queryParameters: lastId != null ? {'lastLikeId': lastId} : null,
    );
    return _parseMessageList(res);
  }

  MessageListData _parseMessageList(dynamic res) {
    if (res is! Map<String, dynamic> || res['data'] is! Map<String, dynamic>) {
      Log.e('data type is not Map $res');
      throw Exception();
    }

    final response = MessageListResponse.fromJson(res['data']);
    return MessageListData(
      messages: response.likes.map((e) => e.toModel()).toList(),
      hasMore: response.hasMore,
    );
  }
}
