import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_introduced_profiles_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamRecommendFetchUseCase {
  final Ref ref;

  const ExamRecommendFetchUseCase(this.ref);

  Future<List<IntroducedProfile>> call() async {
    final response = await ref.read(examRepositoryProvider).getRecommendList();

    return convertToIntroducedProfiles(response);
  }
}
