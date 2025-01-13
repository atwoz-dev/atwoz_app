import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final bool isHighlighted; // 강조 여부를 제어하는 파라미터

  DefaultBottomNavigationBar({
    super.key,
    required this.currentIndex,
    this.isHighlighted = true, // 기본값은 강조 활성화
  });

  final List<_NavItem> _items = [
    _NavItem(
        icon: IconPath.home,
        iconFill: IconPath.homeFill,
        label: '홈',
        route: AppRoute.home),
    _NavItem(
        icon: IconPath.heart,
        iconFill: IconPath.heartFill,
        label: '좋아요',
        route: AppRoute.home // TODO: 좋아요 화면 네비게이션으로 바꾸기
        ),
    _NavItem(
        icon: IconPath.bolt,
        iconFill: IconPath.boltFill,
        label: '셀프소개',
        route: AppRoute.interview // TODO:셀프소개 화면 네비게이션으로 바꾸기
        ),
    _NavItem(
        icon: IconPath.exam,
        iconFill: IconPath.examFill,
        label: '모의고사',
        route: AppRoute.home // TODO: 모의고사 화면 네비게이션으로 바꾸기
        ),
    _NavItem(
        icon: IconPath.user,
        iconFill: IconPath.userFill,
        label: 'MY',
        route: AppRoute.home // TODO: 마이페이지 화면 네비게이션으로 바꾸기
        ),
  ];

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle =
        Fonts.body03Regular(Palette.colorGrey400).copyWith(fontSize: 10.sp);

    return Container(
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.colorGrey100,
            width: 1.0,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          navigate(
            context,
            route: _items[index].route,
            method: NavigationMethod.go,
          );
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor:
            isHighlighted ? context.palette.primary : Palette.colorGrey400,
        unselectedItemColor: Palette.colorGrey800,
        selectedLabelStyle: isHighlighted
            ? defaultTextStyle.copyWith(color: context.palette.primary)
            : defaultTextStyle,
        unselectedLabelStyle: defaultTextStyle,
        items: _items.map((item) {
          final isSelected =
              isHighlighted && _items.indexOf(item) == currentIndex;
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultIcon(
                  size: 20.h,
                  isSelected ? item.iconFill : item.icon,
                  colorFilter: DefaultIcon.fillColor(isSelected
                      ? context.palette.primary
                      : Palette.colorGrey400),
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
  final AppRoute route;

  const _NavItem({
    required this.icon,
    required this.iconFill,
    required this.label,
    required this.route,
  });
}