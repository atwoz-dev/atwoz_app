import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_optional_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_required_create_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_required_fetch_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'exam_state.dart';

part 'exam_notifier.g.dart';

@riverpod
class ExamNotifier extends _$ExamNotifier {
  @override
  ExamState build() {
    //_fetchRequiredQuestionList();
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

  Future<void> fetchRequiredQuestionList() async {
    if (state.isRequiredDataLoaded) return;

    try {
      final requiredQuestionList = await ExamRequiredFetchUseCase(ref).call();

      state = state.copyWith(
        questionList: QuestionData(questionList: requiredQuestionList),
        isLoaded: true,
        isRequiredDataLoaded: true,
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

  Future<void> createRequiredAnswerList(
    ExamAnswerRequest request,
  ) async {
    try {
      await ExamRequiredCreateUsecase(ref).call(
        request: request,
      );
    } catch (e) {
      Log.e(e);
    }
  }
}
