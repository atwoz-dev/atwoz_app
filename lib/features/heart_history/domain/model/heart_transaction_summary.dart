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
