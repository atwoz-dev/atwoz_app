import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/provider/global_notifier.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_introduced_profiles_use_case.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduced_profiles_notifier.g.dart';

@riverpod
class IntroducedProfilesNotifier extends _$IntroducedProfilesNotifier {
  @override
  Future<List<IntroducedProfile>> build(IntroducedCategory category) async {
    try {
      final profiles = await ref
          .watch(fetchIntroducedProfilesUseCase)
          .execute(category);

      return profiles;
    } catch (e) {
      Log.e('소개 프로필 조회 실패: $e');
      return [];
    }
  }

  /// 프로필 소개받기
  Future<void> openProfile({required int memberId}) async {
    if (!state.hasValue) return;

    try {
      await _removeBlurFromProfile(memberId);

      await _updateHeartBalance();

      _updateProfileState(memberId);

      // 캐시된 데이터 삭제
      await _clearCachedProfiles();
    } catch (e, stackTrace) {
      Log.e('소개 프로필 블러 제거 실패: $e');
      state = AsyncError(e, stackTrace);
    }
  }

  /// 블러 제거
  Future<void> _removeBlurFromProfile(int memberId) async {
    await ref
        .read(introducedProfileRepositoryProvider)
        .removeBlur(category: category.name, memberId: memberId);
  }

  /// 하트 보유 수 갱신
  Future<void> _updateHeartBalance() async {
    try {
      await ref.read(globalProvider.notifier).fetchHeartBalance();
    } catch (e) {
      Log.e('하트 수 갱신 실패: $e');
    }
  }

  /// UI 상태 즉시 갱신
  void _updateProfileState(int memberId) {
    final updatedProfiles =
        state.requireValue.map((profile) {
          return profile.memberId == memberId
              ? profile.copyWith(isIntroduced: true)
              : profile;
        }).toList();

    state = AsyncData(updatedProfiles);
  }

  /// 캐시 삭제
  Future<void> _clearCachedProfiles() async {
    final box = await Hive.openBox<Map>(IntroducedProfileDto.boxName);
    await box.delete(category.name);
  }
}
