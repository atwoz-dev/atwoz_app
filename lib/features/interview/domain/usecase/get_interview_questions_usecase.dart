import 'package:atwoz_app/features/interview/data/data.dart';

class GetInterviewQuestionsUseCase {
  final InterviewRepository _repository;
  GetInterviewQuestionsUseCase(this._repository);

  Future<List<InterviewItem>> call(InterviewCategory category) {
    return _repository.fetchQuestions(category: category);
  }
}
