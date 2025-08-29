import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/exam/data/dto/exam_answer_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/exam/data/dto/exam_question_response.dart';

final examRepositoryProvider = Provider<ExamRepository>((ref) {
  return ExamRepository(ref);
});

class ExamRepository extends BaseRepository {
  ExamRepository(Ref ref) : super(ref, '/dating-exam');

  /// 필수과목 목록 조회 API
  Future<List<SubjectItem>> getRequiredQuestionList() async {
    try {
      final response = await apiService.getJson<Map<String, dynamic>>(
        '$path/required',
      );

      final result = ExamQuestionResponse.fromJson(response);

      return result.data.subjects;
    } catch (e) {
      Log.e(e);
      return [];
    }
  }

  /// 선택과목 목록 조회 API
  Future<List<SubjectItem>> getOptionalQuestionList() async {
    try {
      final response = await apiService.getJson<Map<String, dynamic>>(
        '$path/optional',
      );

      final result = ExamQuestionResponse.fromJson(response);

      return result.data.subjects;
    } catch (e) {
      Log.e(e);
      return [];
    }
  }

  /// 필수과목 답변 제출 API
  Future<void> createRequiredAnswerList({
    required ExamAnswerRequest request,
  }) async {
    await apiService.postJson(
      '$path/required/submit',
      data: request.toJson(),
    );
  }

  /// 선택과목 답변 제출 API
  Future<void> createOptionalAnswerList({
    required ExamAnswerRequest request,
  }) async {
    await apiService.postJson(
      '$path/optional/submit',
      data: request.toJson(),
    );
  }
}
