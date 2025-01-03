import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const DefaultBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;

    final items = [
      {'icon': AppIcons.home, 'icon_fill': AppIcons.homeFill, 'label': '홈'},
      {'icon': AppIcons.heart, 'icon_fill': AppIcons.heartFill, 'label': '좋아요'},
      {'icon': AppIcons.bolt, 'icon_fill': AppIcons.boltFill, 'label': '셀프소개'},
      {'icon': AppIcons.exam, 'icon_fill': AppIcons.examFill, 'label': '모의고사'},
      {'icon': AppIcons.user, 'icon_fill': AppIcons.userFill, 'label': 'MY'},
    ];

    final defaultTextStyle = AppStyles.body03Regular(AppColors.colorGrey400)
        .copyWith(fontSize: 10.sp);

    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.colorGrey100,
            width: 1.0,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColors.primary,
        unselectedItemColor: AppColors.colorGrey800,
        selectedLabelStyle: defaultTextStyle.copyWith(color: appColors.primary),
        unselectedLabelStyle: defaultTextStyle,
        items: items.map((item) {
          final isSelected = items.indexOf(item) == currentIndex;
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppIcon(
                  isSelected ? item['icon_fill'] : item['icon'],
                  colorFilter: isSelected
                      ? AppIcon.fillColor(appColors.primary)
                      : AppIcon.fillColor(AppColors.colorGrey400),
                ),
                SizedBox(height: 8.h), // 아이콘과 레이블 사이 간격 추가
              ],
            ),
            label: item['label'],
          );
        }).toList(),
      ),
    );
  }
}
