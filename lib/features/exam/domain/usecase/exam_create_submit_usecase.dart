import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/core/util/log.dart';

class ExamCreateSubmitUsecase {
  final Ref ref;

  const ExamCreateSubmitUsecase(this.ref);

  Future<void> call({
    required SubjectAnswerItem request,
  }) async {
    try {
      await ref.read(examRepositoryProvider).createSubmitAnswerList(
            request: request,
          );
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }
}
