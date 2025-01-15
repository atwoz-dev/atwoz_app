import 'package:atwoz_app/app/widget/input/selection.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_step_indicator_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends BaseConsumerStatefulPageState<SignUpPage> {
  SignUpPageState() : super(defaultAppBarTitle: '계정 생성');

  final TextEditingController _nicknameController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  String? validationError; // 유효성 검사 결과를 저장

  @override
  void initState() {
    super.initState();
    // 포커스 변경 리스너 추가
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        _validateInput(_nicknameController.text); // 포커스 아웃 시 유효성 검사
      }
    });
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    focusNode.dispose(); // FocusNode도 해제
    super.dispose();
  }

  void _validateInput(String input) {
    // 중복 닉네임 검사 물어보기
    if (input.isEmpty) {
      safeSetState(() {
        validationError = null; // 빈 값일 경우 에러 메시지 제거
      });
      return;
    }
    final isValid = input.isNotEmpty && input.length <= 10;

    safeSetState(() {
      validationError = isValid ? null : '닉네임은 10자 이하여야 합니다.';
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    final bool isButtonEnabled =
        _nicknameController.text.isNotEmpty && validationError == null;

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
                AuthStepIndicatorWidget(
                  totalSteps: 4,
                  currentStep: 1,
                ),
                Gap(16.h),
                TitleText(title: '닉네임을 입력해주세요'),
                Gap(5.h),
                Text(
                  '다른 사용자에게 보여질 이름입니다',
                  style: Fonts.body02Regular(Palette.colorGrey400),
                ),
                Gap(40.h),
                buildLabeledRow(
                  context: context,
                  label: '닉네임',
                  child: DefaultTextFormField(
                    focusNode: focusNode,
                    autofocus: false,
                    controller: _nicknameController,
                    keyboardType: TextInputType.text,
                    hintText: '10글자 이내로 입력해주세요.',
                    fillColor: Palette.colorGrey100,
                    // validator: (_) => validationError, // 에러 메시지 표시
                    errorText: validationError,
                    onFieldSubmitted: (value) {
                      _validateInput(value); // 엔터를 눌렀을 때 유효성 검사
                    },
                  ),
                ),
                Gap(24.h),
                buildLabeledRow(
                    context: context,
                    label: '성별',
                    child: SelectionWidget(
                      options: ["여자", "남자"],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: DefaultElevatedButton(
              onPressed: isButtonEnabled
                  ? () {
                      // TODO: 나중에 api 연결하기
                      print("인증번호 요청"); // 성공 시 동작
                      navigate(
                        context,
                        route: AppRoute.onboardCertification,
                      );
                    }
                  : null,
              child: Text(
                '다음',
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
