import 'dart:async';

import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/notification/data/repository/notification_repository.dart';
import 'package:atwoz_app/features/notification/presentation/provider/notification_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_list_notifier.g.dart';

@riverpod
class NotificationListNotifier extends _$NotificationListNotifier {
  @override
  Future<NotificationListState> build() async {
    final notifications =
        await ref.watch(notificationRepositoryProvider).fetchNotifications();

    return NotificationListState(
      notifications: notifications,
      readIds: {},
    );
  }

  Future<void> _markAsRead(List<int> notificationIds) async {
    final repository = ref.read(notificationRepositoryProvider);
    if(!state.hasValue) {
      Log.e('[NotificationListState] state is not initialized');
      return;
    }
    try {
      await repository.markNotificationsAsRead(notificationIds);
      state = AsyncValue.data(
        state.requireValue.copyWith(
          readIds: {...state.requireValue.readIds, ...notificationIds},
        ),
      );
    } catch (e) {
      Log.e('Failed to mark notifications as read: $e');
    }
  }

  Future<void> markAsRead(int notificationId) async {
    if (state.value?.readIds.contains(notificationId) ?? false) {
      return;
    }
    await _markAsRead([notificationId]);
  }

  Future<void> markAllAsRead() async {
    final allIds = state.value?.notifications
        .map((n) => n.notificationId)
        .where((id) => !(state.value?.readIds.contains(id) ?? false))
        .toList();

    if (allIds == null || allIds.isEmpty) return;
    await _markAsRead(allIds);
  }
}
