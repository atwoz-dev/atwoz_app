import 'package:deepple_app/features/interview/data/data.dart';
import 'package:deepple_app/features/interview/data/dto/interview_answer_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InterviewAddUseCase {
  final Ref ref;

  const InterviewAddUseCase(this.ref);

  Future<InterviewAnswerResponse> call({
    required int questionId,
    required String answerContent,
  }) async {
    return await ref
        .read(interviewRepositoryProvider)
        .addAnswer(questionId: questionId, answerContent: answerContent);
  }
}
