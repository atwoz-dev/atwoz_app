import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/dialogue/error_dialog.dart';
import 'package:atwoz_app/app/widget/error/dialogue_error.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DormantAccountPage extends ConsumerWidget {
  const DormantAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(globalNotifierProvider).profile.nickname;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$nickname님, 휴면을 해제하고\n'
                '새로운 인연을 추천받아보세요!',
                style: Fonts.header02().copyWith(fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const DefaultIcon(
                      IconPath.sadEmotion,
                      size: 48.0,
                    ),
                    const Gap(8.0),
                    Text(
                      '회원님은 휴면 중으로 상대방에게\n'
                      '프로필이 공개되고 있지 않아요요',
                      style: Fonts.body02Medium(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              DefaultElevatedButton(
                child: const Text('휴면 해제하기'),
                onPressed: () async {
                  final success = await ref
                      .read(mySettingNotifierProvider.notifier)
                      .activeAccount();

                  if (!context.mounted) return;
                  if (!success) {
                    ErrorDialog.open(
                      context,
                      error: DialogueErrorType.unknown,
                      onConfirm: context.pop,
                    );
                    return;
                  }

                  showToastMessage('휴면이 해제되었습니다.');

                  navigate(
                    context,
                    route: AppRoute.mainTab,
                    method: NavigationMethod.go,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
