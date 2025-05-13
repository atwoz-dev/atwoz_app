import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final matchRepositoryProvider = Provider<MatchRepository>((ref) {
  return MatchRepository(ref);
});

class MatchRepository extends BaseRepository {
  MatchRepository(Ref ref) : super(ref, '/match');

  Future<void> requestMatch(int targetId, String message) async {
    await apiService.postJson(
      '$path/request',
      data: {'responderId': targetId, 'requestMessage': message},
    );
  }

  Future<void> rejectMatch(int matchId) async {
    await apiService.patchJson('$path/$matchId/reject');
  }

  Future<void> resetMatchStatus(int matchId) async {
    await apiService.patchJson('$path/$matchId/check');
  }

  Future<void> approveMatch(int matchId, String message) async {
    await apiService.patchJson(
      '$path/$matchId/approve',
      data: {'responseMessage': message},
    );
  }
}
