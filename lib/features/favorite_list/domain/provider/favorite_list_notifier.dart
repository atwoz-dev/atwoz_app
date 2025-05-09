import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'favorite_list_state.dart';

part 'favorite_list_notifier.g.dart';

@riverpod
class FavoriteListNotifier extends _$FavoriteListNotifier {
  @override
  FavoriteListState build() {
    return FavoriteListState.initial();
  }
}
