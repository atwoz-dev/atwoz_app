import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoveTestPlainWidget extends StatelessWidget {
  const LoveTestPlainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Palette.colorGrey50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffEDEEF0))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Text(
                '• 본 고사는 서로의 가치관과 생각을 이해하기 위한 것으로 진실에 근거하여 성실한 자세로 임하셔야 합니다.',
                style: Fonts.body02Regular().copyWith(
                    fontWeight: FontWeight.w400,
                    color: Palette.colorGrey800,
                    fontSize: 12.sp),
                maxLines: 2,
              ),
              SizedBox(height: 12),
              Text(
                '• 필수과목 30문제를 풀고 선택한 모든 항목이 나와 동일한 상대방과 무료로 매칭을 진행할 수 있습니다.',
                style: Fonts.body02Regular().copyWith(
                    fontWeight: FontWeight.w400,
                    color: Palette.colorGrey800,
                    fontSize: 12.sp),
                maxLines: 2,
              ),
              SizedBox(height: 12),
              Text(
                '• 모의고사의 결과는 나의 프로필 상세 화면에 등록됩니다.',
                style: Fonts.body02Regular().copyWith(
                    fontWeight: FontWeight.w400,
                    color: Palette.colorGrey800,
                    fontSize: 12.sp),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
