import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_optional_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_create_submit_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_remove_blur_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_required_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_soulmate_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_recommend_fetch_usecase.dart';
import 'package:atwoz_app/features/home/presentation/widget/category/heart_shortage_dialog.dart';
import 'package:atwoz_app/features/home/presentation/widget/category/unlock_with_heart_dialog.dart';
import 'package:atwoz_app/features/store/domain/usecase/store_fetch_usecase.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/features/exam/domain/model/subject_answer.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';

import 'exam_state.dart';

part 'exam_notifier.g.dart';

@Riverpod(keepAlive: true)
class ExamNotifier extends _$ExamNotifier {
  @override
  ExamState build() {
    Future.microtask(() => _fetchRequiredQuestionList());
    return ExamState.initial();
  }

  void selectAnswer(int questionId, int answerId) {
    final updatedAnswers = Map<int, int>.from(state.currentAnswerList)
      ..[questionId] = answerId;
    state = state.copyWith(currentAnswerList: updatedAnswers);
  }

  Future<void> submitCurrentSubject({required BuildContext context}) async {
    final payload = SubjectAnswer(
      subjectId: state.currentSubjectIndex + 1,
      answers: state.currentAnswerList.entries
          .map((e) => QuestionAnswer(questionId: e.key, answerId: e.value))
          .toList(),
    );

    state = state.copyWith(isLoaded: false);

    await _submitAnswers(payload);
    await fetchSoulmateList(isResult: true);

    // 마지막 과목인지
    if (isLastSubject) {
      state = state.copyWith(
        isSubjectOptional: true,
        isDone: state.isSubjectOptional ? true : false,
        currentAnswerList: {},
        isLoaded: true,
      );
      navigate(context, route: AppRoute.examResult);
      return;
    }

    // 결과 데이터가 있으면 결과 페이지로
    if (state.hasResultData && !state.isSubjectOptional) {
      state = state.copyWith(isLoaded: true);
      navigate(context, route: AppRoute.examResult);
      return;
    }

    nextSubject();
    state = state.copyWith(isLoaded: true);
  }

  Future<void> _submitAnswers(SubjectAnswer payload) async {
    try {
      await ExamCreateSubmitUsecase(ref).call(request: payload);
    } catch (e) {
      Log.e('답안 제출 실패: $e');
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
      currentAnswerList: {},
      currentPage: 0,
    );
  }

  void resetCurrentSubjectIndex() {
    state = state.copyWith(
      currentSubjectIndex: 0,
      currentAnswerList: {},
      currentPage: 0,
    );
  }

  void setCurrentSubjectIndex(int index) {
    state = state.copyWith(
      currentSubjectIndex: index,
      currentAnswerList: {},
      currentPage: 0,
    );
  }

  bool get isLastSubject =>
      state.currentSubjectIndex == state.questionList.questionList.length - 1;

  void setSubjectOptional(bool isOptional) {
    state = state.copyWith(isSubjectOptional: isOptional);
  }

  void setExamDone() {
    state = state.copyWith(isDone: true);
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

  Future<void> openProfile({required int memberId}) async {
    try {
      await ExamRemoveBlurUsecase(ref).call(memberId: memberId);

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

  /// 유저 하트 조회
  Future<int> fetchUserHeartBalance() async {
    try {
      final heartBalance = await HeartBalanceFetchUseCase(ref).call();
      return heartBalance.totalHeartBalance;
    } catch (e) {
      Log.e('하트 조회 실패: $e');
      return 0;
    }
  }
}

/// 프로필 탭 핸들링 extension
extension ExamNotifierProfile on ExamNotifier {
  Future<void> handleProfileTap({
    required BuildContext context,
    required IntroducedProfile profile,
    required bool isBlurred,
    required bool isMale,
  }) async {
    if (isBlurred) {
      final heartBalance = await fetchUserHeartBalance();
      if (!context.mounted) return;

      if (heartBalance < Dimens.examProfileOpenHeartCount) {
        showDialog(
          context: context,
          builder: (_) => HeartShortageDialog(heartBalance: heartBalance),
        );
        return;
      }

      final pressed = await showDialog<bool>(
        context: context,
        builder: (_) => UnlockWithHeartDialog(
          description: "프로필을 미리보기 하시겠습니까?",
          heartBalance: heartBalance,
          isMale: isMale,
        ),
      );

      if (pressed != true) return;

      await openProfile(memberId: profile.memberId);
      if (!context.mounted) return;
    }

    navigate(
      context,
      route: AppRoute.profile,
      extra: ProfileDetailArguments(userId: profile.memberId),
    );
  }
}
