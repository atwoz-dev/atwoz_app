import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_state.freezed.dart';

@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState({
    required Map<String, String> answers, // 질문 ID와 답변을 관리
  }) = _InterviewState;

  factory InterviewState.initial() => const InterviewState(
        answers: {},
      );
}
