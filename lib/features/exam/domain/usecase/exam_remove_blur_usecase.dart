import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamRemoveBlurUsecase {
  final Ref ref;

  const ExamRemoveBlurUsecase(this.ref);

  Future<void> call({
    required int memberId,
  }) async {
    await ref.read(examRepositoryProvider).removeProfileBlur(
          memberId: memberId,
        );
  }
}
