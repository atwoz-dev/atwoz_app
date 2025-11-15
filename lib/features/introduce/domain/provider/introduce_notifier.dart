import 'package:atwoz_app/features/introduce/domain/provider/filter_notifier.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_state.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/fetch_introduce_list_use_case.dart';
import 'package:atwoz_app/features/introduce/domain/usecase/fetch_introduce_my_list_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'introduce_notifier.g.dart';

@riverpod
class IntroduceNotifier extends _$IntroduceNotifier {
  @override
  Future<IntroduceState> build() async {
    final filterState = ref.watch(filterProvider);

    final introduces = await ref
        .read(fetchIntroduceListUseCaseProvider)
        .execute(
          preferredCities: filterState.selectedCitysEng,
          fromAge: filterState.rangeValues.start.toInt(),
          toAge: filterState.rangeValues.end.toInt(),
          gender: filterState.getGender,
        );
    return IntroduceState(introduceList: introduces, isLoaded: true);
  }

  /// 셀프 소개 목록 조회
  Future<void> fetchIntroduceList() async {
    final filterState = ref.watch(filterProvider);

    final prevState = state.value;

    if (prevState == null) return;

    final introduces = await ref
        .read(fetchIntroduceListUseCaseProvider)
        .execute(
          preferredCities: filterState.selectedCitysEng,
          fromAge: filterState.rangeValues.start.toInt(),
          toAge: filterState.rangeValues.end.toInt(),
          gender: filterState.getGender,
        );

    state = AsyncData(prevState.copyWith(introduceList: introduces));
  }

  /// 셀프 소개 삭제
  Future<void> deleteIntroduce() async {}

  /// 자신의 셀프 소개 목록 조회
  Future<void> fetchIntroduceMyList({int? lastId}) async {
    final prevState = state.value;

    if (prevState == null) return;

    final introduces = await ref
        .read(fetchIntroduceMyListUseCaseProvider)
        .execute(lastId: lastId);

    state = AsyncData(prevState.copyWith(introduceMyList: introduces));
  }
}
