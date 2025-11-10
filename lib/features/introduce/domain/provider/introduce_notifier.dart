import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/data/dto/introduce_list_response.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "introduce_notifier.g.dart";

@riverpod
class IntroduceNotifier extends _$IntroduceNotifier {
  @override
  IntroduceState build() {
    _initializeIntroducList();
    return IntroduceState.initial();
  }

  Future<List<IntroduceItem>> _initializeIntroducList() async {
    try {
      final introduceList = await IntroduceListFetchUseCase(ref).call();
      state = state.copyWith(introduceList: introduceList, isLoaded: true);
      return introduceList;
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: IntroduceListErrorType.network,
      );
      return [];
    }
  }

  Future<List<IntroduceItem>> fetchIntroduceList() async {
    return await _initializeIntroducList();
  }
}
