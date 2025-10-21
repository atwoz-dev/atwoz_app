// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamQuestionResponseImpl _$$ExamQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExamQuestionResponseImpl(
      status: (json['status'] as num).toInt(),
      code: json['code'] as String,
      message: json['message'] as String,
      data: ExamQuestionItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExamQuestionResponseImplToJson(
        _$ExamQuestionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ExamQuestionItemImpl _$$ExamQuestionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ExamQuestionItemImpl(
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => SubjectItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExamQuestionItemImplToJson(
        _$ExamQuestionItemImpl instance) =>
    <String, dynamic>{
      'subjects': instance.subjects,
    };

_$SubjectItemImpl _$$SubjectItemImplFromJson(Map<String, dynamic> json) =>
    _$SubjectItemImpl(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$ExamTypeEnumMap, json['type']),
      name: json['name'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectItemImplToJson(_$SubjectItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ExamTypeEnumMap[instance.type]!,
      'name': instance.name,
      'questions': instance.questions,
    };

const _$ExamTypeEnumMap = {
  ExamType.required: 'REQUIRED',
  ExamType.optional: 'OPTIONAL',
};

_$QuestionItemImpl _$$QuestionItemImplFromJson(Map<String, dynamic> json) =>
    _$QuestionItemImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionItemImplToJson(_$QuestionItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answers': instance.answers,
    };

_$AnswerItemImpl _$$AnswerItemImplFromJson(Map<String, dynamic> json) =>
    _$AnswerItemImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$AnswerItemImplToJson(_$AnswerItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
    };
