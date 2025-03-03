import 'package:atwoz_app/app/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/core/state/base_widget_state.dart';

class SelectionWidget extends StatefulWidget {
  final List<String> options;
  final Color? activeColor;
  final Color? inactiveColor;
  final ValueChanged<String>? onChange;

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
  String? _selectedValue;

  @override
  void initState() {
    super.initState();

    _selectedValue = widget.options.firstOrNull;
  }

  @override
  Widget build(BuildContext context) {
    final activeColor = widget.activeColor ?? palette.primary;
    final inactiveColor = widget.inactiveColor ?? Palette.colorGrey100;
    final textColorSelected = palette.onPrimary;
    final textColorUnselected = Palette.colorGrey500;

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: inactiveColor,
        borderRadius: Dimens.buttonRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: widget.options.asMap().entries.map((entry) {
          final index = entry.key;
          final option = entry.value;
          final isSelected = _selectedValue == option;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (_selectedValue == option)
                  return; // 동일한 값이면 불필요한 State 변경 방지

                safeSetState(() {
                  _selectedValue = option;
                });

                widget.onChange?.call(option);
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
