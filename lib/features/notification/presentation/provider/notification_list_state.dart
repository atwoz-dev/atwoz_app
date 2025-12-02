import 'package:deepple_app/features/notification/domain/model/notification_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_list_state.freezed.dart';

@freezed
abstract class NotificationListState with _$NotificationListState {
  const factory NotificationListState({
    @Default([]) List<NotificationItem> notifications,
    @Default(false) bool hasMore,
    int? lastId,
  }) = _NotificationListState;
}
