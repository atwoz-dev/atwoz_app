import 'package:atwoz_app/app/constants/paleette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 앱의 텍스트 스타일, 폰트, 스케일 등을 커스텀하는 설정
class AppStyles {
  const AppStyles._();

  static const String fontPretendardBold = 'PretendardBold';
  static const String fontPretendardSemiBold = 'PretendardSemiBold';
  static const String fontPretendardMedium = 'PretendardMedium';
  static const String fontPretendardRegular = 'PretendardRegular';

  /// Title
  static TextStyle title([Color? color]) => TextStyle(
        fontFamily: fontPretendardBold,
        color: color ?? AppColors.colorBlack,
        fontSize: 32.sp,
        height: 1.h,
      );

  /// Header
  static TextStyle header01([Color? color]) => TextStyle(
        fontFamily: fontPretendardBold,
        color: color ?? AppColors.colorBlack,
        fontSize: 24.sp,
        height: 1.h,
      );

  static TextStyle header02([Color? color]) => TextStyle(
        fontFamily: fontPretendardSemiBold,
        color: color ?? AppColors.colorBlack,
        fontSize: 20.sp,
        height: 1.h,
      );

  static TextStyle header03([Color? color]) => TextStyle(
        fontFamily: fontPretendardSemiBold,
        color: color ?? AppColors.colorBlack,
        fontSize: 18.sp,
        height: 1.h,
      );

  /// Body
  static TextStyle body01Medium([Color? color]) => TextStyle(
        fontFamily: fontPretendardMedium,
        color: color ?? AppColors.colorBlack,
        fontSize: 16.sp,
        height: 1.h,
      );

  static TextStyle body01Regular([Color? color]) => TextStyle(
        fontFamily: fontPretendardRegular,
        color: color ?? AppColors.colorBlack,
        fontSize: 16.sp,
        height: 1.h,
      );

  static TextStyle body01Link([
    Color? color,
    Color underLineColor = AppColors.colorBlack,
    double underLineThickness = 1.0,
  ]) =>
      TextStyle(
        fontFamily: fontPretendardRegular,
        color: color ?? AppColors.colorBlack,
        fontSize: 16.sp,
        height: 1.h,
        decoration: TextDecoration.underline,
        decorationColor: underLineColor,
        decorationThickness: underLineThickness,
      );

  static TextStyle body02Link([
    Color? color,
    Color underLineColor = AppColors.colorBlack,
    double underLineThickness = 1.0,
  ]) =>
      TextStyle(
        fontFamily: fontPretendardRegular,
        color: color ?? AppColors.colorBlack,
        fontSize: 14.sp,
        height: 1.h,
        decoration: TextDecoration.underline,
        decorationColor: underLineColor,
        decorationThickness: underLineThickness,
      );

  static TextStyle body02Medium([Color? color]) => TextStyle(
        fontFamily: fontPretendardMedium,
        color: color ?? AppColors.colorBlack,
        fontSize: 14.sp,
        height: 1.h,
      );

  static TextStyle body02Regular([Color? color]) => TextStyle(
        fontFamily: fontPretendardRegular,
        color: color ?? AppColors.colorBlack,
        fontSize: 14.sp,
        height: 1.h,
      );

  static TextStyle body03Regular([Color? color]) => TextStyle(
        fontFamily: fontPretendardRegular,
        color: color ?? AppColors.colorBlack,
        fontSize: 12.sp,
        height: 1.h,
      );

  /// Button
  static TextStyle button14([Color? color]) => TextStyle(
        fontFamily: fontPretendardRegular,
        color: color ?? AppColors.colorBlack,
        fontSize: 14.sp,
        height: 1.h,
      );

  static TextStyle button16([Color? color]) => TextStyle(
        fontFamily: fontPretendardBold,
        color: color ?? AppColors.colorBlack,
        fontSize: 16.sp,
        height: 1.h,
      );
}
