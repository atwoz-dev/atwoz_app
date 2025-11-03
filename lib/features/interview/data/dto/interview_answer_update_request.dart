import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_answer_update_request.freezed.dart';
part 'interview_answer_update_request.g.dart';

@freezed
abstract class InterviewAnswerUpdateRequest with _$InterviewAnswerUpdateRequest {
  const factory InterviewAnswerUpdateRequest({
    required String answerContent,
  }) = _InterviewAnswerUpdateRequest;

  factory InterviewAnswerUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$InterviewAnswerUpdateRequestFromJson(json);
}
