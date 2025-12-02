import 'package:deepple_app/app/constants/enum.dart';
import 'package:deepple_app/features/report/domain/model/report.dart';
import 'package:deepple_app/features/report/data/dto/report_request_dto.dart';

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
