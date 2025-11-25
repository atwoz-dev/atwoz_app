import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultChip extends StatelessWidget {
  const DefaultChip({super.key, required this.titleList});

  final List<String> titleList;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: titleList.map((title) {
        return Container(
          margin: EdgeInsets.only(right: 4.w),
          padding: EdgeInsets.only(
            top: 2.h,
            left: 4.w,
            bottom: 2.h,
            right: 4.w,
          ),
          decoration: BoxDecoration(
            color: Palette.colorPrimary100,
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Text(
            title,
            style: Fonts.body02Regular(Palette.colorPrimary800),
          ),
        );
      }).toList(),
    );
  }
}
