import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_history_state.freezed.dart';

enum HeartHistoryErrorType {
  network,
}

@freezed
class HeartHistoryState with _$HeartHistoryState {
  const factory HeartHistoryState({
    @Default(HeartHistoryData()) HeartHistoryData heartTractions,
    @Default(false) bool isLoaded,
    HeartHistoryErrorType? error,
  }) = _HeartHistoryState;

  const HeartHistoryState._();

  factory HeartHistoryState.initial() => const HeartHistoryState();
}

class HeartHistoryData {
  const HeartHistoryData({
    this.transactions = const [],
    this.hasMore = false,
  });

  final List<HeartTransactionSummary> transactions;
  final bool hasMore;

  HeartHistoryData copyWith({
    List<HeartTransactionSummary>? transactions,
    bool? hasMore,
  }) {
    return HeartHistoryData(
      transactions: transactions ?? this.transactions,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class HeartTransactionSummary {
  const HeartTransactionSummary({
    required this.id,
    required this.createdAt,
    required this.content,
    required this.heartAmount,
  });

  final int id;
  final DateTime createdAt;
  final String content;
  final int heartAmount;
}

class DummyHeartTransactionSummary extends HeartTransactionSummary {
  DummyHeartTransactionSummary()
      : super(
          id: 0,
          createdAt: DateTime.now(),
          content: '',
          heartAmount: 0,
        );
}
