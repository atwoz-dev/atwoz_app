import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import '../../constants/fonts.dart';

// TODO: 스타일 변경 필요
Future defaultBottomSheet(
  BuildContext context, {
  String? mainTitle,
  String? subTitle,
  String? content,
  VoidCallback? btnOnTap,
  bool isDismissible = true,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    builder: (context) {
      return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 32.w, horizontal: 16.w),
              child: Wrap(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (mainTitle != null)
                          ? Text(mainTitle,
                              style: Fonts.header03(Palette.colorGrey900))
                          : const SizedBox.shrink(),
                      SizedBox(height: 15.h),
                      (subTitle != null)
                          ? Text(subTitle,
                              style: Fonts.body01Medium(Palette.colorGrey500))
                          : const SizedBox.shrink(),
                    ],
                  ),
                  Container(
                    child: (content != null)
                        ? Text(content,
                            style: Fonts.body01Medium(Palette.colorGrey700))
                        : const SizedBox.shrink(),
                  ),
                  DefaultElevatedButton(
                    primary: Palette.colorPrimary500,
                    onPressed: () {},
                    child: Text(
                      '수락',
                      style: Fonts.body01Regular(Palette.colorWhite),
                    ),
                  ),
                ],
              )));
    },

    /// 바텀시트 배경 컬러
    backgroundColor: Palette.colorWhite,

    /// 바텀시트 드래그 가능 여부
    enableDrag: false,

    /// 바텀시트 외부영역 클릭 시 닫기 여부
    isDismissible: isDismissible,

    /// 바텀시트 외부영역 배경 컬러
    barrierColor: Palette.colorGrey900.withOpacity(0.2),

    /// 바텀시트의 모양 설정
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    )),
  );
}
