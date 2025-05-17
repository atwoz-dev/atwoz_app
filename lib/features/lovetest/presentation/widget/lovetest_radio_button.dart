import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomRadioButton extends StatelessWidget {
  final String option;
  final String groupValue;
  final void Function(String) onChanged;

  const CustomRadioButton(
      {required this.option,
      required this.groupValue,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    bool isSelected = option == groupValue;

    return GestureDetector(
      onTap: () => onChanged(option),
      child: Container(
        height: 52.h,
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.only(left: 16.w),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffd3cffb) : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.transparent : const Color(0xffe1e1e1),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? Palette.colorPrimary500
                      : const Color(0xffe1e1e1),
                  width: 1.w,
                ),
                color:
                    isSelected ? Palette.colorPrimary500 : Colors.transparent,
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      size: 16.w,
                      color: Colors.white,
                    )
                  : null,
            ),
            Gap(12),
            Expanded(
              child: Text(
                option,
                style: isSelected
                    ? Fonts.body02Regular()
                        .copyWith(fontWeight: FontWeight.w600)
                    : Fonts.body02Regular()
                        .copyWith(fontWeight: FontWeight.w400),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
