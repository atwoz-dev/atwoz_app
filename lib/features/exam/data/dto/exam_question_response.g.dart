// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExamQuestionResponse _$ExamQuestionResponseFromJson(
  Map<String, dynamic> json,
) => _ExamQuestionResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: ExamQuestionItem.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ExamQuestionResponseToJson(
  _ExamQuestionResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_ExamQuestionItem _$ExamQuestionItemFromJson(Map<String, dynamic> json) =>
    _ExamQuestionItem(
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => SubjectItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExamQuestionItemToJson(_ExamQuestionItem instance) =>
    <String, dynamic>{'subjects': instance.subjects};

_SubjectItem _$SubjectItemFromJson(Map<String, dynamic> json) => _SubjectItem(
  id: (json['id'] as num).toInt(),
  type: $enumDecode(_$ExamTypeEnumMap, json['type']),
  name: json['name'] as String,
  questions: (json['questions'] as List<dynamic>)
      .map((e) => QuestionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubjectItemToJson(_SubjectItem instance) =>
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

_QuestionItem _$QuestionItemFromJson(Map<String, dynamic> json) =>
    _QuestionItem(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionItemToJson(_QuestionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answers': instance.answers,
    };

_AnswerItem _$AnswerItemFromJson(Map<String, dynamic> json) => _AnswerItem(
  id: (json['id'] as num).toInt(),
  content: json['content'] as String,
);

Map<String, dynamic> _$AnswerItemToJson(_AnswerItem instance) =>
    <String, dynamic>{'id': instance.id, 'content': instance.content};
