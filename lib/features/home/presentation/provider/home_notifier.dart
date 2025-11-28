import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/favorite_list/data/repository/favorite_repository.dart';
import 'package:atwoz_app/features/home/domain/use_case/fetch_recommended_profile_use_case.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_introduced_profiles_use_case.dart';
import 'package:atwoz_app/features/home/presentation/provider/provider.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart'; // 코드 생성을 위한 부분

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  Future<HomeState> build() async {
    // 추천 프로필 가져오기
    final profiles = await ref
        .read(fetchRecommendedProfileUseCaseProvider)
        .execute();

    return HomeState(recommendedProfiles: profiles, hasProcessedMission: false);
  }

  // 상태만 변경
  void updateFavoriteType({
    required int memberId,
    required FavoriteType type,
    bool? hasProcessedMission,
  }) {
    final profiles = state.value?.recommendedProfiles;
    if (profiles == null) return;

    state = AsyncData(
      state.requireValue.copyWith(
        recommendedProfiles: profiles
            .map(
              (e) =>
                  e.memberId == memberId ? e.copyWith(favoriteType: type) : e,
            )
            .toList(),
        hasProcessedMission: hasProcessedMission ?? false,
      ),
    );
  }

  /// 서버 요청 + 상태 변경
  Future<void> setFavoriteType({
    required int memberId,
    required FavoriteType type,
  }) async {
    if (!state.hasValue || state.value!.recommendedProfiles == null) return;
    try {
      final hasProcessedMission = await ref
          .read(favoriteRepositoryProvider)
          .requestFavorite(memberId, type: type);

      if (hasProcessedMission) {
        showToastMessage('좋아요 보내기 미션 완료! 하트 2개를 받았어요');

        await ref.read(globalProvider.notifier).fetchHeartBalance();
      }

      updateFavoriteType(
        memberId: memberId,
        type: type,
        hasProcessedMission: hasProcessedMission,
      );
    } on InvalidUserException {
      showToastMessage('비활성화 회원이에요');
    } catch (e) {
      Log.e('좋아요 설정 실패: $e');
    }
  }

  Future<bool> checkIntroducedProfiles(IntroducedCategory category) async {
    // 재진입 방지
    if (state.hasValue && state.requireValue.isCheckingIntroducedProfiles) {
      return false;
    }

    // 로딩 시작
    state = state.whenData(
      (s) => s.copyWith(isCheckingIntroducedProfiles: true),
    );

    try {
      // 프로필 데이터 로드
      final profiles = await ref
          .read(saveIntroducedProfilesUseCaseProvider)
          .execute(category);

      state = state.whenData(
        (s) => s.copyWith(isCheckingIntroducedProfiles: false),
      );

      Log.e('소개 프로필 확인 성공: $profiles');

      return profiles.isNotEmpty;
    } catch (e) {
      Log.e('소개 프로필 확인 실패: $e');

      // 에러 발생 시에도 로딩 플래그 해제
      state = state.whenData(
        (s) => s.copyWith(isCheckingIntroducedProfiles: false),
      );

      return false;
    }
  }
}
