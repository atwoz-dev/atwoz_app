import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_text_button.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/view/default_bottom_navigation_bar.dart';
import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/app/widget/view/default_progress_indicator.dart';
import 'package:atwoz_app/features/notification/presentation/widgets/emptry_notification_view.dart';
import 'package:atwoz_app/features/notification/presentation/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/features/notification/domain/notification_provider.dart';
import 'package:atwoz_app/features/notification/data/notification_model.dart';
import 'package:atwoz_app/core/mixin/log_mixin.dart';

class NotificationPage extends ConsumerWidget with LogMixin {
  const NotificationPage({super.key});

  static const double horizontalPaddingFactor = 0.05;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double horizontalPadding =
        context.screenWidth * horizontalPaddingFactor;

    // notificationDataProvider를 통해 알림 데이터를 구독
    final notificationDataAsync = ref.watch(notificationDataNotifierProvider);

    return Scaffold(
      appBar: DefaultAppBar(title: '알림'),
      body: notificationDataAsync.when(
        data: (notifications) => _buildNotificationList(
          context,
          ref,
          notifications,
          horizontalPadding,
        ),
        loading: () => _buildLoadingView(),
        error: (e, stackTrace) => _buildErrorView(e, stackTrace),
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(
        currentIndex: 0,
        isHighlighted: false,
      ),
    );
  }

  /// 알림 목록을 빌드
  Widget _buildNotificationList(
    BuildContext context,
    WidgetRef ref,
    List<NotificationModel> notifications,
    double horizontalPadding,
  ) {
    final unreadNotifications =
        notifications.where((notification) => !notification.isRead).toList();

    if (unreadNotifications.isEmpty) {
      return _buildEmptyView();
    }

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      children: [
        _buildMarkAllAsReadButton(ref),
        const DefaultDivider(), // 첫 번째 알람 위에 구분선 추가
        ...unreadNotifications.map(
          (notification) => NotificationCard(notification: notification),
        ),
      ],
    );
  }

  /// 빈 알림 상태를 빌드
  Widget _buildEmptyView() {
    return EmptyNotificationView(
      onSettingsPressed: () {
        logD('알림 설정하러 가기 클릭');
        // TODO: 알림 설정 화면으로 이동하는 로직 추가
      },
    );
  }

  /// 로딩 상태를 빌드
  Widget _buildLoadingView() {
    return const Center(
      child: AppCircularProgressIndicator(),
    );
  }

  /// 오류 상태를 빌드
  Widget _buildErrorView(Object error, StackTrace? stackTrace) {
    logE(
      '알림을 가져오는 데 실패했습니다.',
      errorObject: error,
      stackTrace: stackTrace,
    );
    return const Center(
      child: Text('알림을 가져오는 데 실패했습니다.'),
    );
  }

  /// '전체 읽음' 버튼을 빌드
  Widget _buildMarkAllAsReadButton(WidgetRef ref) {
    return AppTextButton(
      padding: EdgeInsets.symmetric(vertical: 8), // 왼쪽 패딩 제거
      alignment: Alignment.centerLeft,
      primary: AppColors.colorGrey800,
      child: Text(
        '전체 읽음',
        style: AppStyles.body02Regular(AppColors.colorGrey800),
      ),
      onPressed: () {
        logD('전체 읽음 클릭!');
        ref.read(notificationDataNotifierProvider.notifier).markAllAsRead();
      },
    );
  }
}
