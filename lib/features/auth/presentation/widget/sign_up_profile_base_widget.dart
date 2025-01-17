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
  final int step; // 현재 단계 (1 ~ 10)
  final VoidCallback? onNextPressed;
  final String question;

  const SignUpProfileBaseWidget({
    super.key,
    required this.question,
    required this.body,
    required this.step,
    this.onNextPressed,
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
    final isButtonEnabled = _isButtonEnabled(signUpState, widget.step);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          // 진행 게이지 바 (단계에 따라 진행률 계산)
          LinearProgressIndicator(
            value: widget.step / 10.0,
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
              onPressed: isButtonEnabled ? widget.onNextPressed : null,
              child: Text(
                widget.step == 10 ? '완료' : '다음',
                style: Fonts.body01Medium(isButtonEnabled
                        ? palette.onPrimary
                        : Palette.colorGrey400)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isButtonEnabled(SignUpProcessState state, int step) {
    switch (step) {
      case 1: // 1단계 (나이 선택)
        return state.selectedYear != null;
      case 2: // 2단계 (키 선택)
        return state.selectedHeight != null;
      case 3: // 3단계 (직업 선택)
        return state.selectedJob != null;
      case 4: // 4단계 (지역 선택)
        return state.selectedLocation != null;
      case 5: // 5단계 (학력 선택)
        return state.selectedEducation != null;
      case 6: // 6단계 (Mbti 선택)
        return state.selectedFirstMbtiLetter != null &&
            state.selectedSecondMbtiLetter != null &&
            state.selectedThirdMbtiLetter != null &&
            state.selectedFourthMbtiLetter != null;
      case 7: // 7단계 (흡연 여부 선택)
        return state.selectedSmoking != null;
      case 8: // 8단계 (음주 여부 선택)
        return state.selectedDrinking != null;
      case 9: // 9단계 (종교 선택)
        return state.selectedReligion != null;
      case 10: // 10단계 (취미 선택)
        return state.selectedHobbies != null &&
            state.selectedHobbies!.isNotEmpty;
      default:
        return false;
    }
  }
}
