// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectAnswerItemImpl _$$SubjectAnswerItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectAnswerItemImpl(
      subjectId: (json['subjectId'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => QuestionAnswerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectAnswerItemImplToJson(
        _$SubjectAnswerItemImpl instance) =>
    <String, dynamic>{
      'subjectId': instance.subjectId,
      'answers': instance.answers,
    };

_$QuestionAnswerItemImpl _$$QuestionAnswerItemImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionAnswerItemImpl(
      questionId: (json['questionId'] as num).toInt(),
      answerId: (json['answerId'] as num).toInt(),
    );

Map<String, dynamic> _$$QuestionAnswerItemImplToJson(
        _$QuestionAnswerItemImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answerId': instance.answerId,
    };
