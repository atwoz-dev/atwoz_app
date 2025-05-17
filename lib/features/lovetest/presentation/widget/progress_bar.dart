import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class BarProgressIndicators extends StatelessWidget {
  final int maxSteps;
  final int currentStep;

  const BarProgressIndicators({
    super.key,
    required this.maxSteps,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(currentStep.toString(),
                style: Fonts.body01Regular().copyWith(
                  color: Palette.colorPrimary500,
                )),
            SizedBox(width: 4.w),
            Text('/',
                style: Fonts.body01Regular().copyWith(
                  color: const Color(0xff979CA7),
                )),
            SizedBox(width: 4.w),
            Text(maxSteps.toString(),
                style: Fonts.body01Regular().copyWith(
                  color: const Color(0xff979CA7),
                )),
          ],
        ),
        SizedBox(height: 8.h),
        LinearProgressBar(
          maxSteps: maxSteps,
          progressType: LinearProgressBar.progressTypeLinear,
          currentStep: currentStep,
          progressColor: Palette.colorPrimary500,
          backgroundColor: const Color(0xffE9EBEC),
          borderRadius: BorderRadius.circular(8.w),
          minHeight: 8.h,
        )
      ],
    );
  }
}
