import 'dart:async';

import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/widget/dialogue/confirm_dialogue.dart';
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
<<<<<<< HEAD

=======
>>>>>>> aad01dbc7292abab9b74390e4e57f38e9ea5e14e
  final String phoneNumber;

  @override
  ConsumerState<OnboardingCertificationPage> createState() =>
      _OnboardingCertificationPageState();
}

class _OnboardingCertificationPageState
    extends BaseConsumerStatefulPageState<OnboardingCertificationPage> {
  final _codeController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final notifier = ref.read(onboardingProvider.notifier);
      final isCodeSended = await notifier.sendVerificationCode(
        widget.phoneNumber,
      );

      if (!isCodeSended) return;
    });

    _codeController.addListener(() {
      ref.read(onboardingProvider.notifier).validateInput(_codeController.text);
    });
  }

  @override
  void dispose() {
    ref.read(onboardingProvider.notifier).disposeTimer();
    _codeController.dispose();
    _focusNode.dispose();
    super.dispose();
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
<<<<<<< HEAD
                            const Gap(10),
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 2.5,
                                ),
                                child: DefaultOutlinedButton(
                                  height: 48.0,
                                  primary: Palette.colorGrey100,
                                  textStyle: Fonts.body02Regular().copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textColor: palette.onSurface,
                                  onPressed: _isResendEnabled
                                      ? () async {
                                          try {
                                            final authUseCase = ref.read(
                                              authUsecaseProvider,
                                            );
                                            await authUseCase
                                                .sendSmsVerificationCode(
                                                  widget.phoneNumber,
                                                );
                                            safeSetState(() {
                                              validationError = null;
                                              _codeController.clear();
                                              _startResendCountdown();
                                            });
                                            showToastMessage('인증번호가 재전송되었습니다.');
                                          } catch (e) {
                                            Log.e('재발송 실패', errorObject: e);
                                            showToastMessage(
                                              '인증번호 재발송에 실패했습니다.',
                                            );
                                          }
                                        }
                                      : null,
                                  child: Text(
                                    _isResendEnabled
                                        ? '재발송'
                                        : '00:${_resendCountdown.toString().padLeft(2, '0')}',
                                  ),
                                ),
=======
                          ),
                          const Gap(10),
                          Expanded(
                            flex: 3,
                            child: DefaultOutlinedButton(
                              primary: Palette.colorGrey100,
                              textColor: palette.onSurface,
                              onPressed:
                                  state.leftSeconds == 0
                                      ? () => notifier.resendCode(
                                        widget.phoneNumber,
                                      )
                                      : null,
                              child: Text(
                                state.leftSeconds == 0
                                    ? '재발송'
                                    : '00:${state.leftSeconds.toString().padLeft(2, '0')}',
>>>>>>> aad01dbc7292abab9b74390e4e57f38e9ea5e14e
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
<<<<<<< HEAD
              onPressed: _isButtonEnabled
                  ? () async {
                      final authUseCase = ref.read(authUsecaseProvider);
                      final inputCode = _codeController.text;

                      try {
                        final userData = await authUseCase.signIn(
                          UserSignInRequest(
                            phoneNumber: widget.phoneNumber,
                            code: inputCode,
                          ),
                        );

                        if (userData.isProfileSettingNeeded) {
                          navigate(context, route: AppRoute.signUp);
                        } else if (userData.activityStatus ==
                            'REJECTED_SCREENING') {
                          navigate(
                            context,
                            route: AppRoute.signUpProfileReject,
                          );
                        } else {
                          // 프로필 설정이 필요하지 않은 경우
                          navigate(context, route: AppRoute.mainTab);
                        }
                      } catch (e) {
                        // TODO(mh): 인증번호 불일치 시 처리되어야함
                        // 400  : 인증번호가 일치하지 않는 경우.
                        // 404 : 인증번호가 존재하지 않는 경우.
                        // setState(() {
                        //   validationError = '인증번호가 일치하지 않습니다.';
                        // });

                        Log.e('인증 실패', errorObject: e);
                        _codeController.clear();
                        safeSetState(() {
                          validationError = '인증에 실패했습니다.';
                        });
                      }
                    }
                  : null,
              child: Text(
                '인증하기',
                style: Fonts.body01Medium(
                  _isButtonEnabled ? palette.onPrimary : Palette.colorGrey400,
=======
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
>>>>>>> aad01dbc7292abab9b74390e4e57f38e9ea5e14e
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
