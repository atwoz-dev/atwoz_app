import 'package:atwoz_app/app/state/global_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_provider.g.dart';

@Riverpod(keepAlive: true)
class Global extends AsyncNotifier<AppGlobalState> {
  late final Box<AppGlobalState> _hiveBox;

  @override
  Future<AppGlobalState> build() async {
    _hiveBox = await Hive.openBox<AppGlobalState>('AppGlobalNotifier');
    return _hiveBox.get(0) ?? AppGlobalState(); // 초기 상태 처리 간소화
  }

  // 나중에 사용할 수도 있는 코드
  // Future<void> _saveState(AppGlobalState state) => _hiveBox.put(0, state);
}
