import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/report/domain/model/report.dart';
import 'package:atwoz_app/features/report/dto/report_request_dto.dart';

extension ReportMapper on Report {
  ReportRequestDto toDto() {
    return ReportRequestDto(
      reporteeId: reporteeId,
      reason: reason!.toJson(),
      content: content,
    );
  }
}
