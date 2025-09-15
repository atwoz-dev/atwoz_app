import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_optional_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_create_submit_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_remove_blur_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_required_fetch_usecase.dart';
import 'package:atwoz_app/features/exam/domain/usecase/exam_soulmate_fetch_usecase.dart';
import 'package:atwoz_app/features/store/domain/provider/store_state.dart';
import 'package:atwoz_app/features/store/domain/usecase/store_fetch_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'exam_state.dart';

part 'exam_notifier.g.dart';

@riverpod
class ExamNotifier extends _$ExamNotifier {
  @override
  ExamState build() {
    return ExamState.initial();
  }

  void setSubjectOptional(bool isSubjectOptional) {
    state = state.copyWith(isSubjectOptional: isSubjectOptional);
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
    state = state.copyWith(isLoaded: false);

    try {
      final requiredQuestionList = await ExamRequiredFetchUseCase(ref).call();

      await Future.delayed(const Duration(seconds: 1));

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
      final hasResultData = examSoulmateList.isNotEmpty;

      await Future.delayed(const Duration(seconds: 1));

      state = state.copyWith(
        soulmateList: SoulmateData(soulmateList: examSoulmateList),
        hasResultData: hasResultData,
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

  /// 프로필 미리보기
  Future<void> openProfile({
    required int memberId,
  }) async {
    try {
      await ExamRemoveBlurUsecase(ref).call(memberId: memberId);

      // 기존 리스트
      final currentList = state.soulmateList.soulmateList;

      // 업데이트된 리스트 생성
      final updatedList = currentList
          .map((profile) => profile.memberId == memberId
              ? profile.copyWith(isIntroduced: true)
              : profile)
          .toList();

      state = state.copyWith(
        soulmateList: state.soulmateList.copyWith(
          soulmateList: updatedList,
        ),
      );
    } catch (e) {
      Log.e('프로필 블러 제거 실패: $e');
    }
  }

  // 보유하트 조회
  Future<void> fetchUserHeartBalance() async {
    try {
      final heartBalance = await HeartBalanceFetchUseCase(ref).call();

      state = state.copyWith(
        heartBalance: StoreData(heartBalance: heartBalance),
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
}
