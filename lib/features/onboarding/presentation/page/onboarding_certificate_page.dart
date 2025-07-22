import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/core/util/validation.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/button/default_outlined_button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/features/auth/data/dto/user_sign_in_request.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class OnboardingCertificationPage extends ConsumerStatefulWidget {
  const OnboardingCertificationPage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  OnboardingCertificationPageState createState() =>
      OnboardingCertificationPageState();
}

class OnboardingCertificationPageState
    extends BaseConsumerStatefulPageState<OnboardingCertificationPage> {
  OnboardingCertificationPageState();

  final TextEditingController _phoneController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  String? validationError; // 유효성 검사 결과를 저장

  @override
  void initState() {
    super.initState();

    // 인증번호 자동 전송
    Future.microtask(() async {
      try {
        final authUseCase = ref.read(authUsecaseProvider);
        await authUseCase.sendSmsVerificationCode(widget.phoneNumber);
        showToastMessage('인증번호가 발송되었습니다.');
      } catch (e) {
        Log.e('SMS 발송 실패', errorObject: e);
        showToastMessage('인증번호 발송에 실패했습니다.');
      }
    });

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        _validateInput(_codeController.text); // 포커스 아웃 시 유효성 검사
      }
    });

    _codeController.addListener(() {
      final codeNumber = _codeController.text.replaceAll(RegExp(r'\D'), '');
      if (codeNumber.length >= 6) {
        _validateInput(codeNumber); // 6자리 이상일 때만 유효성 검사
      } else {
        safeSetState(() {
          validationError = null;
          _isButtonEnabled = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _phoneController.dispose();
    focusNode.dispose(); // FocusNode도 해제
    super.dispose();
  }

  void _validateInput(String input) {
    if (input.isEmpty) {
      setState(() {
        validationError = null; // 빈 값일 경우 에러 메시지 제거
      });
      return;
    }
    final isValid = Validation.sixDigitNumber.hasMatch(input);
    safeSetState(() {
      validationError = isValid ? null : '인증번호를 확인해 주세요.';
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    final bool isButtonEnabled =
        _phoneController.text.isNotEmpty && validationError == null;

    return GestureDetector(
      behavior: HitTestBehavior.opaque, // 빈 공간에서도 이벤트를 감지
      onTap: () {
        FocusScope.of(context).unfocus(); // 외부를 클릭했을 때 focus 해제
      },
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
                    crossAxisAlignment:
                        CrossAxisAlignment.stretch, // 에러 메시지를 왼쪽 정렬
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child: DefaultTextFormField(
                                focusNode: focusNode,
                                autofocus: false,
                                controller: _phoneController,
                                keyboardType: TextInputType.phone,
                                hintText: '000000',
                                fillColor: Palette.colorGrey100,
                                onFieldSubmitted: _validateInput,
                              ),
                            ),
                            const Gap(10),
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 2.5),
                                child: DefaultOutlinedButton(
                                  primary: Palette.colorGrey100,
                                  textStyle: Fonts.body02Regular()
                                      .copyWith(fontWeight: FontWeight.w500),
                                  textColor: palette.onSurface,
                                  onPressed: () async {
                                    try {
                                      final authUseCase =
                                          ref.read(authUsecaseProvider);
                                      await authUseCase.sendSmsVerificationCode(
                                          widget.phoneNumber);
                                      safeSetState(() {
                                        validationError = null; // 기존 오류 메시지 제거
                                      });
                                      _codeController.clear();
                                      showToastMessage('인증번호가 재전송되었습니다.');
                                    } catch (e) {
                                      Log.e('재발송 실패', errorObject: e);
                                      showToastMessage('인증번호 재발송에 실패했습니다.');
                                    }
                                  },
                                  child: const Text('재발송'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (validationError != null) // 에러 메시지가 있을 때만 표시
                        Text(
                          validationError!,
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
              onPressed: isButtonEnabled
                  ? () async {
                      final authUseCase = ref.read(authUsecaseProvider);
                      await authUseCase.signIn(UserSignInRequest(
                        phoneNumber: widget.phoneNumber,
                      ));
                      navigate(context, route: AppRoute.signUp);
                    }
                  : null,
              child: Text(
                '인증하기',
                style: Fonts.body01Medium(isButtonEnabled
                        ? palette.onPrimary
                        : Palette.colorGrey400)
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
