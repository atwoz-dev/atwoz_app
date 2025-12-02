import 'package:deepple_app/features/home/domain/model/cached_user_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

final saveInterviewToHiveUseCaseProvider = Provider.autoDispose(
  (ref) => SaveInterviewToHiveUseCase(),
);

class SaveInterviewToHiveUseCase {
  SaveInterviewToHiveUseCase();

  Future<void> execute({
    required int questionId,
    required String title,
    required String content,
  }) async {
    final box = await Hive.openBox<CachedUserProfile>(
      CachedUserProfile.boxName,
    );

    try {
      final profile = box.get('profile');
      if (profile == null) {
        throw Exception('Profile data not found');
      }

      final updatedList = List<InterviewInfo>.from(profile.interviewInfoView);
      final existingIndex = updatedList.indexWhere(
        (info) => info.questionId == questionId,
      );

      if (existingIndex != -1) {
        updatedList[existingIndex] = InterviewInfo(
          questionId: questionId,
          title: title,
          content: content,
        );
      } else {
        updatedList.add(
          InterviewInfo(questionId: questionId, title: title, content: content),
        );
      }

      final updatedProfile = profile.copyWith(interviewInfoView: updatedList);

      await box.put('profile', updatedProfile);
    } catch (e) {
      rethrow;
    } finally {
      await box.close();
    }
  }
}
