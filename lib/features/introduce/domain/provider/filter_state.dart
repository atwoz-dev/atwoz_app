import 'package:flutter/material.dart';

@immutable
class FilterState {
  final RangeValues rangeValues;
  final List<String> selectedCitys;

  const FilterState({
    required this.rangeValues,
    required this.selectedCitys,
  });

  FilterState copyWith({
    RangeValues? rangeValues,
    List<String>? selectedCitys,
  }) {
    return FilterState(
      rangeValues: rangeValues ?? this.rangeValues,
      selectedCitys: selectedCitys ?? this.selectedCitys,
    );
  }
}
