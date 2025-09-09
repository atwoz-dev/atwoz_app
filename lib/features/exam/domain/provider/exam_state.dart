import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_state.freezed.dart';

enum QuestionListErrorType {
  network,
}

@freezed
class ExamState with _$ExamState {
  const factory ExamState({
    @Default(QuestionData()) QuestionData questionList,
    @Default(SoulmateData()) SoulmateData soulmateList,
    @Default(0) int currentSubjectIndex,
    @Default(true) bool isRequired,
    @Default(false) bool isDone,
    @Default(false) bool isLoaded,
    @Default(false) bool isRequiredDataLoaded,
    QuestionListErrorType? error,
  }) = _ExamState;

  const ExamState._();

  factory ExamState.initial() => const ExamState();
}

@freezed
class QuestionData with _$QuestionData {
  const factory QuestionData({
    @Default([]) List<SubjectItem> questionList,
  }) = _QuestionData;
}

@freezed
class SoulmateData with _$SoulmateData {
  const factory SoulmateData({
    @Default([]) List<IntroducedProfileDto> soulmateList,
  }) = _SoulmateData;
}
