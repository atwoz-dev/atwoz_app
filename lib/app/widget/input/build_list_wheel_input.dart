import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildListWheelInput({
  required int? selectedValue,
  required int minValue,
  required int maxValue,
  required int defaultValue,
  required String unit,
  required ValueChanged<int> onValueChanged,
}) {
  final int initialIndex = (selectedValue ?? defaultValue) - minValue;
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: initialIndex);

  int highlightedValue = selectedValue ?? defaultValue;

  // 컨트롤러 초기화와 스크롤 위치 설정
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (scrollController.hasClients &&
        scrollController.selectedItem != initialIndex) {
      scrollController.jumpToItem(initialIndex);
    }
  });

  return StatefulBuilder(
    builder: (context, setState) {
      return SizedBox(
        height: 250.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // ListWheelScrollView
            ListWheelScrollView.useDelegate(
              itemExtent: 60.h,
              physics: const FixedExtentScrollPhysics(),
              controller: scrollController,
              onSelectedItemChanged: (index) {
                final value = minValue + index;
                setState(() {
                  highlightedValue = value;
                });
                onValueChanged(value);
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  final value = minValue + index;
                  final isHighlighted = highlightedValue == value;

                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 0),
                    curve: Curves.easeInOutCubic,
                    decoration: BoxDecoration(
                      color: isHighlighted
                          ? Palette.colorGrey100.withAlpha(120)
                          : Colors.transparent,
                      borderRadius: Dimens.buttonRadius,
                    ),
                    child: Center(
                      child: Text(
                        '$value$unit',
                        style: isHighlighted
                            ? Fonts.header01(context.palette.onSurface)
                                .copyWith(fontWeight: FontWeight.bold)
                            : Fonts.header03(Palette.colorGrey600),
                      ),
                    ),
                  );
                },
                childCount: maxValue - minValue + 1,
              ),
            ),
            // 최상단 Fade-out Effect
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withAlpha(0),
                    ],
                  ),
                ),
              ),
            ),
            // 최하단 Fade-out Effect
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withAlpha(0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
