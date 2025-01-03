import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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

    // BottomNavigationBarItem 정보를 간결하게 표현
    final items = [
      _NavItem(
        icon: AppIcons.home,
        iconFill: AppIcons.homeFill,
        label: '홈',
        onPressed: () {},
      ),
      _NavItem(
        icon: AppIcons.heart,
        iconFill: AppIcons.heartFill,
        label: '좋아요',
        onPressed: () {},
      ),
      _NavItem(
        icon: AppIcons.bolt,
        iconFill: AppIcons.boltFill,
        label: '셀프소개',
        onPressed: () => navigate(
          context,
          route: AppRoute.interview,
          method: NavigationMethod.go,
        ),
      ),
      _NavItem(
        icon: AppIcons.exam,
        iconFill: AppIcons.examFill,
        label: '모의고사',
        onPressed: () {},
      ),
      _NavItem(
        icon: AppIcons.user,
        iconFill: AppIcons.userFill,
        label: 'MY',
        onPressed: () {},
      ),
    ];

    final defaultTextStyle = AppStyles.body03Regular(AppColors.colorGrey400)
        .copyWith(fontSize: 10.sp);

    return Container(
      padding: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.colorGrey100,
            width: 1.0,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          items[index].onPressed?.call();
          onTap(index);
        },
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
                  isSelected ? item.iconFill : item.icon,
                  colorFilter: AppIcon.fillColor(
                      isSelected ? appColors.primary : AppColors.colorGrey400),
                ),
                Gap(8.h), // 아이콘과 레이블 사이 간격
              ],
            ),
            label: item.label,
          );
        }).toList(),
      ),
    );
  }
}

// NavItem 클래스를 사용하여 아이템 정의 간소화
class _NavItem {
  final String icon;
  final String iconFill;
  final String label;
  final VoidCallback? onPressed;

  const _NavItem({
    required this.icon,
    required this.iconFill,
    required this.label,
    this.onPressed,
  });
}
