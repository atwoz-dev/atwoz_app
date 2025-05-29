import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_answer_request.freezed.dart';
part 'interview_answer_request.g.dart';

@freezed
class InterviewAnswerRequest with _$InterviewAnswerRequest {
  const factory InterviewAnswerRequest({
    required int interviewQuestionId,
    required String answerContent,
  }) = _InterviewAnswerRequest;

  factory InterviewAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$InterviewAnswerRequestFromJson(json);
}
