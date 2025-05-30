import 'package:atwoz_app/features/interview/data/repository/interview_repository.dart';

class SubmitInterviewAnswerUseCase {
  final InterviewRepository _repository;
  SubmitInterviewAnswerUseCase(this._repository);

  Future<void> call({
    required int questionId,
    required String answerContent,
  }) {
    return _repository.submitAnswer(
      questionId: questionId,
      answerContent: answerContent,
    );
  }
}
