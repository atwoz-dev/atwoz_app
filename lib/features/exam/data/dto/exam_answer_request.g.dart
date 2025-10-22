// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectAnswerItem _$SubjectAnswerItemFromJson(Map<String, dynamic> json) =>
    _SubjectAnswerItem(
      subjectId: (json['subjectId'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => QuestionAnswerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubjectAnswerItemToJson(_SubjectAnswerItem instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'answers': instance.answers,
    };

_QuestionAnswerItem _$QuestionAnswerItemFromJson(Map<String, dynamic> json) =>
    _QuestionAnswerItem(
      questionId: (json['questionId'] as num).toInt(),
      answerId: (json['answerId'] as num).toInt(),
    );

Map<String, dynamic> _$QuestionAnswerItemToJson(_QuestionAnswerItem instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answerId': instance.answerId,
    };
