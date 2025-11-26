import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/report/domain/enum/report_reason.dart';
import 'package:atwoz_app/features/report/domain/model/report.dart';
import 'package:atwoz_app/features/report/domain/model/report_block_result.dart';
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

  Future<ReportBlockResult> report() async {
    try {
      final isReportSuccess = await ref
          .read(sendReportUseCaseProvider)
          .execute(state);

      if (isReportSuccess) {
        try {
          await _deleteCachedIntroducedProfiles();

          return const ReportBlockResult(
            isServerProcessed: true,
            isDeletedCache: true,
          );
        } catch (e) {
          Log.e('캐시 삭제 실패: $e');
          return const ReportBlockResult(
            isServerProcessed: true,
            isDeletedCache: false,
          );
        }
      }

      return const ReportBlockResult(
        isServerProcessed: false,
        isDeletedCache: false,
      );
    } catch (e) {
      return const ReportBlockResult(
        isServerProcessed: false,
        isDeletedCache: false,
      );
    }
  }

  Future<ReportBlockResult> block() async {
    try {
      final isBlockSuccess = await ref
          .read(blockUserUseCaseProvider)
          .execute(state.reporteeId);

      if (isBlockSuccess) {
        try {
          await _deleteCachedIntroducedProfiles();
          return const ReportBlockResult(
            isServerProcessed: true,
            isDeletedCache: true,
          );
        } catch (e) {
          Log.e('캐시 삭제 실패: $e');
          return const ReportBlockResult(
            isServerProcessed: true,
            isDeletedCache: false,
          );
        }
      }

      return const ReportBlockResult(
        isServerProcessed: false,
        isDeletedCache: false,
      );
    } catch (e) {
      return const ReportBlockResult(
        isServerProcessed: false,
        isDeletedCache: false,
      );
    }
  }

  Future<void> _deleteCachedIntroducedProfiles() async {
    final box = await Hive.openBox<Map>(IntroducedProfileDto.boxName);

    await box.clear();
    await box.close();
  }

  Future<bool> clearCachedProfiles() async {
    try {
      await _deleteCachedIntroducedProfiles();
      return true;
    } catch (e) {
      return false;
    }
  }
}
