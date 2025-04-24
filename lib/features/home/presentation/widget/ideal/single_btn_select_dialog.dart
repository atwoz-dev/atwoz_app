import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SingleBtnSelectDialg extends ConsumerStatefulWidget {
  const SingleBtnSelectDialg({
    super.key,
    required this.label,
    required this.options,
    required this.initialIndex,
    required this.onItemSelected,
  });

  final String label;
  final List<String> options;
  final int initialIndex;
  final void Function(String selectedValue) onItemSelected;

  @override
  ConsumerState<SingleBtnSelectDialg> createState() =>
      _SingleBtnSelectDialogState();
}

class _SingleBtnSelectDialogState extends ConsumerState<SingleBtnSelectDialg> {
  late int _selectedIndex; // 초기 인덱스 중앙값으로 설정
  late final FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
    _controller = FixedExtentScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final idealTypeNotifier = ref.watch(idealTypeNotifierProvider.notifier);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.only(top: 16, bottom: 24),
          width: context.screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: DefaultIcon(IconPath.close)),
                  ],
                ),
                Text(
                  widget.label,
                  style: Fonts.header03().copyWith(
                    fontWeight: FontWeight.w600,
                    color: Palette.colorBlack,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: context.screenHeight * 0.2,
                  child: ListWheelScrollView(
                    controller: _controller,
                    itemExtent: context.screenHeight * 0.05,
                    onSelectedItemChanged: (value) {
                      setState(() {
                        _selectedIndex = value;
                        final selectedValue = widget.options[_selectedIndex];

                        widget.onItemSelected(selectedValue);
                      });
                    },
                    children: widget.options.map((element) {
                      final isSelected =
                          widget.options[_selectedIndex] == element;

                      return Container(
                        width: context.screenWidth,
                        decoration: BoxDecoration(
                          color:
                              isSelected ? Palette.colorGrey50 : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            element,
                            style: isSelected
                                ? Fonts.body01Regular().copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Palette.colorBlack,
                                  )
                                : Fonts.body01Regular().copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Palette.colorGrey600,
                                  ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                DefaultElevatedButton(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  onPressed: context.pop,
                  onPrimary: context.palette.onPrimary,
                  primary: context.palette.primary,
                  child: Text("확인"),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
