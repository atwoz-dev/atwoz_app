import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_list_state.freezed.dart';

enum MessageListErrorType {
  network,
}

@freezed
abstract class MessageListState with _$MessageListState {
  const factory MessageListState({
    @Default(MessageListData()) MessageListData receivedMessages,
    @Default(MessageListData()) MessageListData sentMessages,
    @Default(false) bool isLoaded,
    MessageListErrorType? error,
  }) = _MessageListState;

  const MessageListState._();

  factory MessageListState.initial() => const MessageListState();
}

class MessageListData {
  const MessageListData({
    this.messages = const [],
    this.hasMore = false,
  });

  final List<MessageSummary> messages;
  final bool hasMore;

  MessageListData copyWith({
    List<MessageSummary>? messages,
    bool? hasMore,
  }) {
    return MessageListData(
      messages: messages ?? this.messages,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class MessageSummary {
  const MessageSummary({
    required this.userId,
    required this.name,
    required this.profileUrl,
    required this.content,
    required this.createdAt,
    required this.age,
  });

  final int userId;
  final String name;
  final String profileUrl;
  final String content;
  final DateTime createdAt;
  final int age;
}

class DummyMessageSummaryInfo extends MessageSummary {
  DummyMessageSummaryInfo()
      : super(
          userId: 0,
          name: '',
          profileUrl: '',
          content: '',
          createdAt: DateTime.now(),
          age: 0,
        );
}
