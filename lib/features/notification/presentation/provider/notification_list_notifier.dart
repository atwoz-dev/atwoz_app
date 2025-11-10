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
    final result = await ref
        .watch(notificationRepositoryProvider)
        .fetchNotifications();

    return NotificationListState(
      notifications: result.notifications,
      hasMore: result.hasMore,
      lastId: result.notifications.isNotEmpty
          ? result.notifications.last.notificationId
          : null,
    );
  }

  Future<void> loadMoreNotifications() async {
    if (!state.hasValue) {
      Log.e('[NotificationListState] state is not initialized');
      return;
    }

    final currentState = state.requireValue;
    if (!currentState.hasMore || currentState.notifications.isEmpty) {
      return;
    }

    try {
      final result = await ref
          .read(notificationRepositoryProvider)
          .fetchNotifications(currentState.lastId);

      final updatedNotifications = [
        ...currentState.notifications,
        ...result.notifications,
      ];

      state = AsyncValue.data(
        currentState.copyWith(
          notifications: updatedNotifications,
          hasMore: result.hasMore,
          lastId: result.notifications.lastOrNull?.notificationId,
        ),
      );
    } catch (e) {
      Log.e('Failed to load more notifications: $e');
    }
  }

  Future<void> _markAsRead(List<int> notificationIds) async {
    final repository = ref.read(notificationRepositoryProvider);
    if (!state.hasValue) {
      Log.e('[NotificationListState] state is not initialized');
      return;
    }
    try {
      await repository.markNotificationsAsRead(notificationIds);

      final currentState = state.requireValue;
      final updatedNotifications = currentState.notifications.map((
        notification,
      ) {
        if (!notificationIds.contains(notification.notificationId)) {
          return notification;
        }

        return notification.copyWith(isRead: true);
      }).toList();

      state = AsyncValue.data(
        currentState.copyWith(notifications: updatedNotifications),
      );
    } catch (e) {
      Log.e('Failed to mark notifications as read: $e');
    }
  }

  Future<void> markAsRead(int notificationId) async {
    if (!state.hasValue) return;

    final notification = state.requireValue.notifications.firstWhere(
      (n) => n.notificationId == notificationId,
      orElse: () => throw Exception('Notification not found'),
    );

    if (notification.isRead) return;
    await _markAsRead([notificationId]);
  }

  Future<void> markAllAsRead() async {
    if (!state.hasValue) return;

    final unreadIds = state.requireValue.notifications
        .where((n) => !n.isRead)
        .map((n) => n.notificationId)
        .toList();

    if (unreadIds.isEmpty) return;
    await _markAsRead(unreadIds);
  }
}
