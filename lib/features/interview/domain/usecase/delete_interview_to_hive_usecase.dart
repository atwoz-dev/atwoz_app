import 'package:deepple_app/features/home/domain/model/cached_user_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

final deleteInterviewToHiveUseCaseProvider = Provider.autoDispose(
  (ref) => DeleteInterviewToHiveUseCase(),
);

class DeleteInterviewToHiveUseCase {
  DeleteInterviewToHiveUseCase();

  Future<void> execute({required int questionId}) async {
    final box = await Hive.openBox<CachedUserProfile>('profileBox');

    try {
      final profile = box.get('profile');
      if (profile == null) {
        throw Exception('Profile data not found');
      }

      final updatedList = List<InterviewInfo>.from(profile.interviewInfoView)
        ..removeWhere((info) => info.questionId == questionId);

      final updatedProfile = profile.copyWith(interviewInfoView: updatedList);

      await box.put('profile', updatedProfile);
    } catch (e) {
      rethrow;
    } finally {
      await box.close();
    }
  }
}
