import 'package:deepple_app/features/profile/data/repository/match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileMatchResetUseCase {
  final Ref ref;

  const ProfileMatchResetUseCase(this.ref);

  Future<void> call(int matchId) async {
    await ref.read(matchRepositoryProvider).resetMatchStatus(matchId);
  }
}
