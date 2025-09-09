import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/features/report/dto/report_request_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reportRepositoryProvider = Provider<ReportRepository>((ref) {
  return ReportRepository(ref);
});

class ReportRepository extends BaseRepository {
  ReportRepository(Ref ref) : super(ref, '/reports');

  Future<void> sendReport(ReportRequestDto dto) async {
    await apiService.postJson(
      path,
      data: dto.toJson(),
      requiresAccessToken: true,
    );
  }
}
