import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/util/log.dart';
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
                                  onPressed: () {
                                    Log.d("인증번호 재발송");
                                    // TODO: 재발송 로직 추가
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
