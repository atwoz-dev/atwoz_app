import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_optional_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_create_submit_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_required_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_soulmate_fetch_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'exam_state.dart';

part 'exam_notifier.g.dart';

@riverpod
class ExamNotifier extends _$ExamNotifier {
  @override
  ExamState build() {
    return ExamState.initial();
  }

  void setOptional(bool isRequired) {
    state = state.copyWith(isRequired: isRequired);
  }

  void setExamDone() {
    state = state.copyWith(isDone: true);
  }

  void setCurrentSubjectIndex(int index) {
    state = state.copyWith(
      currentSubjectIndex: index,
    );
  }

  void resetCurrentSubjectIndex() {
    state = state.copyWith(currentSubjectIndex: 0);
  }

  Map<String, dynamic> buildFinalPayload(
    Map<int, int> answerList,
    int subjectId,
  ) {
    final answers = answerList.entries.map((entry) {
      return {
        "questionId": entry.key,
        "answerId": entry.value,
      };
    }).toList();

    return {
      "subjectId": subjectId,
      "answers": answers,
    };
  }

  Future<void> fetchRequiredQuestionList() async {
    if (state.isRequiredDataLoaded) return;

    try {
      final requiredQuestionList = await ExamRequiredFetchUseCase(ref).call();

      state = state.copyWith(
        questionList: QuestionData(questionList: requiredQuestionList),
        isLoaded: true,
        isRequiredDataLoaded: true,
        currentSubjectIndex: 0,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: QuestionListErrorType.network,
      );
    }
  }

  Future<void> fetchOptionalQuestionList() async {
    state = state.copyWith(isLoaded: false);
    try {
      final optionalQuestionList = await ExamOptionalFetchUseCase(ref).call();

      state = state.copyWith(
        questionList: QuestionData(questionList: optionalQuestionList),
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: QuestionListErrorType.network,
      );
    }
  }

  Future<void> fetchSoulmateList() async {
    state = state.copyWith(isLoaded: false);
    try {
      final examSoulmateList = await ExamSoulmateFetchUseCase(ref).call();

      state = state.copyWith(
        soulmateList: SoulmateData(soulmateList: examSoulmateList),
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: QuestionListErrorType.network,
      );
    }
  }

  Future<void> createSubmitAnswerList(
    SubjectAnswerItem request,
  ) async {
    try {
      await ExamCreateSubmitUsecase(ref).call(
        request: request,
      );
    } catch (e) {
      Log.e(e);
    }
  }
}
