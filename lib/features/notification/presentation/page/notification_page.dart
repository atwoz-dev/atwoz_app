import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_text_button.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/view/default_bottom_navigation_bar.dart';
import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/app/widget/view/default_progress_indicator.dart';
import 'package:atwoz_app/features/notification/data/dto/notification_type.dart';
import 'package:atwoz_app/features/notification/data/dto/test_notification_request.dart';
import 'package:atwoz_app/features/notification/presentation/widget/notification_empty_view_widget.dart';
import 'package:atwoz_app/features/notification/presentation/widget/notification_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/notification/domain/provider/notification_provider.dart';
import 'package:atwoz_app/features/notification/data/dto/notification_response.dart';
import 'package:atwoz_app/core/mixin/log_mixin.dart';

class NotificationPage extends ConsumerWidget with LogMixin {
  const NotificationPage({super.key});

  static const double horizontalPaddingFactor = 0.05;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget buildNotificationList(
      BuildContext context,
      List<NotificationModel> notifications,
      double horizontalPadding,
    ) {
      if (notifications.isEmpty) {
        return _buildEmptyView();
      }

      return ListView(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        children: [
          const DefaultDivider(), // 구분선
          ...notifications.map(
            (notification) => NotificationCardWidget(
              notification: notification,
              onTap: () async {
                logD('알림 클릭됨: ${notification.notificationId}');
                final repo = ref.read(notificationRepositoryProvider);
                await repo.markAsRead(notification.notificationId);
                // 선택사항: 리스트 새로고침
                ref.invalidate(notificationDataNotifierProvider);
              },
            ),
          ),
        ],
      );
    }

    final double horizontalPadding =
        context.screenWidth * horizontalPaddingFactor;

    final notificationDataAsync = ref.watch(notificationDataNotifierProvider);

    return Scaffold(
      appBar: const DefaultAppBar(title: '알림'),
      body: notificationDataAsync.when(
        data: (notifications) => buildNotificationList(
          context,
          notifications,
          horizontalPadding,
        ),
        loading: _buildLoadingView,
        error: _buildErrorView,
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(
        currentIndex: 0,
        isHighlighted: false,
      ),
    );
  }

  Widget _buildEmptyView() {
    return NotificationEmptyViewWidget(
      onSettingsPressed: () {
        logD('알림 설정하러 가기 클릭');
      },
    );
  }

  Widget _buildLoadingView() {
    return const Center(child: DefaultCircularProgressIndicator());
  }

  Widget _buildErrorView(Object error, StackTrace? stackTrace) {
    logE('알림을 가져오는 데 실패했습니다.', errorObject: error, stackTrace: stackTrace);
    return const Center(child: Text('알림을 가져오는 데 실패했습니다.'));
  }
}
