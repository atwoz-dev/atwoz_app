// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterviewQuestionResponseImpl _$$InterviewQuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InterviewQuestionResponseImpl(
      status: (json['status'] as num).toInt(),
      code: json['code'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => InterviewQuestionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InterviewQuestionResponseImplToJson(
        _$InterviewQuestionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$InterviewQuestionItemImpl _$$InterviewQuestionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$InterviewQuestionItemImpl(
      questionId: (json['questionId'] as num).toInt(),
      questionContent: json['questionContent'] as String,
      category: $enumDecode(_$InterviewCategoryEnumMap, json['category']),
      isAnswered: json['isAnswered'] as bool,
      answerId: (json['answerId'] as num?)?.toInt(),
      answerContent: json['answerContent'] as String?,
    );

Map<String, dynamic> _$$InterviewQuestionItemImplToJson(
        _$InterviewQuestionItemImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionContent': instance.questionContent,
      'category': _$InterviewCategoryEnumMap[instance.category]!,
      'isAnswered': instance.isAnswered,
      'answerId': instance.answerId,
      'answerContent': instance.answerContent,
    };

const _$InterviewCategoryEnumMap = {
  InterviewCategory.personal: 'PERSONAL',
  InterviewCategory.social: 'SOCIAL',
  InterviewCategory.romantic: 'ROMANTIC',
};
