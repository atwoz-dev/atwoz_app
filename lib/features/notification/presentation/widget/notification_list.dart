import 'package:deepple_app/app/constants/constants.dart';
import 'package:deepple_app/app/router/route_arguments.dart';
import 'package:deepple_app/app/router/router.dart';
import 'package:deepple_app/app/widget/view/default_progress_indicator.dart';
import 'package:deepple_app/core/extension/extended_context.dart';
import 'package:deepple_app/features/notification/domain/model/notification_item.dart';
import 'package:deepple_app/features/notification/presentation/provider/notification_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class NotificationList extends ConsumerStatefulWidget {
  const NotificationList({super.key});

  @override
  ConsumerState<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends ConsumerState<NotificationList> {
  final _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ref
        .watch(notificationListProvider)
        .when(
          data: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _ReadAllNotifications(),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                  ).copyWith(top: .0),
                  itemCount: state.notifications.length,
                  itemBuilder: (_, index) {
                    final notification = state.notifications[index];
                    return _NotificationItem(
                      notification: notification,
                      isRead: notification.isRead,
                    );
                  },
                ),
              ),
            ],
          ),
          loading: () =>
              const Center(child: DefaultCircularProgressIndicator()),
          error: (e, stackTrace) =>
              const Center(child: Text('알림을 가져오는 데 실패했습니다.')),
        );
  }

  void _onScroll() {
    if (_scrollController.position.pixels <
            _scrollController.position.maxScrollExtent - 300 ||
        _isLoadingMore) {
      return;
    }
    _loadMoreNotifications();
  }

  Future<void> _loadMoreNotifications() async {
    _isLoadingMore = true;

    final state = ref.read(notificationListProvider);
    if (!state.hasValue || !state.value!.hasMore) {
      _isLoadingMore = false;
      return;
    }

    await ref.read(notificationListProvider.notifier).loadMoreNotifications();
    if (!mounted) return;

    setState(() => _isLoadingMore = false);
  }
}

class _ReadAllNotifications extends ConsumerWidget {
  const _ReadAllNotifications();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: ref.read(notificationListProvider.notifier).markAllAsRead,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: context.colorScheme.outline, width: 2),
          ),
        ),
        child: Text('전체 읽음', style: Fonts.body02Medium()),
      ),
    );
  }
}

class _NotificationItem extends ConsumerWidget {
  const _NotificationItem({required this.notification, required this.isRead});

  final NotificationItem notification;
  final bool isRead;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(notificationListProvider.notifier)
            .markAsRead(notification.notificationId);

        if (!notification.notificationType.isConnectedProfile) {
          return;
        }

        navigate(
          context,
          route: AppRoute.profile,
          extra: ProfileDetailArguments(userId: notification.senderId),
        );
      },
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
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
                DateFormat(
                  'yyyy.MM.dd',
                ).format(notification.createdAt.toLocal()),
                style: Fonts.body03Regular(context.colorScheme.tertiary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
