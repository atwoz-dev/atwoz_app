import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/interview/data/dto/interview_answer_request.dart';
import 'package:atwoz_app/features/interview/data/dto/interview_answer_update_request.dart';
import 'package:atwoz_app/features/interview/data/dto/interview_question_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final interviewRepositoryProvider = Provider<InterviewRepository>((ref) {
  return InterviewRepository(ref);
});

class InterviewRepository extends BaseRepository {
  InterviewRepository(Ref ref) : super(ref, '/interview');

  /// 인터뷰 질문 목록 조회 API
  Future<List<InterviewQuestionItem>> getQuestionList({
    required InterviewCategory category,
  }) async {
    try {
      final response = await apiService.getJson<Map<String, dynamic>>(
        '$path/question',
        queryParameters: {'category': category.name.toUpperCase()},
      );

      final result = InterviewQuestionResponse.fromJson(response);

      return result.data;
    } catch (e) {
      Log.e(e);
      return [];
    }
  }

  /// 인터뷰 답변 등록 API
  Future<void> addAnswer({
    required int questionId,
    required String answerContent,
  }) async {
    final request = InterviewAnswerRequest(
      interviewQuestionId: questionId,
      answerContent: answerContent,
    );

    await apiService.postJson('$path/answer', data: request.toJson());
  }

  /// 인터뷰 답변 삭제 API
  Future<void> removeAnswer({required int answerId}) async {
    await apiService.deleteJson('$path/answer/$answerId');
  }

  /// 인터뷰 답변 수정 API
  Future<void> updateAnswer({
    required int answerId,
    required String answerContent,
  }) async {
    final request = InterviewAnswerUpdateRequest(answerContent: answerContent);

    await apiService.patchJson(
      '$path/answer/$answerId',
      data: request.toJson(),
    );
  }
}
