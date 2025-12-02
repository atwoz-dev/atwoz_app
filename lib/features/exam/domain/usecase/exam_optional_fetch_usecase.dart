import 'package:deepple_app/features/exam/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamOptionalFetchUseCase {
  final Ref ref;

  const ExamOptionalFetchUseCase(this.ref);

  Future<List<SubjectItem>> call() async {
    final response = await ref
        .read(examRepositoryProvider)
        .getOptionalQuestionList();

    return response;
  }
}
