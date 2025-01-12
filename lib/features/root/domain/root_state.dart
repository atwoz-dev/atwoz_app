import 'package:atwoz_app/features/root/domain/root_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state.freezed.dart';

/// RootNotifier 상태 정의
@freezed
class RootState with _$RootState {
  const factory RootState({
    @Default('') String title,
    @Default(false) bool isLoading,
    @Default([]) List<Item> items, // items 정의 추가
  }) = _RootState;
}
