import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/utils/validate_utils.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/input/app_text_form_field.dart';
import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/core/base/notifier/common_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// TODO: common_state_notifier 활용할지 말지

class OnboardingPhoneInputPage extends ConsumerStatefulWidget {
  const OnboardingPhoneInputPage({super.key});

  @override
  OnboardingPhoneInputPageState createState() =>
      OnboardingPhoneInputPageState();
}

class OnboardingPhoneInputPageState
    extends ConsumerState<OnboardingPhoneInputPage> {
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
      setState(() {
        validationError = null; // 빈 값일 경우 에러 메시지 제거
      });
      return;
    }
    final isValid = ValidateUtils.phoneMobile.hasMatch(input);
    setState(() {
      validationError = isValid ? null : '올바른 휴대폰 번호 형식이 아닙니다.';
    });
    if (isValid) {
      ref.read(commonStateNotifierProvider.notifier).emitSuccess();
    } else {
      ref.read(commonStateNotifierProvider.notifier).emitError();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
        commonStateNotifierProvider); // TODO: common_state 사용안할거면 삭제해도 될듯
    final bool isButtonEnabled =
        _phoneController.text.isNotEmpty && validationError == null;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 외부를 클릭했을 때 focus 해제
      },
      child: Scaffold(
        appBar: DefaultAppBar(
          isDivider: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '휴대폰 번호를 입력해주세요',
                      style: AppStyles.header01()
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    const Gap(5),
                    Text(
                      '서비스 이용을 위해 본인확인이 필요해요',
                      style: AppStyles.body02Regular(AppColors.colorGrey400),
                    ),
                    const Gap(40),
                    buildLabeledRow(
                      context: context,
                      label: '휴대폰 번호',
                      child: AppTextFormField(
                        focusNode: focusNode,
                        autofocus: false,
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        hintText: '010-0000-0000',
                        fillColor: AppColors.colorGrey100,
                        // validator: (_) => validationError, // 에러 메시지 표시
                        errorText: validationError,
                        onFieldSubmitted: (value) {
                          _validateInput(value); // 엔터를 눌렀을 때 유효성 검사
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: context.screenHeight * 0.05),
                child: AppElevatedButton(
                  onPressed: isButtonEnabled
                      ? () {
                          // TODO: 나중에 api 연결하기
                          print("인증번호 요청"); // 성공 시 동작
                          GoRouter.of(context).push('/onboard-certification');
                        }
                      : null,
                  child: Text(
                    '인증번호 요청하기',
                    style: AppStyles.body01Medium(isButtonEnabled
                            ? context.appColors.onPrimary
                            : AppColors.colorGrey400)
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
