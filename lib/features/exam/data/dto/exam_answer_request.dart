import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:atwoz_app/features/exam/domain/model/subject_answer.dart';

part 'exam_answer_request.freezed.dart';
part 'exam_answer_request.g.dart';

@freezed
abstract class SubjectAnswerItem with _$SubjectAnswerItem {
  const factory SubjectAnswerItem({
    required int subjectId,
    required List<QuestionAnswerItem> answers,
  }) = _SubjectAnswerItem;

  factory SubjectAnswerItem.fromDomain(SubjectAnswer domain) =>
      SubjectAnswerItem(
        subjectId: domain.subjectId,
        answers: domain.answers.map(QuestionAnswerItem.fromDomain).toList(),
      );

  const SubjectAnswerItem._();

  SubjectAnswer toDomain() => SubjectAnswer(
    subjectId: subjectId,
    answers: answers.map((e) => e.toDomain()).toList(),
  );

  factory SubjectAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$SubjectAnswerItemFromJson(json);
}

@freezed
abstract class QuestionAnswerItem with _$QuestionAnswerItem {
  const factory QuestionAnswerItem({
    required int questionId,
    required int answerId,
  }) = _QuestionAnswerItem;

  factory QuestionAnswerItem.fromDomain(QuestionAnswer domain) =>
      QuestionAnswerItem(
        questionId: domain.questionId,
        answerId: domain.answerId,
      );

  const QuestionAnswerItem._();

  QuestionAnswer toDomain() =>
      QuestionAnswer(questionId: questionId, answerId: answerId);

  factory QuestionAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerItemFromJson(json);
}
