// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterviewAnswerRequest _$InterviewAnswerRequestFromJson(
  Map<String, dynamic> json,
) => _InterviewAnswerRequest(
  interviewQuestionId: (json['interviewQuestionId'] as num).toInt(),
  answerContent: json['answerContent'] as String,
);

Map<String, dynamic> _$InterviewAnswerRequestToJson(
  _InterviewAnswerRequest instance,
) => <String, dynamic>{
  'interviewQuestionId': instance.interviewQuestionId,
  'answerContent': instance.answerContent,
};
