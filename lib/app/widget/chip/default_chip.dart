import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultChip extends StatelessWidget {
  const DefaultChip({super.key, required this.titleList});

  final List<String> titleList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.w,
      runSpacing: 6.h,
      children: titleList.map((title) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 2.h,
          ),
          decoration: const BoxDecoration(
            color: Palette.colorPrimary100,
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "PretendardMedium",
              color: Palette.colorPrimary600,
              fontSize: 12.sp,
              height: 1.h,
            ),
          ),
        );
      }).toList(),
    );
  }
}
