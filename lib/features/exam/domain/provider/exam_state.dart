import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:atwoz_app/features/store/domain/provider/store_state.dart';
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
    @Default(false) bool hasResultData,
    @Default(StoreData()) StoreData heartBalance,
    QuestionListErrorType? error,
  }) = _ExamState;

  const ExamState._();

  factory ExamState.initial() => const ExamState();

  int get totalHeartBalance => heartBalance.heartBalance.totalHeartBalance;
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
    @Default([]) List<IntroducedProfile> soulmateList,
  }) = _SoulmateData;
}
