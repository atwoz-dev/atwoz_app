import 'package:atwoz_app/features/interview/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_state.freezed.dart';

enum InterviewListErrorType {
  network,
}

@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState({
    @Default(InterviewData()) InterviewData questionList,
    @Default(false) bool isLoaded,
    InterviewListErrorType? error,
  }) = _InterviewState;

  const InterviewState._();

  factory InterviewState.initial() => const InterviewState();
}

class InterviewData {
  const InterviewData({
    this.questionList = const [],
  });

  final List<InterviewQuestionItem> questionList;

  InterviewData copyWith({
    List<InterviewQuestionItem>? questionList,
  }) {
    return InterviewData(
      questionList: questionList ?? this.questionList,
    );
  }
}
