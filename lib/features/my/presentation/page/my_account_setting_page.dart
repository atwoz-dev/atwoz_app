import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/router/routing.dart';
import 'package:atwoz_app/app/widget/dialogue/confirm_dialogue.dart';
import 'package:atwoz_app/app/widget/dialogue/error_dialog.dart';
import 'package:atwoz_app/app/widget/error/dialogue_error.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MyAccountSettingPage extends ConsumerStatefulWidget {
  const MyAccountSettingPage({super.key});

  @override
  ConsumerState<MyAccountSettingPage> createState() =>
      _MyAccountSettingPageState();
}

class _MyAccountSettingPageState extends ConsumerState<MyAccountSettingPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final router = ref.read(routerProvider);
    return Scaffold(
      appBar: const DefaultAppBar(title: "계정 설정"),
      body: Column(
        children: [
          _AccountSettingItem(
            children: [
              Text(
                "닉네임",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Palette.colorBlack,
                ),
              ),
              const Spacer(),
              const Text("마카롱조아")
            ],
          ),
          _AccountSettingItem(
            children: [
              Text(
                "휴면 회원 전환",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Palette.colorBlack,
                ),
              ),
              const Spacer(),
              Switch(
                value: _isSwitched,
                inactiveTrackColor: const Color(0xffDEDEDE),
                onChanged: (value) => _handleDormantChange(value, router),
              ),
            ],
          ),
          _AccountSettingItem(
            children: [
              GestureDetector(
                onTap: () async {
                  final isLogOutCompleted = await ref
                      .read(mySettingNotifierProvider.notifier)
                      .logout();
                  if (!context.mounted) return;
                  if (!isLogOutCompleted) {
                    ErrorDialog.open(
                      context,
                      error: DialogueErrorType.failSignOut,
                      onConfirm: context.pop,
                    );

                    return;
                  }

                  navigate(
                    context,
                    route: AppRoute.onboard,
                    method: NavigationMethod.go,
                  );
                },
                child: Text(
                  "로그아웃",
                  style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w500,
                    color: Palette.colorBlack,
                  ),
                ),
              ),
            ],
          ),
          _AccountSettingItem(
            children: [
              GestureDetector(
                onTap: () => navigate(context, route: AppRoute.serviceWithdraw),
                child: Text(
                  "서비스 탈퇴",
                  style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffbdbdbd),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _handleDormantChange(bool value, GoRouter router) async {
    // TODO(Han): 휴면 상태에서 해당 동작이 가능한지 확인 필요
    if (!value) return;

    setState(() => _isSwitched = value);
    final isUpdated = await _showUpdateDormantStatus(
      context,
      onDormantChanged: () async {
        final success = await ref
            .read(mySettingNotifierProvider.notifier)
            .deactiveAccount();
        if (!mounted) return;
        if (!success) {
          ErrorDialog.open(
            context,
            error: DialogueErrorType.unknown,
            onConfirm: () => context
              ..pop()
              ..pop(),
          );
        }

        navigate(
          context,
          route: AppRoute.onboard,
          method: NavigationMethod.go,
        );
      },
    );

    if (isUpdated != null && isUpdated) return;
    setState(() => _isSwitched = false);
  }
}

class _AccountSettingItem extends StatelessWidget {
  final List<Widget> children;
  const _AccountSettingItem({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE1E1E1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: children,
      ),
    );
  }
}

Future<bool?> _showUpdateDormantStatus(
  BuildContext context, {
  required VoidCallback onDormantChanged,
}) async =>
    context.showConfirmDialog<bool>(
      submit: DialogButton(label: '확인', onTap: onDormantChanged),
      enableCloseButton: false,
      child: Column(
        children: [
          Text(
            '휴면 회원 전환',
            style: Fonts.header02().copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(16),
          Text(
            '프로필이 상대방에게 노출되지 않고\n'
            '휴면 회원 전환 시 매칭 포함 모든 활동이 제한됩니다\n'
            '휴면회원으로 전환하시겠습니까?',
            style: Fonts.body02Medium().copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xff515151),
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
      buttonVerticalPadding: 12,
    );
