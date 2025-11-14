import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_state.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/introduce_fetch_introduce_detail_use_case.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/introduce_fetch_my_introduce_list_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduce_notifier.g.dart';

@riverpod
class IntroduceNotifier extends _$IntroduceNotifier {
  @override
  IntroduceState build() {
    _initializeIntroduceList();
    return IntroduceState.initial();
  }

  Future<void> _initializeIntroduceList() async {
    try {
      final introduceList = await IntroduceListFetchUseCase(ref).call();
      state = state.copyWith(
        introduceList: introduceList,
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      Log.e("Failed to fetch introduce list from server: $e");
      state = state.copyWith(
        isLoaded: true,
        error: IntroduceListErrorType.network,
      );
    }
  }

  /// 셀프 소개 목록 조회
  Future<void> fetchIntroduceList() async {
    await _initializeIntroduceList();
  }

  /// 셀프 소개 삭제
  Future<void> deleteIntroduce() async {}

  /// 자신의 셀프 소개 목록 조회
  Future<void> fetchIntroduceMyList({int? lastId}) async {
    try {
      final introduceMyList = await IntroduceFetchMyIntroduceListUseCase(
        ref,
      ).call(lastId: lastId);
      state = state.copyWith(
        introduceMyList: introduceMyList,
        isLoaded: true,
        error: null,
      );
    } catch (e) {
      // TODO: 에러 발생 처리 어떻게???
      Log.e("Failed to fetch introduce my list from server: $e");
    }
  }
}
