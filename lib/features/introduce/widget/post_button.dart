import 'package:atwoz_app/core/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:atwoz_app/core/theme/app_colors.dart';
import 'package:atwoz_app/core/widgets/image/app_icon.dart';

class PostButton extends StatelessWidget {
  final VoidCallback? onTap;

  const PostButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 45.h,
        right: 16.w,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.colorPrimary500,
                shape: BoxShape.circle,
              ),
              child: AppIcon(
                AppIcons.post,
                size: 24,
              )),
        ));
  }
}
