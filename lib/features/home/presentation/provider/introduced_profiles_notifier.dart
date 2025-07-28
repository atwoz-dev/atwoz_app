import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/data/repository/introduced_profile_repository.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_introduced_profiles_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_user_heart_balance_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/update_introduced_profile_use_case.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduced_profiles_notifier.g.dart';

@riverpod
class IntroducedProfilesNotifier extends _$IntroducedProfilesNotifier {
  @override
  Future<List<IntroducedProfile>> build(IntroducedCategory category) async {
    final profiles = await ref
        .watch(fetchIntroducedProfilesUseCaseProvider)
        .execute(category);

    return profiles;
  }

  /// 프로필 소개받기
  Future<void> openProfile({
    required int memberId,
    required IntroducedCategory category,
  }) async {
    if (!state.hasValue) return;

    try {
      await ref.read(introducedProfileRepositoryProvider).removeBlur(
            category: category.name,
            memberId: memberId,
          );

      // 해당 memberId의 isIntroduced만 true로 변경
      final updatedProfiles = [...state.requireValue]
          .map((e) =>
              e.memberId == memberId ? e.copyWith(isIntroduced: true) : e)
          .toList();

      // 상태 즉시 갱신 (UI 즉시 반영)
      state = AsyncData(updatedProfiles);

      // 캐시된 데이터 삭제
      final box = await Hive.openBox(IntroducedProfileDto.boxName);
      await box.delete(category.name);
    } catch (e, stackTrace) {
      Log.e('소개 프로필 블러 제거 실패: $e');
      state = AsyncError(e, stackTrace);
    }
  }

  /// 프로필 업데이트
  Future<void> updateProfile({
    required int index,
    required UserProfile detailProfile,
    required IntroducedCategory category,
  }) async {
    if (!state.hasValue) return;
    try {
      await ref.read(updateIntroducedProfileUseCaseProvider).execute(
            index: index,
            detailProfile: detailProfile,
            category: category,
          );

      final profiles = await ref
          .read(fetchIntroducedProfilesUseCaseProvider)
          .execute(category);
      state = AsyncData(profiles);
    } catch (e, stackTrace) {
      Log.e('2 소개 프로필 업데이트 실패: $e, $stackTrace');
      state = AsyncError(e, stackTrace);
    }
  }

  /// 보유 하트수 조회
  Future<int> fetchUserHeartBalance() async {
    try {
      return await ref.read(fetchUserHeartBalanceUseCaseProvider).execute();
    } catch (e) {
      Log.e('보유 하트수 조회 실패: $e');
      return 0;
    }
  }
}
