import 'package:deepple_app/app/enum/contact_method.dart';
import 'package:deepple_app/features/profile/data/repository/match_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileMatchRequestUseCase {
  final Ref ref;

  const ProfileMatchRequestUseCase(this.ref);

  Future<void> call({
    required int userId,
    required String message,
    required ContactMethod method,
  }) async {
    await ref
        .read(matchRepositoryProvider)
        .requestMatch(
          targetId: userId,
          message: message,
          contactMethod: method,
        );
  }
}
