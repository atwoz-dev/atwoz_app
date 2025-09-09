import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_answer_request.freezed.dart';
part 'exam_answer_request.g.dart';

@freezed
class SubjectAnswerItem with _$SubjectAnswerItem {
  const factory SubjectAnswerItem({
    required int subjectId,
    required List<QuestionAnswerItem> answers,
  }) = _SubjectAnswerItem;

  factory SubjectAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$SubjectAnswerItemFromJson(json);
}

@freezed
class QuestionAnswerItem with _$QuestionAnswerItem {
  const factory QuestionAnswerItem({
    required int questionId,
    required int answerId,
  }) = _QuestionAnswerItem;

  factory QuestionAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerItemFromJson(json);
}
