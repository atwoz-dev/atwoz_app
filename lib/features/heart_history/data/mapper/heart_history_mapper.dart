import 'package:deepple_app/features/heart_history/data/dto/heart_history_response.dart';
import 'package:deepple_app/features/heart_history/domain/model/heart_transaction_summary.dart';

extension HeartHistoryItemMapper on HeartHistoryItemResponse {
  HeartTransactionSummary toDomain() => HeartTransactionSummary(
    id: id,
    createdAt: createdAt,
    content: content,
    heartAmount: heartAmount,
  );
}
