import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamRequiredFetchUseCase {
  final Ref ref;

  const ExamRequiredFetchUseCase(this.ref);

  Future<List<SubjectItem>> call() async {
    final response = await ref
        .read(examRepositoryProvider)
        .getRequiredQuestionList();

    return response;
  }
}
