import 'package:atwoz_app/core/network/base_repository.dart';
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
    final response = await apiService.getJson<Map<String, dynamic>>(
      '$path/question',
      queryParameters: {
        'category': category.name.toUpperCase(),
      },
      requiresAuthToken: true,
    );

    final result = InterviewQuestionResponse.fromJson(response);

    return result.data;
  }
}
