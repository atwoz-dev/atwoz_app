import 'package:atwoz_app/features/report/domain/enum/report_reason.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';

@freezed
abstract class Report with _$Report {
  const Report._();

  const factory Report({
    required int reporteeId,
    required ReportReason? reason,
    required String content,
  }) = _Report;

  factory Report.initialize(int userId) => Report(
        reporteeId: userId,
        reason: null,
        content: '',
      );
}
