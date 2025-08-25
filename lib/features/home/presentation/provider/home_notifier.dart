import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/favorite_list/data/repository/favorite_repository.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_introduced_profiles_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_recommended_profile_use_case.dart';
import 'package:atwoz_app/features/home/presentation/provider/provider.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  Future<HomeState> build() async {
    try {
      const initialState = HomeState();

      // 추천 프로필 가져오기
      final profiles =
          await ref.read(fetchRecommendedProfileUseCaseProvider).execute();

      // 최종 상태 반환
      return initialState.copyWith(recommendedProfiles: profiles);
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
      rethrow;
    }
  }

  /// 좋아요 설정
  Future<void> setFavoriteType(int memberId, FavoriteType type) async {
    if (!state.hasValue || state.value!.recommendedProfiles == null) return;
    try {
      await ref.read(favoriteRepositoryProvider).requestFavorite(
            memberId,
            type: type,
          );

      final currentState = state.valueOrNull;
      final profiles = currentState?.recommendedProfiles;
      if (currentState == null || profiles == null) return;

      state = AsyncData(
        currentState.copyWith(
          recommendedProfiles: profiles
              .map(
                (e) => e.memberId == memberId
                    ? e.copyWith(
                        favoriteType: type,
                      )
                    : e,
              )
              .toList(),
        ),
      );
    } catch (e, stackTrace) {
      Log.e('좋아요 설정 실패: $e');
      state = AsyncError(e, stackTrace);
    }
  }

  Future<bool> checkIntroducedProfiles(IntroducedCategory category) async {
    // 로딩 시작
    if (state.hasValue) {
      state = AsyncData(
        state.requireValue.copyWith(isCheckingIntroducedProfiles: true),
      );
    }

    try {
      // 프로필 데이터 로드
      final profiles = await ref
          .read(saveIntroducedProfilesUseCaseProvider)
          .execute(category);

      // 로딩 완료
      if (state.hasValue) {
        state = AsyncData(
          state.requireValue.copyWith(isCheckingIntroducedProfiles: false),
        );
      }

      return profiles.isNotEmpty;
    } catch (e) {
      Log.e('소개 프로필 확인 실패: $e');

      // 에러 발생 시에도 로딩 플래그 해제
      if (state.hasValue) {
        state = AsyncData(
          state.requireValue.copyWith(isCheckingIntroducedProfiles: false),
        );
      }

      return false;
    }
  }
}
