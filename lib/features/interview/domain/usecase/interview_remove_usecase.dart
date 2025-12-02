import 'package:deepple_app/features/interview/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InterviewRemoveUseCase {
  final Ref ref;

  const InterviewRemoveUseCase(this.ref);

  Future<void> call({required int answerId}) async {
    await ref
        .read(interviewRepositoryProvider)
        .removeAnswer(answerId: answerId);
  }
}
