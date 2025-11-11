import 'dart:async';

import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/widget/dialogue/confirm_dialogue.dart';
import 'package:atwoz_app/app/widget/dialogue/dialogue.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/onboarding/domain/enum/auth_status.dart';
import 'package:atwoz_app/features/onboarding/domain/provider/onboarding_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/button/default_outlined_button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:go_router/go_router.dart';

class OnboardingCertificationPage extends ConsumerStatefulWidget {
  const OnboardingCertificationPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  ConsumerState<OnboardingCertificationPage> createState() =>
      _OnboardingCertificationPageState();
}

class _OnboardingCertificationPageState
    extends BaseConsumerStatefulPageState<OnboardingCertificationPage> {
  final _codeController = TextEditingController();
  final _focusNode = FocusNode();

  Timer? _resendTimer;
  int _resendCountdown = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final notifier = ref.read(onboardingProvider.notifier);
      final isCodeSended = await notifier.sendVerificationCode(
        widget.phoneNumber,
      );

      if (!isCodeSended) return;

      _startResendCountdown(notifier); // 초기 발송 후 타이머 시작
    });

    _codeController.addListener(() {
      ref.read(onboardingProvider.notifier).validateInput(_codeController.text);
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    _focusNode.dispose();
    _resendTimer?.cancel();
    super.dispose();
  }

  void _startResendCountdown(OnboardingNotifier notifier) {
    _resendTimer?.cancel();
    _resendCountdown = 30; // 초기 카운트 설정

    // Notifier의 resendCountDown 상태만 업데이트 (View에서 watch할 수 있도록)
    notifier.updateResendCountdown(_resendCountdown);

    _resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel(); // 위젯이 unmount되면 타이머 중지
        return;
      }

      _resendCountdown--;

      if (_resendCountdown <= 0) {
        timer.cancel();
        _resendCountdown = 0;
      }

      // Notifier의 상태를 업데이트하여 UI에 반영
      notifier.updateResendCountdown(_resendCountdown);
    });
  }

  void _resendCode(OnboardingNotifier notifier) async {
    if (_resendCountdown > 0) return; // 재전송이 활성화되지 않은 경우 리턴

    final isCodeResended = await notifier.resendCode(widget.phoneNumber);

    if (!isCodeResended) return;
    _startResendCountdown(notifier);
  }

  @override
  Widget buildPage(BuildContext context) {
    final state = ref.watch(onboardingProvider);
    final notifier = ref.read(onboardingProvider.notifier);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(title: '인증번호를 입력해주세요'),
                const Gap(5),
                Text(
                  '문자로 보내드린 인증번호를 입력해주세요',
                  style: Fonts.body02Regular(Palette.colorGrey400),
                ),
                const Gap(40),
                buildLabeledRow(
                  context: context,
                  label: '인증번호',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: DefaultTextFormField(
                              focusNode: _focusNode,
                              controller: _codeController,
                              keyboardType: TextInputType.number,
                              hintText: '000000',
                              fillColor: Palette.colorGrey100,
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            flex: 3,
                            child: DefaultOutlinedButton(
                              primary: Palette.colorGrey100,
                              textColor: palette.onSurface,
                              onPressed:
                                  state.resendCountDown == 0
                                      ? () => _resendCode(notifier)
                                      : null,
                              child: Text(
                                state.resendCountDown == 0
                                    ? '재발송'
                                    : '00:${state.resendCountDown.toString().padLeft(2, '0')}',
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (state.validationError != null)
                        Text(
                          state.validationError!,
                          style: Fonts.body03Regular(palette.error),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: DefaultElevatedButton(
              onPressed:
                  state.isButtonEnabled && !state.isLoading
                      ? () => _verifyCode(notifier)
                      : null,
              child: Text(
                '인증하기',
                style: Fonts.body01Medium(
                  state.isButtonEnabled
                      ? palette.onPrimary
                      : Palette.colorGrey400,
                ).copyWith(fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _verifyCode(OnboardingNotifier notifier) async {
    final (userData, status) = await notifier.verifyCode(
      widget.phoneNumber,
      _codeController.text,
    );

    if (!context.mounted) return;

    switch (status) {
      case AuthStatus.activate:
        _handleActivateStatus(userData);
        break;
      case AuthStatus.dormant:
        _handleDormantStatus();
        break;

      case AuthStatus.forbidden:
        await _handleForbiddenStatus();
        break;

      case AuthStatus.temporarilyForbidden:
        navigate(context, route: AppRoute.temporalForbidden);
        break;

      case AuthStatus.deletedUser:
        await _handleDeletedUserStatus();
        break;
      case null:
        showToastMessage('인증에 실패했습니다.');
        break;
    }
  }

  Future<void> _handleActivateStatus(dynamic userData) async {
    if (!context.mounted) return;

    if (userData?.isProfileSettingNeeded ?? false) {
      navigate(context, route: AppRoute.signUp);
    } else {
      navigate(context, route: AppRoute.mainTab, method: NavigationMethod.go);
    }
  }

  Future<void> _handleDormantStatus() async {
    if (!context.mounted) return;

    navigate(
      context,
      route: AppRoute.dormantRelease,
      method: NavigationMethod.go,
      extra: DormantReleaseArguments(phoneNumber: widget.phoneNumber),
    );
  }

  Future<void> _handleForbiddenStatus() async {
    if (!context.mounted) return;
    await _showDialogue(
      context,
      onTapVerify: context.pop,
      title: '서비스 이용 제한',
      content: '서비스 이용약관 및 운영정책 위반으로 사용이 정지되었습니다.',
    );
  }

  Future<void> _handleDeletedUserStatus() async {
    if (!context.mounted) return;
    await _showDialogue(
      context,
      onTapVerify: context.pop,
      title: '서비스 가입 제한',
      content: '탈퇴일로부터 3개월간 동일 계정으로 재가입이 제한됩니다.',
    );
  }

  Future<bool?> _showDialogue(
    BuildContext context, {
    required VoidCallback onTapVerify,
    required String title,
    required String content,
  }) async {
    return await context.showPrimaryConfirmDialog(
      submit: DialogButton(label: '확인', onTap: onTapVerify),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Fonts.header02().copyWith(
              color: Palette.colorBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(12),
          Text(
            content,
            style: Fonts.body01Medium().copyWith(
              color: const Color(0xff7E7E7E),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      buttonVerticalPadding: 12,
    );
  }
}
