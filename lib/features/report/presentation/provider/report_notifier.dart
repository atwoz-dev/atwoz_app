import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/report/domain/enum/report_reason.dart';
import 'package:atwoz_app/features/report/domain/model/report.dart';
import 'package:atwoz_app/features/report/domain/use_case/block_user_use_case.dart';
import 'package:atwoz_app/features/report/domain/use_case/send_report_use_case.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
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
      final isReportSuccess = await ref
          .read(sendReportUseCaseProvider)
          .execute(state);

      if (isReportSuccess) {
        await _deleteCachedIntroducedProfiles();
      }
      return isReportSuccess;
    } catch (e) {
      return false;
    }
  }

  Future<bool> block() async {
    try {
      final isBlockSuccess = await ref
          .read(blockUserUseCaseProvider)
          .execute(state.reporteeId);

      if (isBlockSuccess) {
        await _deleteCachedIntroducedProfiles();
      }

      return isBlockSuccess;
    } catch (e) {
      return false;
    }
  }

  Future<void> _deleteCachedIntroducedProfiles() async {
    final box = await Hive.openBox<Map>(IntroducedProfileDto.boxName);
    await box.clear();
  }
}
