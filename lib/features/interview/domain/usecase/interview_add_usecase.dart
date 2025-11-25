import 'package:atwoz_app/features/interview/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InterviewAddUseCase {
  final Ref ref;

  const InterviewAddUseCase(this.ref);

  Future<void> call({
    required int questionId,
    required String answerContent,
  }) async {
    await ref
        .read(interviewRepositoryProvider)
        .addAnswer(questionId: questionId, answerContent: answerContent);
  }
}
