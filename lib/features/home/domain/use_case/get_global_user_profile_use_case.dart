import 'package:atwoz_app/app/state/global_user_profile.dart';
import 'package:atwoz_app/features/home/data/mapper/global_user_profile_mapper.dart';
import 'package:atwoz_app/features/home/data/repository/home_profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final getGlobalUserProfileUseCaseProvider =
    FutureProvider<GetGlobalUserProfileUseCase>((ref) =>
        GetGlobalUserProfileUseCase(ref.read(homeProfileRepositoryProvider)));

class GetGlobalUserProfileUseCase {
  final HomeProfileRepository repository;

  GetGlobalUserProfileUseCase(this.repository);

  Future<GlobalUserProfile> execute() async {
    final box = await Hive.openBox<GlobalUserProfile>('GlobalUserProfileBox');

    if (box.isNotEmpty) {
      return box.getAt(0)!;
    } else {
      try {
        final profile = await repository.getProfile();
        final globalUserProfile = profile.toGlobalUserProfile();
        await box.add(globalUserProfile);
        return globalUserProfile;
      } catch (e) {
        // 예외 처리: 서버 응답이 유효하지 않거나 필수 프로필 항목이 누락된 경우
        throw Exception('서버 응답 오류: $e');
      }
    }
  }
}
