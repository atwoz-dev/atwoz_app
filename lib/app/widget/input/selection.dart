import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/core/state/base_widget_state.dart';

class SelectionWidget extends StatefulWidget {
  final List<String> options; // 선택지 리스트
  final Color? activeColor;
  final Color? inactiveColor;
  final ValueChanged<String>? onChange; // 선택값 변경 콜백 추가

  const SelectionWidget({
    super.key,
    required this.options,
    this.activeColor,
    this.inactiveColor,
    this.onChange,
  });

  @override
  SelectionWidgetState createState() => SelectionWidgetState();
}

class SelectionWidgetState extends AppBaseWidgetState<SelectionWidget> {
  String? selectedValue; // 현재 선택된 값

  @override
  void initState() {
    super.initState();
    if (widget.options.isNotEmpty) {
      selectedValue = widget.options.first;
      // 기본 선택값을 부모 위젯에 반영
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.onChange != null) {
          widget.onChange!(selectedValue!);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final activeColor = widget.activeColor ?? palette.primary;
    final inactiveColor = widget.inactiveColor ?? Palette.colorGrey100;
    final textColorSelected = palette.onPrimary;
    final textColorUnselected = Palette.colorGrey500;

    return Container(
      height: 50, // 전체 높이 설정
      decoration: BoxDecoration(
        color: inactiveColor, // 배경색 설정
        borderRadius: Dimens.buttonRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: widget.options.asMap().entries.map((entry) {
          final index = entry.key;
          final option = entry.value;
          final isSelected = selectedValue == option;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                safeSetState(() {
                  selectedValue = option;
                });
                // onChange 콜백 호출
                if (widget.onChange != null) {
                  widget.onChange!(option);
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: isSelected ? activeColor : inactiveColor,
                  borderRadius: BorderRadius.only(
                    topLeft: index == 0
                        ? Radius.circular(Dimens.buttonRadiusValue)
                        : Radius.zero,
                    bottomLeft: index == 0
                        ? Radius.circular(Dimens.buttonRadiusValue)
                        : Radius.zero,
                    topRight: index == widget.options.length - 1
                        ? Radius.circular(Dimens.buttonRadiusValue)
                        : Radius.zero,
                    bottomRight: index == widget.options.length - 1
                        ? Radius.circular(Dimens.buttonRadiusValue)
                        : Radius.zero,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  option,
                  style: Fonts.body02Medium(
                    isSelected ? textColorSelected : textColorUnselected,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
