import 'package:atwoz_app/features/root/domain/root_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'root_provider.g.dart';

/// Item 클래스 정의
class Item {
  final int id;
  final String name;

  Item(this.id, this.name);
}

@riverpod
class RootNotifier extends _$RootNotifier {
  /// 초기 상태 정의

  @override
  RootState build() {
    return const RootState();
  }

  /// Title 변경
  void changeTitle(String title) {
    state = state.copyWith(title: title);
  }

  /// 아이템 로드
  Future<void> loadItems() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(seconds: 1)); // 데이터 로드 시뮬레이션
    final loadedItems =
        List.generate(10, (index) => Item(index, 'Item $index'));
    state = state.copyWith(isLoading: false, items: loadedItems);
  }

  /// 아이템 선택
  void selectItem(int itemId) {
    final selectedItem = state.items.firstWhere((item) => item.id == itemId);
    print('Selected Item: ${selectedItem.name}');
  }
}
