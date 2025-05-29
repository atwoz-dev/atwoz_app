import 'package:atwoz_app/features/interview/data/data.dart';

class GetInterviewDetailUseCase {
  final InterviewRepository _repository;
  GetInterviewDetailUseCase(this._repository);

  Future<InterviewItem> call(int id) {
    return _repository.fetchQuestionDetail(id: id);
  }
}
