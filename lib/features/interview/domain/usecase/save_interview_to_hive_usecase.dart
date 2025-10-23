import 'package:atwoz_app/core/storage/local_storage.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:hive/hive.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final saveInterviewToHiveUseCaseProvider = Provider.autoDispose(
  (ref) => SaveInterviewToHiveUseCase(
    localStorage: ref.read(localStorageProvider),
  ),
);

class SaveInterviewToHiveUseCase {
  final LocalStorage _localStorage;

  SaveInterviewToHiveUseCase({required LocalStorage localStorage})
      : _localStorage = localStorage;

  Future<void> execute({
    required int questionId,
    required String title,
    required String content,
  }) async {
    try {
      final box = await Hive.openBox<CachedUserProfile>(
        CachedUserProfile.boxName,
      );

      final profile = box.get('profile');
      if (profile == null) {
        throw Exception('프로필 데이터가 없습니다.');
      }

      final updatedList = List<InterviewInfo>.from(profile.interviewInfoView);
      final existingIndex =
          updatedList.indexWhere((info) => info.questionId == questionId);

      if (existingIndex != -1) {
        updatedList[existingIndex] = InterviewInfo(
            questionId: questionId, title: title, content: content);
      } else {
        updatedList.add(InterviewInfo(
            questionId: questionId, title: title, content: content));
      }

      final updatedProfile = profile.copyWith(interviewInfoView: updatedList);

      await box.put('profile', updatedProfile);
    } catch (e) {
      rethrow;
    }
  }
}
