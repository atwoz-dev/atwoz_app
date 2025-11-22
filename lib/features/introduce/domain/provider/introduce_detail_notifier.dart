import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/favorite_list/data/repository/favorite_repository.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_detail_state.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/fetch_introduce_detail_use_case.dart';
import 'package:atwoz_app/features/profile/data/repository/profile_repository.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:atwoz_app/features/profile/domain/usecase/profile_fetch_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduce_detail_notifier.g.dart';

@riverpod
class IntroduceDetailNotifier extends _$IntroduceDetailNotifier {
  @override
  Future<IntroduceDetailState> build({required int introduceId}) async {
    // 상대방 프로필 조회
    // yes -> 프로필 보여줘
    // no -> 셀프소개 상세 조회 시작

    // 근데 상대방 프로질 조회하려면 셀프소개 상세조회를 해야함
    // TODO: memberId를 셀프 소개 조회시 받으면?

    final introduceDetail = await ref
        .read(fetchIntroduceDetailUseCaseProvider)
        .execute(introduceId: introduceId);

    // TODO: 상세조회 실패. 에러 처리
    if (introduceDetail == null) {
      return IntroduceDetailState(
        introduceId: introduceId,
        introduceDetail: introduceDetail,
        isLoaded: true,
      );
    }

    try {
      final profile = await ProfileFetchUseCase(
        ref,
      ).call(introduceDetail.memberBasicInfo.memberId);

      return IntroduceDetailState(
        introduceId: introduceId,
        introduceDetail: introduceDetail,
        profile: profile,
        isLoaded: true,
      );
    } on NetworkException catch (e) {
      if (e.status == 403) {
        // 상대방 프로필 권한 X
        return IntroduceDetailState(
          introduceId: introduceId,
          introduceDetail: introduceDetail,
          profile: null,
          isLoaded: true,
        );
      }
    }
    // 프로필 조회 그 외 실패
    // TODO: 에러 처리
    return IntroduceDetailState(
      introduceId: introduceId,
      introduceDetail: introduceDetail,
      profile: null,
      isLoaded: true,
    );
  }

  Future<void> setFavoriteType({
    required int memberId,
    required FavoriteType type,
  }) async {
    try {
      await ref
          .read(favoriteRepositoryProvider)
          .requestFavorite(memberId, type: type);
    } catch (e, s) {
      Log.e('좋아요 설정 실패: $e');
      state = AsyncError(e, s);
    }
  }

  Future<bool> requestProfileExchange(int responderId) async {
    final repository = ref.read(profileRepositoryProvider);

    final success = await repository.requestProfileExchange(responderId);

    if (!success) {
      // TODO: 에러 처리
      return false;
    }

    // success했으면 introduceDetail 갱신해보자

    final introduceDetail = await ref
        .read(fetchIntroduceDetailUseCaseProvider)
        .execute(introduceId: state.requireValue.introduceId);

    state = AsyncValue.data(
      state.requireValue.copyWith(introduceDetail: introduceDetail),
    );
    return true;
  }
}
