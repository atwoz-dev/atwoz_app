import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_question_response.freezed.dart';
part 'interview_question_response.g.dart';

@freezed
class InterviewQuestionResponse with _$InterviewQuestionResponse {
  const factory InterviewQuestionResponse({
    required int status,
    required String code,
    required String message,
    required List<InterviewItem> data,
  }) = _InterviewQuestionResponse;

  factory InterviewQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$InterviewQuestionResponseFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.none)
enum InterviewCategory {
  @JsonValue("PERSONAL")
  personal,

  @JsonValue("SOCIAL")
  social,

  @JsonValue("ROMANTIC")
  romantic,
}

@freezed
class InterviewItem with _$InterviewItem {
  const factory InterviewItem({
    required int questionId,
    required String questionContent,
    required InterviewCategory category,
    required bool isAnswered,
    int? answerId,
    String? answerContent,
  }) = _InterviewItem;

  factory InterviewItem.fromJson(Map<String, dynamic> json) =>
      _$InterviewItemFromJson(json);
}
