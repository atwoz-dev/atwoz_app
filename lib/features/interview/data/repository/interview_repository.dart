import 'package:atwoz_app/core/network/base_repository.dart';
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
  Future<List<InterviewItem>> fetchQuestions({
    required InterviewCategory category,
  }) async {
    final response = await apiService.getJson<Map<String, dynamic>>(
      '$path/question',
      queryParameters: {
        'category': category.name.toUpperCase(),
      },
      requiresRefreshToken: true,
    );

    final result = InterviewQuestionResponse.fromJson(response);

    return result.data;
  }

  /// 인터뷰 질문 상세 조회 API
  // TODO(gb): 필요한가? 백엔드 분한테 용도 확인 필요
  Future<InterviewItem> fetchQuestionDetail({
    required int id,
  }) async {
    final response = await apiService.getJson<Map<String, dynamic>>(
      '$path/question/$id',
    );

    final result = InterviewQuestionResponse.fromJson(response);
    return result.data.first;
  }

  /// 인터뷰 답변 등록 API
  Future<void> submitAnswer({
    required int questionId,
    required String answerContent,
  }) async {
    final request = InterviewAnswerRequest(
      interviewQuestionId: questionId,
      answerContent: answerContent,
    );

    await apiService.postJson(
      '$path/answer',
      data: request.toJson(),
    );
  }

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
