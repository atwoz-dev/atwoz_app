import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final double? horizontalPadding;
  final List<String> tabs;

  const DefaultTabBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.horizontalPadding,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = horizontalPadding ?? context.screenWidth * 0.05;
    final double firstTabWidth = 44.w;
    final double secondTabWidth = 76.w;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: tabs.asMap().entries.map((entry) {
              final int index = entry.key;
              final String label = entry.value;

              return GestureDetector(
                onTap: () => onTap(index),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 17.0,
                    horizontal: padding,
                  ),
                  child: Text(
                    label,
                    style:
                        Fonts.body02Regular(
                          index == currentIndex
                              ? context.palette.onSurface
                              : Palette.colorGrey400,
                        ).copyWith(
                          fontWeight: index == currentIndex
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        // 하단 경계선
        Stack(
          children: [
            Container(height: 1, color: Palette.colorGrey100),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: currentIndex == 0 ? padding : (padding * 2) + firstTabWidth,
              child: Container(
                width: currentIndex == 0 ? firstTabWidth : secondTabWidth,
                height: 2,
                color: Palette.colorBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
