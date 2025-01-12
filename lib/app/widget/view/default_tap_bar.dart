import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

class DefaultTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final double? horizontalPadding;
  final List<String> tabs;

  const DefaultTabBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.horizontalPadding,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = horizontalPadding ?? context.screenWidth * 0.05;
    final double tabWidth = (context.screenWidth - padding * 2) / tabs.length;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tabs.asMap().entries.map((entry) {
            final int index = entry.key;
            final String label = entry.value;

            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                width: tabWidth,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Text(
                  label,
                  style: Fonts.body02Regular(
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
        // 하단 경계선
        Stack(
          children: [
            Container(
              height: 2,
              color: Palette.colorGrey100,
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: padding + currentIndex * tabWidth,
              child: Container(
                width: tabWidth,
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
