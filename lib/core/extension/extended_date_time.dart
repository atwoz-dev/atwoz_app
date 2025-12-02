import 'package:deepple_app/core/util/date_time_util.dart';
import 'package:intl/intl.dart';

extension ExtendedDateTime on DateTime {
  /// Format: yyyy-MM-dd
  String get toHyphenDateString => DateTimeUtil.convertToDateHyphen(this);

  /// Format: yyyy.MM.dd
  String get toDateString => DateTimeUtil.convertToDate(this);

  /// Format: HH:mm:ss
  String get toTimeString => DateTimeUtil.convertToTime(this);

  /// Format: yyyy.MM.dd HH:mm:ss
  String get toDateTimeString => DateTimeUtil.convertToDateTime(this);

  /// Format: HH:mm
  String get toTimeNoSecondString => DateTimeUtil.convertToTimeNoSecond(this);

  /// Format: yyyy.MM.dd HH:mm
  String get toDateTimeNoSecondString {
    return '$toDateString $toTimeNoSecondString';
  }

  // Format: Now, few Seconds Ago, 1 minutes ago, 2 hours ago, 3 days ago,...
  String get toRelativeString => DateTimeUtil.convertToDateRelative(this);
}

extension DateTimeNullExtesion on DateTime? {
  String get toHyphenDateString => this?.toHyphenDateString ?? '';
  String get toDateString => this?.toDateString ?? '';
  String get toTimeString => this?.toTimeString ?? '';
  String get toDateTimeString => this?.toDateTimeString ?? '';
  String get toTimeNoSecondString => this?.toTimeNoSecondString ?? '';
  String get toDateTimeNoSecondString => this?.toDateTimeNoSecondString ?? '';
}

extension DateFormatExtension on DateFormat {
  DateTime? tryParse(String inputString) {
    try {
      return parse(inputString);
    } on FormatException catch (_) {
      return DateTime.tryParse(inputString);
    }
  }
}
