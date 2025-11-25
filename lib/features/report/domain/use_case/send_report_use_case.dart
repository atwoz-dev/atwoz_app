import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/report/data/mapper/report_mapper.dart';
import 'package:atwoz_app/features/report/data/repository/report_repository.dart';
import 'package:atwoz_app/features/report/domain/model/report.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sendReportUseCaseProvider = Provider<SendReportUseCase>((ref) {
  return SendReportUseCase(ref);
});

class SendReportUseCase {
  final Ref _ref;

  SendReportUseCase(this._ref);

  Future<void> execute(Report report) async {
    final repository = _ref.read(reportRepositoryProvider);
    await repository.sendReport(report.toDto());
  }
}
