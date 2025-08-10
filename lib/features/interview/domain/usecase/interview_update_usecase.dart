import 'package:atwoz_app/features/interview/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InterviewUpdateUseCase {
  final Ref ref;

  const InterviewUpdateUseCase(this.ref);

  Future<void> call({
    required int answerId,
    required String answerContent,
  }) async {
    await ref.read(interviewRepositoryProvider).updateAnswer(
          answerId: answerId,
          answerContent: answerContent,
        );
  }
}
