import 'heart_transaction_summary.dart';

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
