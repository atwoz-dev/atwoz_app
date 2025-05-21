import 'dart:math';

import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/util/phone_number_formatter.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class OnboardingPhoneInputPage extends ConsumerStatefulWidget {
  const OnboardingPhoneInputPage({super.key});

  @override
  OnboardingPhoneInputPageState createState() =>
      OnboardingPhoneInputPageState();
}

class OnboardingPhoneInputPageState
    extends BaseConsumerStatefulPageState<OnboardingPhoneInputPage> {
  final TextEditingController _phoneController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  String? validationError; // 유효성 검사 결과를 저장

  @override
  void initState() {
    super.initState();
    // 포커스 변경 리스너 추가
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        _validateInput(_phoneController.text); // 포커스 아웃 시 유효성 검사
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
      safeSetState(() {
        validationError = null; // 빈 값일 경우 에러 메시지 제거
      });
      return;
    }
    final isValid = Validation.phoneMobile
        .hasMatch(input.replaceAll(RegExp(r'\D'), '')); // 하이픈 제거 후 비교

    safeSetState(() {
      validationError = isValid ? null : '올바른 휴대폰 번호 형식이 아닙니다.';
    });
  }

  String generateRandomCode([int length = 6]) {
    final random = Random();
    return List.generate(length, (_) => random.nextInt(10)).join();
  }

  Future<void> _handleLogin(WidgetRef ref) async {
    final phoneNumber = _phoneController.text;

    if (phoneNumber.isEmpty || validationError != null || !mounted) {
      return;
    }

    try {
      final authUseCase = ref.read(authUsecaseProvider);

      final bizgoToken = await authUseCase.requestBizgoToken();
      // final code = generateRandomCode(6);
      const code = '123123'; // TODO: 교체 필요 (테스트용 코드)
      // TODO: 백엔드 구현 후 각주 풀기
      // await authUseCase.sendVerificationCode(
      //     phoneNumber, bizgoToken, '인증번호는 $code입니다.');

      // TODO: 인증번호를 서버에 저장하는 요청 필요

      navigate(
        context,
        route: AppRoute.onboardCertification,
        extra: OnboardCertificationArguments(phoneNumber: phoneNumber),
      );
    } catch (e) {
      Log.d("로그인 실패: $e");
    }
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
                const TitleText(title: '휴대폰 번호를 입력해주세요'),
                const Gap(5),
                Text(
                  '서비스 이용을 위해 본인확인이 필요해요',
                  style: Fonts.body02Regular(Palette.colorGrey400),
                ),
                const Gap(40),
                buildLabeledRow(
                  context: context,
                  label: '휴대폰 번호',
                  child: DefaultTextFormField(
                    focusNode: focusNode,
                    autofocus: false,
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    hintText: '010-0000-0000',
                    fillColor: Palette.colorGrey100,
                    errorText: validationError,
                    inputFormatters: [PhoneNumberFormatter()],
                    onFieldSubmitted: (value) {
                      _validateInput(value); // 유효성 검사 실행
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: Consumer(
              builder: (context, ref, child) {
                return DefaultElevatedButton(
                  onPressed: isButtonEnabled ? () => _handleLogin(ref) : null,
                  child: Text(
                    '인증번호 요청하기',
                    style: Fonts.body01Medium(isButtonEnabled
                            ? palette.onPrimary
                            : Palette.colorGrey400)
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
