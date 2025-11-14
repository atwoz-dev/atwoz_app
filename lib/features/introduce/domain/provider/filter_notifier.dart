import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/introduce/domain/provider/filter_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_notifier.g.dart';

@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() {
    // TODO: 서버로부터 받은 선호나이를 반영해야함
    return const FilterState(
      rangeValues: RangeValues(27, 32),
      selectedCitys: [],
      selectedGender: null,
      hasChanged: false,
    );
  }

  void updateRange(RangeValues values) {
    state = state.copyWith(rangeValues: values, hasChanged: true);
  }

  void updateCitys(List<String> citys) {
    state = state.copyWith(selectedCitys: citys, hasChanged: true);
  }

  void updateGender(Gender? gender) {
    state = state.copyWith(selectedGender: gender, hasChanged: true);
  }

  void updateChanged(bool hasChanged) {
    state = state.copyWith(hasChanged: hasChanged);
  }
}
