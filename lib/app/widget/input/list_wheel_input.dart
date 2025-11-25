import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListWheelInput extends StatefulWidget {
  final int? selectedValue;
  final int minValue;
  final int maxValue;
  final int defaultValue;
  final String unit;
  final ValueChanged<int> onValueChanged;

  const ListWheelInput({
    super.key,
    required this.selectedValue,
    required this.minValue,
    required this.maxValue,
    required this.defaultValue,
    required this.unit,
    required this.onValueChanged,
  });

  @override
  State<ListWheelInput> createState() => _ListWheelInputState();
}

class _ListWheelInputState extends State<ListWheelInput> {
  late FixedExtentScrollController _scrollController;
  late int _highlightedValue;

  @override
  void initState() {
    super.initState();
    final initialIndex =
        (widget.selectedValue ?? widget.defaultValue) - widget.minValue;
    _scrollController = FixedExtentScrollController(initialItem: initialIndex);
    _highlightedValue = widget.selectedValue ?? widget.defaultValue;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ListWheelScrollView
          ListWheelScrollView.useDelegate(
            itemExtent: 60.h,
            physics: const FixedExtentScrollPhysics(),
            controller: _scrollController,
            onSelectedItemChanged: (index) {
              final value = widget.minValue + index;
              setState(() {
                _highlightedValue = value;
              });
              widget.onValueChanged(value);
            },
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) {
                final value = widget.minValue + index;
                final isHighlighted = _highlightedValue == value;

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
                      '$value${widget.unit}',
                      style: isHighlighted
                          ? Fonts.header01(
                              context.palette.onSurface,
                            ).copyWith(fontWeight: FontWeight.bold)
                          : Fonts.header03(Palette.colorGrey600),
                    ),
                  ),
                );
              },
              childCount: widget.maxValue - widget.minValue + 1,
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
                  colors: [Colors.white, Colors.white.withAlpha(0)],
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
                  colors: [Colors.white, Colors.white.withAlpha(0)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
