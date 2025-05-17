import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_outlined_button.dart';
import 'package:atwoz_app/app/widget/button/default_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoveTestBottomButton extends StatelessWidget {
  final VoidCallback? onPrev;
  final VoidCallback? onNext;
  const LoveTestBottomButton(
      {super.key, required this.onPrev, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: DefaultOutlinedButton(
            expandedWidth: false,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            primary: Color(0xffE9EBEC),
            onPressed: onPrev,
            child: Text(
              '이전',
              style: Fonts.header03()
                  .copyWith(fontSize: 16.sp, color: Color(0xff979CA7)),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: DefaultOutlinedButton(
            expandedWidth: false,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            primary: Palette.colorPrimary500,
            backgroundColor: Palette.colorPrimary500,
            onPressed: onNext,
            child: Text(
              '다음',
              style: Fonts.header03()
                  .copyWith(fontSize: 16.sp, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
