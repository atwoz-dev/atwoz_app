import 'package:atwoz_app/features/interview/data/data.dart';

class UpdateInterviewAnswerUseCase {
  final InterviewRepository _repository;
  UpdateInterviewAnswerUseCase(this._repository);

  Future<void> call({
    required int answerId,
    required String answerContent,
  }) {
    return _repository.updateAnswer(
      answerId: answerId,
      answerContent: answerContent,
    );
  }
}
