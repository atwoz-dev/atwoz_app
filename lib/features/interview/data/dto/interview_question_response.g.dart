// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterviewQuestionResponse _$InterviewQuestionResponseFromJson(
  Map<String, dynamic> json,
) => _InterviewQuestionResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => InterviewQuestionItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$InterviewQuestionResponseToJson(
  _InterviewQuestionResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_InterviewQuestionItem _$InterviewQuestionItemFromJson(
  Map<String, dynamic> json,
) => _InterviewQuestionItem(
  questionId: (json['questionId'] as num).toInt(),
  questionContent: json['questionContent'] as String,
  category: $enumDecode(_$InterviewCategoryEnumMap, json['category']),
  isAnswered: json['isAnswered'] as bool,
  answerId: (json['answerId'] as num?)?.toInt(),
  answerContent: json['answerContent'] as String?,
);

Map<String, dynamic> _$InterviewQuestionItemToJson(
  _InterviewQuestionItem instance,
) => <String, dynamic>{
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
