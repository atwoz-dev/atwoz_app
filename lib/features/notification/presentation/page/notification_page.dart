import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/notification/presentation/widget/notification_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: DefaultAppBar(title: '알림'),
      body: NotificationList(),
    );
  }
}
