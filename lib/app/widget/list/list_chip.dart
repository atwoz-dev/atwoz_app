import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';

class ListChip extends StatelessWidget {
  final List<String> options; // 선택 가능한 옵션 리스트
  final List<String> selectedOptions; // 선택된 옵션 리스트
  final void Function(List<String> updatedSelections)
  onSelectionChanged; // 선택 변경 콜백
  final int? maxSelectionCount;
  final double spacing; // 가로 간격
  final double runSpacing; // 세로 간격
  final WrapAlignment alignment; // 가로 방향 정렬
  final WrapAlignment runAlignment; // 세로 방향 정렬

  const ListChip({
    super.key,
    required this.options,
    required this.selectedOptions,
    required this.onSelectionChanged,
    this.maxSelectionCount,
    this.spacing = 8.0,
    this.runSpacing = 8.0,
    this.alignment = WrapAlignment.center,
    this.runAlignment = WrapAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing, // 가로 간격
      runSpacing: runSpacing, // 세로 간격
      alignment: alignment, // 가로 정렬
      runAlignment: runAlignment, // 세로 정렬
      children: options.map((option) {
        final isSelected = selectedOptions.contains(option);
        return GestureDetector(
          onTap: () {
            final updatedSelections = [
              ...selectedOptions,
              if (!isSelected &&
                  (maxSelectionCount == null ||
                      selectedOptions.length < maxSelectionCount!))
                option,
            ]..removeWhere((e) => isSelected && e == option);
            onSelectionChanged(updatedSelections);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: isSelected
                  ? Palette.colorPrimary100
                  : context.palette.surface,
              border: Border.all(
                color: isSelected
                    ? Palette.colorPrimary100
                    : Palette.colorGrey200,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              option,
              style: Fonts.body02Regular(
                isSelected ? context.palette.primary : Palette.colorGrey800,
              ).copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        );
      }).toList(),
    );
  }
}
