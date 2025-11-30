// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_answer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InterviewAnswerResponse _$InterviewAnswerResponseFromJson(
  Map<String, dynamic> json,
) => _InterviewAnswerResponse(
  status: (json['status'] as num).toInt(),
  code: json['code'] as String,
  message: json['message'] as String,
  data: InterviewAnswerResponseData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$InterviewAnswerResponseToJson(
  _InterviewAnswerResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_InterviewAnswerResponseData _$InterviewAnswerResponseDataFromJson(
  Map<String, dynamic> json,
) => _InterviewAnswerResponseData(
  hasProcessedMission: json['hasProcessedMission'] as bool,
);

Map<String, dynamic> _$InterviewAnswerResponseDataToJson(
  _InterviewAnswerResponseData instance,
) => <String, dynamic>{'hasProcessedMission': instance.hasProcessedMission};
