import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/favorite_list/data/repository/favorite_repository.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_detail_state.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/fetch_introduce_detail_use_case.dart';
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

    print("IntroduceDetailNotifier introduceDetail $introduceDetail");

    if (introduceDetail == null) {
      return IntroduceDetailState(
        introduceDetail: introduceDetail,
        isLoaded: true,
      );
    }

    try {
      final profile = await ProfileFetchUseCase(
        ref,
      ).call(introduceDetail.memberBasicInfo.memberId);

      print("IntroduceDetailNotifier profile $profile");

      return IntroduceDetailState(
        introduceDetail: introduceDetail,
        profile: profile,
        isLoaded: true,
      );
    } on NetworkException catch (e) {
      if (e.status == 403) {
        // 상대방 프로필 권한 X
        return IntroduceDetailState(
          introduceDetail: introduceDetail,
          profile: null,
          isLoaded: true,
        );
      }
      return const IntroduceDetailState(
        introduceDetail: null,
        isLoaded: true,
      );
    } catch (e) {
      print("IntroduceDetailNotifier get profile error $e");
      return const IntroduceDetailState(
        introduceDetail: null,
        isLoaded: true,
      );
    }
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
}
