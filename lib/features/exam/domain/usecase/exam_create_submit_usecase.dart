import 'package:deepple_app/features/exam/domain/model/subject_answer.dart';
import 'package:deepple_app/features/exam/data/repository/exam_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamCreateSubmitUsecase {
  final Ref ref;

  const ExamCreateSubmitUsecase(this.ref);

  Future<void> call({required SubjectAnswer request}) async {
    await ref.read(examRepositoryProvider).submitAnswerList(request: request);
  }
}
