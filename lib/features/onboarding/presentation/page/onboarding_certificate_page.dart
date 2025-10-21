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

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(onboardingNotifierProvider.notifier)
          .sendVerificationCode(widget.phoneNumber);
    });

    _codeController.addListener(() {
      ref
          .read(onboardingNotifierProvider.notifier)
          .validateInput(_codeController.text);
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    final state = ref.watch(onboardingNotifierProvider);
    final notifier = ref.read(onboardingNotifierProvider.notifier);

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
                Text('문자로 보내드린 인증번호를 입력해주세요',
                    style: Fonts.body02Regular(Palette.colorGrey400)),
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
                              onPressed: state.resendCountDown == 0
                                  ? () =>
                                      notifier.resendCode(widget.phoneNumber)
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
              onPressed: state.isButtonEnabled && !state.isLoading
                  ? () async {
                      final (userData, status) = await notifier.verifyCode(
                        widget.phoneNumber,
                        _codeController.text,
                      );

                      if (!context.mounted) return;

                      switch (status) {
                        case AuthStatus.activate:
                          if (userData?.isProfileSettingNeeded ?? false) {
                            navigate(context, route: AppRoute.signUp);
                          } else {
                            navigate(context,
                                route: AppRoute.mainTab,
                                method: NavigationMethod.go);
                          }
                          break;

                        case AuthStatus.dormant:
                          navigate(context, route: AppRoute.dormantRelease);
                          break;

                        case AuthStatus.forbidden:
                          showToastMessage('접근이 제한된 계정입니다.');
                          break;

                        case AuthStatus.temporalilyForbidden:
                          showToastMessage('일시적으로 제한된 계정입니다.');
                          break;

                        case AuthStatus.deletedUser:
                          showToastMessage('삭제된 계정입니다.');
                          break;

                        case null:
                          showToastMessage('인증에 실패했습니다.');
                          break;
                      }
                    }
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
}
