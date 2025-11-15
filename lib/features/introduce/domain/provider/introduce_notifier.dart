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

    return IntroduceState(
      introduceList: introduces,
      isLoaded: true,
      introduceLastId: introduces.last.id,
    );
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

    state = AsyncData(
      prevState.copyWith(
        introduceList: introduces,
        introduceLastId: introduces.last.id,
      ),
    );
  }

  // 셀프 소개 추가 조회
  Future<void> fetchIntroduceMore() async {
    final filterState = ref.watch(filterProvider);
    final prevState = state.value;

    if (prevState == null) return;

    if (state.value?.introduceLastId == null) return;

    final introduces = await ref
        .read(fetchIntroduceListUseCaseProvider)
        .execute(
          preferredCities: filterState.selectedCitysEng,
          fromAge: filterState.rangeValues.start.toInt(),
          toAge: filterState.rangeValues.end.toInt(),
          gender: filterState.getGender,
          lastId: state.value?.introduceLastId,
        );

    if (introduces.isEmpty) {
      state = AsyncData(
        prevState.copyWith(
          introduceLastId: null,
        ),
      );
    } else {
      state = AsyncData(
        prevState.copyWith(
          introduceList: [...prevState.introduceList, ...introduces],
          introduceLastId: introduces.last.id,
        ),
      );
    }
  }

  /// 셀프 소개 삭제
  Future<void> deleteIntroduce() async {}

  /// 자신의 셀프 소개 목록 조회
  Future<void> fetchMyIntroduceList() async {
    final prevState = state.value;

    if (prevState == null) return;

    final introduces = await ref
        .read(fetchIntroduceMyListUseCaseProvider)
        .execute();

    state = AsyncData(
      prevState.copyWith(
        introduceMyList: introduces,
        myIntroduceLastId: introduces.last.id,
      ),
    );
  }

  /// 자신의 셀프 소개 목록 추가 조회
  Future<void> fetchMyIntroduceMore() async {
    final prevState = state.value;

    if (prevState == null) return;

    if (prevState.myIntroduceLastId == null) return;

    final introduces = await ref
        .read(fetchIntroduceMyListUseCaseProvider)
        .execute(lastId: prevState.myIntroduceLastId);

    if (introduces.isEmpty) {
      state = AsyncData(
        prevState.copyWith(
          myIntroduceLastId: null,
        ),
      );
    } else {
      state = AsyncData(
        prevState.copyWith(
          introduceMyList: [...prevState.introduceMyList, ...introduces],
          myIntroduceLastId: introduces.last.id,
        ),
      );
    }
  }
}
