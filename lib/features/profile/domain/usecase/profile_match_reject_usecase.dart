import 'package:deepple_app/features/profile/data/repository/match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileMatchRejectUseCase {
  final Ref ref;

  const ProfileMatchRejectUseCase(this.ref);

  Future<void> call(int matchId) async {
    await ref.read(matchRepositoryProvider).rejectMatch(matchId);
  }
}
