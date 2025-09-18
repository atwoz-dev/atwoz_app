import 'dart:async';

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
import 'package:atwoz_app/features/auth/data/dto/user_response.dart';
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

  final _codeController = TextEditingController();
  final _focusNode = FocusNode();
  bool _isButtonEnabled = false;
  bool _isResendEnabled = true;
  int _resendCountdown = 30;
  Timer? _resendTimer;
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
        _startResendCountdown();
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
    _codeController.dispose();
    _focusNode.dispose(); // FocusNode도 해제
    _resendTimer?.cancel();
    super.dispose();
  }

  void _startResendCountdown() {
    _resendTimer?.cancel();
    setState(() {
      _isResendEnabled = false;
      _resendCountdown = 30;
    });

    _resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendCountdown == 0) {
        timer.cancel();
        setState(() {
          _isResendEnabled = true;
        });
      } else {
        setState(() {
          _resendCountdown--;
        });
      }
    });
  }

  void _validateInput(String input) {
    if (input.isEmpty) {
      setState(() {
        validationError = null; // 빈 값일 경우 에러 메시지 제거
        _isButtonEnabled = false;
      });
      return;
    }
    final isValid = Validation.sixDigitNumber.hasMatch(input);
    safeSetState(() {
      validationError = isValid ? null : '인증번호를 확인해 주세요.';
      _isButtonEnabled = isValid;
    });
  }

  @override
  Widget buildPage(BuildContext context) {
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
                                focusNode: _focusNode,
                                autofocus: false,
                                controller: _codeController,
                                keyboardType: TextInputType.number,
                                hintText: '000000',
                                fillColor: Palette.colorGrey100,
                                // errorText: validationError,
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
                                  onPressed: _isResendEnabled
                                      ? () async {
                                          setState(() {
                                            _isResendEnabled = false;
                                          });
                                          try {
                                            final authUseCase =
                                                ref.read(authUsecaseProvider);
                                            await authUseCase
                                                .sendSmsVerificationCode(
                                                    widget.phoneNumber);
                                            safeSetState(() {
                                              validationError = null;
                                            });
                                            _codeController.clear();
                                            showToastMessage('인증번호가 재전송되었습니다.');
                                            _startResendCountdown();
                                          } catch (e) {
                                            Log.e('재발송 실패', errorObject: e);
                                            showToastMessage(
                                                '인증번호 재발송에 실패했습니다.');
                                            if (mounted) {
                                              setState(() {
                                                _isResendEnabled = true;
                                              });
                                            }
                                          }
                                        }
                                      : null,
                                  child: Text(_isResendEnabled
                                      ? '재발송'
                                      : '00:${_resendCountdown.toString().padLeft(2, '0')}'),
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
              onPressed: _isButtonEnabled
                  ? () async {
                      final authUseCase = ref.read(authUsecaseProvider);
                      final inputCode = _codeController.text;

                      try {
                        // 1. 인증번호 검증
                        final userData = await authUseCase.signIn(
                            UserSignInRequest(
                                phoneNumber: widget.phoneNumber,
                                code: inputCode));

                        if (userData.isProfileSettingNeeded) {
                          navigate(context, route: AppRoute.signUp);
                        } else {
                          // 프로필 설정이 필요하지 않은 경우
                          navigate(
                            context,
                            route: AppRoute.mainTab,
                            method: NavigationMethod.go,
                          );
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
                style: Fonts.body01Medium(_isButtonEnabled
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
