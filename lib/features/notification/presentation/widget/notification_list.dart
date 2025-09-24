import 'dart:developer';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/view/default_progress_indicator.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/notification/domain/model/notification_item.dart';
import 'package:atwoz_app/features/notification/presentation/provider/notification_list_notifier.dart';
import 'package:atwoz_app/features/notification/presentation/provider/notification_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class NotificationList extends ConsumerWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(notificationListNotifierProvider).when(
          data: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _ReadAllNotifications(),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                  ).copyWith(top: .0),
                  itemCount: state.notifications.length,
                  itemBuilder: (_, index) {
                    final notification = state.notifications[index];
                    final isRead =
                        state.readIds.contains(notification.notificationId);
                    return _NotificationItem(
                      notification: notification,
                      isRead: isRead,
                    );
                  },
                ),
              ),
            ],
          ),
          loading: () => const Center(
            child: DefaultCircularProgressIndicator(),
          ),
          error: (e, stackTrace) => const Center(
            child: Text('알림을 가져오는 데 실패했습니다.'),
          ),
        );
  }
}

class _ReadAllNotifications extends ConsumerWidget {
  const _ReadAllNotifications();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () =>
          ref.read(notificationListNotifierProvider.notifier).markAllAsRead(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.colorScheme.outline,
              width: 2,
            ),
          ),
        ),
        child: Text('전체 읽음', style: Fonts.body02Medium()),
      ),
    );
  }
}

class _NotificationItem extends ConsumerWidget {
  const _NotificationItem({
    required this.notification,
    required this.isRead,
  });

  final NotificationItem notification;
  final bool isRead;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(notificationListNotifierProvider.notifier)
            .markAsRead(notification.notificationId);

        if (!notification.notificationType.isConnectedProfile) {
          return;
        }

        navigate(
          context,
          route: AppRoute.profile,
          extra: ProfileDetailArguments(
            userId: notification.senderId,
          ),
        );
      },
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20.0,
        ),
        child: Opacity(
          opacity: isRead ? 0.5 : 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                notification.body,
                style: Fonts.body02Medium(
                  isRead
                      ? context.colorScheme.tertiary
                      : context.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                DateFormat('yyyy.MM.dd')
                    .format(notification.createdAt.toLocal()),
                style: Fonts.body03Regular(context.colorScheme.tertiary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
