import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/introduce/domain/model/introduce_info.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "introduce_notifier.g.dart";

@riverpod
class IntroduceNotifier extends _$IntroduceNotifier {
  @override
  IntroduceState build() {
    Log.i("체크체크체크 IntroduceNotifier IntroduceState build()");
    _initializeIntroducList();
    return IntroduceState.initial();
  }

  Future<void> _initializeIntroducList() async {
    try {
      Log.i("체크체크체크 _initializeIntroducList 시작");
      final introduceList = await IntroduceListFetchUseCase(ref).call();
      Log.i("체크체크체크 introduceList $introduceList");
    } catch (e) {
      Log.e(e);
      state = state.copyWith(
        isLoaded: true,
        error: IntroduceListErrorType.network,
      );
    }
  }

  Future<void> fetchIntroduceList() async {
    await _initializeIntroducList();
  }
}
