import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  String location;

  DefaultBottomNavigationBar({
    super.key,
    required this.location,
  });

  final List<_NavItem> _items = [
    _NavItem(
        icon: IconPath.home,
        iconFill: IconPath.homeFill,
        label: '홈',
        route: AppRoute.home),
    _NavItem(
        icon: IconPath.like,
        iconFill: IconPath.likeFill,
        label: '좋아요',
        route: AppRoute.favoriteList),
    _NavItem(
        icon: IconPath.self,
        iconFill: IconPath.selfFill,
        label: '셀프소개',
        route: AppRoute.introduce),
    _NavItem(
        icon: IconPath.interview,
        iconFill: IconPath.interviewFill,
        label: '인터뷰',
        route: AppRoute.interview),
    _NavItem(
        icon: IconPath.mypage,
        iconFill: IconPath.mypageFill,
        label: 'MY',
        route: AppRoute.myPage),
  ];

  int _calculateCurrentIndex(String location) {
    if (location.startsWith('/${AppRoute.home.name}')) return 0;
    if (location.startsWith('/${AppRoute.favoriteList.name}')) return 1;
    if (location.startsWith('/${AppRoute.introduce.name}')) return 2;
    if (location.startsWith('/${AppRoute.interview.name}')) return 3;
    if (location.startsWith('/${AppRoute.myPage.name}')) return 4;
    return -1;
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle =
        Fonts.body03Regular(Palette.colorGrey400).copyWith(fontSize: 11.sp);
    final int currentIndex = _calculateCurrentIndex(location);
    final bool isIndexValid = currentIndex >= 0 && currentIndex < _items.length;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.colorGrey100,
            width: 1.0,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: isIndexValid ? currentIndex : 0,
        onTap: (index) {
          navigate(
            context,
            route: _items[index].route,
            method: NavigationMethod.go,
          );
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor:
            currentIndex >= 0 ? context.palette.primary : Palette.colorGrey400,
        unselectedItemColor: Palette.colorGrey500,
        selectedLabelStyle: currentIndex >= 0
            ? defaultTextStyle.copyWith(color: context.palette.primary)
            : defaultTextStyle,
        unselectedLabelStyle: defaultTextStyle,
        items: _items.map((item) {
          final isSelected = _items.indexOf(item) == currentIndex;
          return BottomNavigationBarItem(
            icon: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DefaultIcon(
                      size: 20.h,
                      isSelected ? item.iconFill : item.icon,
                    ),
                    Gap(8.h), // 아이콘과 레이블 사이 간격
                  ],
                )),
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
