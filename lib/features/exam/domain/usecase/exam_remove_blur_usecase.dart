import 'package:atwoz_app/features/exam/data/repository/exam_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamRemoveBlurUsecase {
  final Ref ref;

  const ExamRemoveBlurUsecase(this.ref);

  Future<bool> call({required int memberId, required bool isSoulmate}) async {
    try {
      if (isSoulmate) {
        await ref
            .read(examRepositoryProvider)
            .removeSoulmateProfileBlur(memberId: memberId);
      }
      if (!isSoulmate) {
        await ref
            .read(examRepositoryProvider)
            .removeSameAnswerProfileBlur(memberId: memberId);
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
