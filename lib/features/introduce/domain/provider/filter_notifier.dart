import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/shared_preference/shared_preference_key.dart';
import 'package:atwoz_app/core/util/shared_preference/shared_preference_manager.dart';
import 'package:atwoz_app/features/introduce/domain/provider/filter_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_notifier.g.dart';

@riverpod
class FilterNotifier extends _$FilterNotifier {
  @override
  FilterState build() {
    final showAllGender = SharedPreferenceManager.getValue(
      SharedPreferenceKeys.showAllGender,
    );

    Gender? selectedGender = showAllGender == 1
        ? Gender.male
        : showAllGender == 2
        ? Gender.female
        : null;

    final preferredAgeStart =
        SharedPreferenceManager.getValue(
          SharedPreferenceKeys.preferredAgeStart,
        ) ??
        27;

    final preferredAgeEnd =
        SharedPreferenceManager.getValue(
          SharedPreferenceKeys.preferredAgeEnd,
        ) ??
        32;

    final preferredCities =
        SharedPreferenceManager.getValue(
          SharedPreferenceKeys.preferredCities,
        ) ??
        [];

    // TODO: 서버로부터 받은 선호나이를 반영해야함
    return FilterState(
      rangeValues: RangeValues(
        preferredAgeStart.toDouble(),
        preferredAgeEnd.toDouble(),
      ),
      selectedCitys: preferredCities,
      selectedGender: selectedGender,
      hasChanged: false,
    );
  }

  void updateRange(RangeValues values) {
    state = state.copyWith(rangeValues: values, hasChanged: true);
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.preferredAgeStart,
      values.start.toInt(),
    );
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.preferredAgeEnd,
      values.end.toInt(),
    );
  }

  void updateCitys(List<String> citys) {
    state = state.copyWith(selectedCitys: citys, hasChanged: true);
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.preferredCities,
      citys,
    );
  }

  void updateGender(Gender? gender) {
    state = state.copyWith(selectedGender: gender, hasChanged: true);
    SharedPreferenceManager.setValue(
      SharedPreferenceKeys.showAllGender,
      gender == Gender.male
          ? 1
          : gender == Gender.female
          ? 2
          : 0,
    );
  }

  void updateChanged(bool hasChanged) {
    state = state.copyWith(hasChanged: hasChanged);
  }
}
