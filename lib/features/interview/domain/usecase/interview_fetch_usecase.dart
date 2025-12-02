import 'package:deepple_app/features/interview/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InterviewFetchUseCase {
  final Ref ref;

  const InterviewFetchUseCase(this.ref);

  Future<List<InterviewQuestionItem>> call(InterviewCategory category) async {
    final response = await ref
        .read(interviewRepositoryProvider)
        .getQuestionList(category: category);

    return response;
  }
}
