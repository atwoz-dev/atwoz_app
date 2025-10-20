import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_optional_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_create_submit_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_remove_blur_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_required_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_soulmate_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_recommend_fetch_usecase.dart';
import 'package:atwoz_app/features/store/domain/usecase/store_fetch_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/features/exam/domain/model/subject_answer.dart';

import 'exam_state.dart';

part 'exam_notifier.g.dart';

enum ExamSubmitResult { nextSubject, examFinished, showResult, error }

@Riverpod(keepAlive: true)
class ExamNotifier extends _$ExamNotifier {
  @override
  ExamState build() {
    Future.microtask(() => _fetchRequiredQuestionList());
    return ExamState.initial();
  }

  bool get isLastSubject =>
      state.currentSubjectIndex == state.questionList.questionList.length - 1;

  void selectAnswer(int questionId, int answerId) {
    final updatedAnswers = Map<int, int>.from(state.currentAnswerMap)
      ..[questionId] = answerId;
    state = state.copyWith(currentAnswerMap: updatedAnswers);
  }

  Future<ExamSubmitResult> submitCurrentSubject() async {
    try {
      final currentSubject =
          state.questionList.questionList[state.currentSubjectIndex];

      final payload = SubjectAnswer(
        subjectId: currentSubject.id,
        answers: state.currentAnswerMap.entries
            .map((e) => QuestionAnswer(questionId: e.key, answerId: e.value))
            .toList(),
      );

      state = state.copyWith(isLoaded: false);
      await _submitAnswers(payload);
      await fetchSoulmateList(isResult: true);

      if (isLastSubject) {
        state = state.copyWith(
          isSubjectOptional: true,
          isDone: state.isSubjectOptional ? true : false,
          currentAnswerMap: {},
          isLoaded: true,
        );
        return ExamSubmitResult.examFinished;
      }

      if (state.hasResultData && !state.isSubjectOptional) {
        state = state.copyWith(isLoaded: true);
        return ExamSubmitResult.showResult;
      }

      nextSubject();
      state = state.copyWith(isLoaded: true);
      return ExamSubmitResult.nextSubject;
    } catch (e) {
      Log.e('submit error: $e');
      state = state.copyWith(isLoaded: true);
      return ExamSubmitResult.error;
    }
  }

  void nextPage() {
    final currentSubject =
        state.questionList.questionList[state.currentSubjectIndex];
    if (state.currentPage < currentSubject.questions.length - 1) {
      state = state.copyWith(currentPage: state.currentPage + 1);
    }
  }

  void previousPage() {
    if (state.currentPage > 0) {
      state = state.copyWith(currentPage: state.currentPage - 1);
    }
  }

  void nextSubject() {
    state = state.copyWith(
      currentSubjectIndex: state.currentSubjectIndex + 1,
      currentAnswerMap: {},
      currentPage: 0,
    );
  }

  void resetCurrentSubjectIndex() {
    state = state.copyWith(
      currentSubjectIndex: 0,
      currentAnswerMap: {},
      currentPage: 0,
    );
  }

  void setCurrentSubjectIndex(int index) {
    state = state.copyWith(
      currentSubjectIndex: index,
      currentAnswerMap: {},
      currentPage: 0,
    );
  }

  void setSubjectOptional(bool isOptional) {
    state = state.copyWith(isSubjectOptional: isOptional);
  }

  void setExamDone() {
    state = state.copyWith(isDone: true);
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
      state =
          state.copyWith(isLoaded: true, error: QuestionListErrorType.network);
    }
  }

  Future<void> fetchSoulmateList({bool isResult = false}) async {
    state = state.copyWith(isLoaded: false);
    try {
      final examSoulmateList = await ExamSoulmateFetchUseCase(ref).call();
      final hasResultData = examSoulmateList.isNotEmpty;

      if (isResult && !hasResultData) {
        await fetchRecommendList();
        return;
      }

      state = state.copyWith(
        soulmateList: SoulmateData(soulmateList: examSoulmateList),
        hasResultData: hasResultData,
        hasSoulmate: true,
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state =
          state.copyWith(isLoaded: true, error: QuestionListErrorType.network);
    }
  }

  Future<void> fetchRecommendList() async {
    state = state.copyWith(isLoaded: false);
    try {
      final examRecommendList = await ExamRecommendFetchUseCase(ref).call();
      final hasResultData = examRecommendList.isNotEmpty;

      state = state.copyWith(
        soulmateList: SoulmateData(soulmateList: examRecommendList),
        hasResultData: hasResultData,
        hasSoulmate: false,
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e(e);
      state =
          state.copyWith(isLoaded: true, error: QuestionListErrorType.network);
    }
  }

  Future<void> openProfile(
      {required int memberId, required bool isSoulmate}) async {
    try {
      final success = await ExamRemoveBlurUsecase(ref)
          .call(memberId: memberId, isSoulmate: isSoulmate);

      if (!success) return;

      final updatedList = state.soulmateList.soulmateList
          .map((profile) => profile.memberId == memberId
              ? profile.copyWith(isIntroduced: true)
              : profile)
          .toList();

      state = state.copyWith(
        soulmateList: state.soulmateList.copyWith(soulmateList: updatedList),
      );
    } catch (e) {
      Log.e('프로필 블러 제거 실패: $e');
    }
  }

  Future<int> fetchUserHeartBalance() async {
    try {
      final heartBalance = await HeartBalanceFetchUseCase(ref).call();
      return heartBalance.totalHeartBalance;
    } catch (e) {
      Log.e('하트 조회 실패: $e');
      return 0;
    }
  }

  Future<void> _fetchRequiredQuestionList() async {
    if (state.isRequiredDataLoaded) return;
    state = state.copyWith(isLoaded: false);

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
      state =
          state.copyWith(isLoaded: true, error: QuestionListErrorType.network);
    }
  }

  Future<void> _submitAnswers(SubjectAnswer payload) async {
    try {
      await ExamCreateSubmitUsecase(ref).call(request: payload);
    } catch (e) {
      Log.e('답안 제출 실패: $e');
      rethrow;
    }
  }
}
