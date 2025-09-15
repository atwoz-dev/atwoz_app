class ReportRequestDto {
  final int reporteeId;
  final String reason;
  final String content;

  const ReportRequestDto({
    required this.reporteeId,
    required this.reason,
    required this.content,
  });

  Map<String, dynamic> toJson() => {
        'reporteeId': reporteeId,
        'reason': reason,
        'content': content,
      };
}
