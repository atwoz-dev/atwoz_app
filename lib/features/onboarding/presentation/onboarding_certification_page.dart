import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/utils/validate_utils.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/input/app_text_form_field.dart';
import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/core/base/notifier/common_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

// TODO: common_state_notifier 활용할지 말지
class OnboardingCertificationPage extends ConsumerStatefulWidget {
  const OnboardingCertificationPage({super.key});

  @override
  OnboardingCertificationPageState createState() =>
      OnboardingCertificationPageState();
}

class OnboardingCertificationPageState
    extends ConsumerState<OnboardingCertificationPage> {
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

  // TODO: API 연결하고 나서 옳지 않은 인증번호인 경우 추가 필요
  void _validateInput(String input) {
    if (input.isEmpty) {
      setState(() {
        validationError = null; // 빈 값일 경우 에러 메시지 제거
      });
      return;
    }
    final isValid = ValidateUtils.sixDigitNumber.hasMatch(input);
    setState(() {
      validationError = isValid ? null : '인증번호를 확인해 주세요.';
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
                      '인증번호를 입력해주세요',
                      style: AppStyles.header01()
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    const Gap(5),
                    Text(
                      '문자로 보내드린 인증번호를 입력해주세요',
                      style: AppStyles.body02Regular(AppColors.colorGrey400),
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
                                  child: AppTextFormField(
                                    focusNode: focusNode,
                                    autofocus: false,
                                    controller: _phoneController,
                                    keyboardType: TextInputType.phone,
                                    hintText: '000000',
                                    fillColor: AppColors.colorGrey100,
                                    onFieldSubmitted: _validateInput,
                                  ),
                                ),
                                const Gap(10),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 2.5),
                                    child: AppElevatedButton(
                                      primary: context.appColors.surface,
                                      expandedWidth: true,
                                      // height: 48.0, // 텍스트 필드와 동일한 높이
                                      border: BorderSide(
                                        color: AppColors.colorGrey100,
                                        width: 2.0,
                                      ),
                                      onPressed: () {
                                        // TODO: 재발송 로직 추가하기
                                        print("인증번호 재발송");
                                      },
                                      child: Text(
                                        '재발송',
                                        style: AppStyles.body02Regular(
                                                context.appColors.onSurface)
                                            .copyWith(
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (validationError != null) // 에러 메시지가 있을 때만 표시
                            Text(
                              validationError!,
                              style: AppStyles.body03Regular(
                                  context.appColors.error),
                            ),
                        ],
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
                          print("인증번호 요청");
                          // TODO: 아래 라우팅은 바뀌어야 함 실제로는 레포트로 가면 안됨
                          navigate(context: context, route: AppRoute.report);
                        }
                      : null,
                  child: Text(
                    '인증하기',
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
