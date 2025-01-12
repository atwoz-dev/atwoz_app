import 'package:flutter/widgets.dart';

import '../util/string_util.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}

extension StringExtension on String? {
  /// Remove Leading and Trailing Spaces and remove Duplicate Spaces
  String? trimExtra() => this?.trim().replaceAll(RegExp(r'\s+'), ' ');

  /// Sort ASC for string
  int compareASC(String? text, {bool caseSensitive = false}) {
    if (caseSensitive) {
      return this?.compareTo(text ?? '') ?? 0;
    }
    return this?.toLowerCase().compareTo(text?.toLowerCase() ?? '') ?? 0;
  }

  /// Sort DESC for string
  int compareDESC(String? text, {bool caseSensitive = false}) {
    return -compareASC(text, caseSensitive: caseSensitive);
  }

  /// To phone format
  String get toPhoneString => StringUtils.phoneFormatString(this ?? '');
}
