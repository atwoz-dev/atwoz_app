import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamRequiredCreateUsecase {
  final Ref ref;

  const ExamRequiredCreateUsecase(this.ref);

  Future<void> call({
    required ExamAnswerRequest request,
  }) async {
    await ref.read(examRepositoryProvider).createRequiredAnswerList(
          request: request,
        );
  }
}
