import 'package:atwoz_app/features/exam/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';

class ExamSoulmateFetchUseCase {
  final Ref ref;

  const ExamSoulmateFetchUseCase(this.ref);

  Future<List<IntroducedProfileDto>> call() async {
    final response = await ref.read(examRepositoryProvider).getSolumateList();

    return response;
  }
}
