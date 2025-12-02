import 'package:deepple_app/features/interview/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_state.freezed.dart';

enum InterviewListErrorType { network }

@freezed
abstract class InterviewState with _$InterviewState {
  const factory InterviewState({
    @Default(InterviewData()) InterviewData questionList,
    @Default(false) bool isLoaded,
    InterviewListErrorType? error,
  }) = _InterviewState;

  const InterviewState._();

  factory InterviewState.initial() => const InterviewState();
}

@freezed
abstract class InterviewData with _$InterviewData {
  const factory InterviewData({
    @Default([]) List<InterviewQuestionItem> questionList,
  }) = _InterviewData;
}
