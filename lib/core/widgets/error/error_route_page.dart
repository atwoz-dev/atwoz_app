import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../theme/theme.dart';
import '../button/app_text_button.dart';

/// This page shows when [Navigation] router non-existent page
class ErrorRoutePage extends ConsumerWidget {
  const ErrorRoutePage(this.state, {super.key});

  final GoRouterState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.error_page_not_found)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(state.error?.toString() ?? state.uri.toString(),
                textAlign: TextAlign.center),
            AppTextButton(
              expandedWith: false,
              onPressed: () => goToHome(context), // goToHome 함수 호출
              child: Text(l10n.action_go_back_to_homepage),
            ),
          ],
        ),
      ),
    );
  }

  /// 홈 화면으로 이동
  void goToHome(BuildContext context) {
    context.go('/'); // GoRouter를 사용하여 홈 화면으로 이동
  }
}
