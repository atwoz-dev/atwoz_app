import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/report/domain/model/report.dart';
import 'package:atwoz_app/features/report/dto/report_request_dto.dart';

extension ReportMapper on Report {
  ReportRequestDto toDto() {
    if (reason == null) {
      throw StateError('Report.reason is required before mapping to DTO');
    }
    return ReportRequestDto(
      reporteeId: reporteeId,
      reason: reason!.toJson(),
      content: content,
    );
  }
}
