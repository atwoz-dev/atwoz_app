import 'package:flutter/material.dart';

@immutable
class FilterState {
  final RangeValues rangeValues;
  final List<String> selectedCitys;
  final List<String> selectedGenders;

  const FilterState({
    required this.rangeValues,
    required this.selectedCitys,
    required this.selectedGenders,
  });

  FilterState copyWith({
    RangeValues? rangeValues,
    List<String>? selectedCitys,
    List<String>? selectedGenders,
  }) {
    return FilterState(
      rangeValues: rangeValues ?? this.rangeValues,
      selectedCitys: selectedCitys ?? this.selectedCitys,
      selectedGenders: selectedGenders ?? this.selectedGenders,
    );
  }
}
