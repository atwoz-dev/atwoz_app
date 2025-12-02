import 'package:deepple_app/core/network/base_repository.dart';
import 'package:deepple_app/features/report/data/dto/report_request_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reportRepositoryProvider = Provider<ReportRepository>((ref) {
  return ReportRepository(ref);
});

class ReportRepository extends BaseRepository {
  ReportRepository(Ref ref) : super(ref, '');

  // 신고하기
  Future<void> sendReport(ReportRequestDto dto) async {
    await apiService.postJson(
      '/reports',
      data: dto.toJson(),
      requiresAccessToken: true,
    );
  }

  // 차단하기
  Future<void> sendBlock(int blockedId) async {
    await apiService.postJson(
      '/blocks',
      data: {'blockedId': blockedId},
      requiresAccessToken: true,
    );
  }
}
