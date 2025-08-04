import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/interview/data/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'interview_state.dart';

part 'interview_notifier.g.dart';

@riverpod
class InterviewNotifier extends _$InterviewNotifier {
  @override
  InterviewState build() {
    _initializeInterviewQuestionList();
    return InterviewState.initial();
  }

  Future<void> _initializeInterviewQuestionList() async {
    try {
      final repository = ref.read(interviewRepositoryProvider);
      final questionList = await repository.getQuestionList(
        category: InterviewCategory.personal,
      );

      state = state.copyWith(
        questionList: InterviewData(questionList: questionList),
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: InterviewListErrorType.network,
      );
    }
  }
}
