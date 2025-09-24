// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterviewAnswerRequestImpl _$$InterviewAnswerRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$InterviewAnswerRequestImpl(
      interviewQuestionId: (json['interviewQuestionId'] as num).toInt(),
      answerContent: json['answerContent'] as String,
    );

Map<String, dynamic> _$$InterviewAnswerRequestImplToJson(
        _$InterviewAnswerRequestImpl instance) =>
    <String, dynamic>{
      'interviewQuestionId': instance.interviewQuestionId,
      'answerContent': instance.answerContent,
    };
