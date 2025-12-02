import 'package:equatable/equatable.dart';
import 'package:deepple_app/features/profile/domain/common/enum.dart';

typedef ExtendedSmokingStatus = ExtendedHomeEnum<SmokingStatus>;
typedef ExtendedDrinkingStatus = ExtendedHomeEnum<DrinkingStatus>;
typedef ExtendedReligionStatus = ExtendedHomeEnum<Religion>;

class ExtendedHomeEnum<T extends Enum> extends Equatable {
  final T? status;
  final String label;

  const ExtendedHomeEnum({this.status, required this.label});

  String get name => status?.name ?? 'any';

  /// "상관없음" 추가
  static List<ExtendedHomeEnum<T>> fromValue<T extends Enum>({
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    return [
      ExtendedHomeEnum<T>(status: null, label: '상관없음'),
      for (final value in enumValues)
        ExtendedHomeEnum<T>(status: value, label: valueToLabel(value)),
    ];
  }

  /// 서버 문자열 → Enum 변환
  static ExtendedHomeEnum<T> fromServerString<T extends Enum>({
    String? value,
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    if (value == null) {
      return ExtendedHomeEnum<T>(status: null, label: '상관없음');
    }
    final map = {for (final s in enumValues) s.name.toUpperCase(): s};
    final status = map[value.toUpperCase()];
    if (status == null) {
      return ExtendedHomeEnum<T>(status: null, label: '상관없음');
    }
    return ExtendedHomeEnum<T>(status: status, label: valueToLabel(status));
  }

  /// label → Enum 변환
  static ExtendedHomeEnum<T> fromLabel<T extends Enum>({
    required String label,
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    if (label == '상관없음') {
      return ExtendedHomeEnum<T>(status: null, label: '상관없음');
    }
    final map = {for (final s in enumValues) valueToLabel(s): s};
    final status = map[label];
    if (status == null) {
      return ExtendedHomeEnum<T>(status: null, label: '상관없음');
    }
    return ExtendedHomeEnum<T>(status: status, label: label);
  }

  static String? toUpper<T extends Enum>(T? status) {
    return status?.name.toUpperCase();
  }

  @override
  List<Object?> get props => [status, label];
}
