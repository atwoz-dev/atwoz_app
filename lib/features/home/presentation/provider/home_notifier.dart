import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/features/home/domain/model/cached_user_profile.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/favorite_list/data/repository/favorite_repository.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_recommended_profile_use_case.dart';
import 'package:atwoz_app/features/home/presentation/provider/provider.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  Future<HomeState> build() async {
    state = const AsyncData(HomeState(nickname: ''));
    try {
      await _fetchHomeProfile();
      await _fetchRecommendedProfiles();
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
      rethrow;
    }
    return state.value!;
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

  Future<void> _fetchHomeProfile() async {
    CachedUserProfile profile = ref.read(globalNotifierProvider).profile;

    state = AsyncData(state.value!.copyWith(nickname: profile.nickname));
  }

  Future<void> _fetchRecommendedProfiles() async {
    final profiles =
        await ref.read(fetchRecommendedProfileUseCaseProvider).execute();

    if (!state.hasValue) return;

    state = AsyncData(
      state.requireValue.copyWith(
        recommendedProfiles: profiles,
      ),
    );
  }
}
