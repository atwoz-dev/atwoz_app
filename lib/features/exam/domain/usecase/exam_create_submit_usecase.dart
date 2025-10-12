import 'package:atwoz_app/features/exam/domain/model/subject_answer.dart';
import 'package:atwoz_app/features/exam/data/repository/exam_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/core/util/log.dart';

class ExamCreateSubmitUsecase {
  final Ref ref;

  const ExamCreateSubmitUsecase(this.ref);

  Future<void> call({
    required SubjectAnswer request,
  }) async {
    try {
      await ref.read(examRepositoryProvider).submitAnswerList(
            request: request,
          );
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }
}
