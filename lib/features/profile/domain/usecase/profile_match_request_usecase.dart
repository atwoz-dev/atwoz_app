import 'package:atwoz_app/features/profile/data/repository/match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileMatchRequestUseCase {
  final Ref ref;

  const ProfileMatchRequestUseCase(this.ref);

  Future<void> call({
    required int userId,
    required String message,
  }) async {
    await ref.read(matchRepositoryProvider).requestMatch(userId, message);
  }
}
