import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';

class SignUpProfileBaseWidget extends ConsumerStatefulWidget {
  final Widget body;
  // final int step; // 현재 단계 (1 ~ 10)
  // final VoidCallback? onNextPressed;
  final String question;

  const SignUpProfileBaseWidget({
    super.key,
    required this.question,
    required this.body,
    // required this.step,
    // this.onNextPressed,
  });

  @override
  ConsumerState<SignUpProfileBaseWidget> createState() =>
      _SignUpProfileBaseWidgetState();
}

class _SignUpProfileBaseWidgetState
    extends BaseConsumerStatefulPageState<SignUpProfileBaseWidget> {
  _SignUpProfileBaseWidgetState() : super(defaultAppBarTitle: '프로필 정보');

  @override
  Widget buildPage(BuildContext context) {
    final signUpState = ref.watch(signUpProcessProvider);
    final signUpProcess = ref.read(signUpProcessProvider.notifier);
    // final isButtonEnabled = _isButtonEnabled(signUpState, widget.step);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          // 진행 게이지 바 (단계에 따라 진행률 계산)
          LinearProgressIndicator(
            value: signUpState.currentStep / 10.0,
            minHeight: 4.h,
            backgroundColor: Palette.colorGrey100,
            color: palette.primary,
          ),
          Gap(16.h),
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
              children: [
                Gap(32.h),
                Text(
                  widget.question,
                  style: Fonts.header03(palette.onSurface).copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left, // 왼쪽 정렬 설정
                ),
                Gap(16.h),
                widget.body,
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: DefaultElevatedButton(
              onPressed: signUpProcess.isButtonEnabled()
                  ? () => signUpProcess.nextStep(context)
                  : null,
              child: Text(
                signUpState.currentStep == 10 ? '완료' : '다음',
                style: Fonts.body01Medium(
                  signUpProcess.isButtonEnabled()
                      ? palette.onPrimary
                      : Palette.colorGrey400,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
