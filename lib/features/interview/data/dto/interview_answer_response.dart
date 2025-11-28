import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_answer_response.freezed.dart';
part 'interview_answer_response.g.dart';

@freezed
abstract class InterviewAnswerResponse with _$InterviewAnswerResponse {
  const factory InterviewAnswerResponse({
    required int status,
    required String code,
    required String message,
    required InterviewAnswerResponseData data,
  }) = _InterviewAnswerResponse;

  factory InterviewAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$InterviewAnswerResponseFromJson(json);
}

@freezed
abstract class InterviewAnswerResponseData with _$InterviewAnswerResponseData {
  const factory InterviewAnswerResponseData({
    required bool hasProcessedMission,
  }) = _InterviewAnswerResponseData;

  factory InterviewAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$InterviewAnswerResponseDataFromJson(json);
}
