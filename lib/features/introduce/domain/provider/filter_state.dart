import 'package:flutter/material.dart';

@immutable
class FilterState {
  final RangeValues rangeValues;
  final List<String> selectedHobbies;

  const FilterState({
    required this.rangeValues,
    required this.selectedHobbies,
  });

  FilterState copyWith({
    RangeValues? rangeValues,
    List<String>? selectedHobbies,
  }) {
    return FilterState(
      rangeValues: rangeValues ?? this.rangeValues,
      selectedHobbies: selectedHobbies ?? this.selectedHobbies,
    );
  }
}
