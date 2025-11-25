import 'package:atwoz_app/features/report/domain/enum/report_reason.dart';
import 'package:atwoz_app/features/report/domain/model/report.dart';
import 'package:atwoz_app/features/report/domain/use_case/block_user_use_case.dart';
import 'package:atwoz_app/features/report/domain/use_case/send_report_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_notifier.g.dart';

@riverpod
class ReportNotifier extends _$ReportNotifier {
  @override
  Report build(int userId) {
    return Report.initialize(userId);
  }

  set reason(String reason) {
    state = state.copyWith(reason: ReportReason.fromLabel(reason));
  }

  set content(String content) {
    state = state.copyWith(content: content);
  }

  Future<bool> report() async {
    try {
      await ref.read(sendReportUseCaseProvider).execute(state);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> block() async {
    try {
      await ref.read(blockUserUseCaseProvider).execute(state.reporteeId);
      return true;
    } catch (e) {
      return false;
    }
  }
}
