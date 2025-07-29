import 'package:atwoz_app/features/profile/domain/common/enum.dart';

typedef ExtendedSmokingStatus = ExtendedHomeEnum<SmokingStatus>;
typedef ExtendedDrinkingStatus = ExtendedHomeEnum<DrinkingStatus>;
typedef ExtendedReligionStatus = ExtendedHomeEnum<Religion>;

class ExtendedHomeEnum<T extends Enum> {
  final T? status;
  final String label;

  const ExtendedHomeEnum._(this.status, this.label);

  String get name => status?.name ?? "any";

  // 기존 enum에 상관없음 추가
  static List<ExtendedHomeEnum<T>> fromValue<T extends Enum>({
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    return [
      const ExtendedHomeEnum._(null, "상관없음"),
      for (final value in enumValues)
        ExtendedHomeEnum._(
          value,
          valueToLabel(value),
        ),
    ];
  }

  // 서버에서 받은 데이터를 enum으로 변환
  static ExtendedHomeEnum<T> fromServerString<T extends Enum>({
    String? value,
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    if (value == null) return ExtendedHomeEnum._(null, "상관없음");
    final map = {
      for (final status in enumValues) status.name.toUpperCase(): status,
    };
    final status = map[value.toUpperCase()];
    if (status == null) {
      return ExtendedHomeEnum._(null, "상관없음");
    } // 매핑 실패 시 상관없음으로 처리
    return ExtendedHomeEnum._(status, valueToLabel(status));
  }

  // label을 enum으로 변환
  static ExtendedHomeEnum<T> fromLabel<T extends Enum>({
    required String label,
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    if (label == "상관없음") return ExtendedHomeEnum._(null, "상관없음");
    final map = {
      for (final status in enumValues) valueToLabel(status): status,
    };
    final status = map[label];
    if (status == null) {
      return ExtendedHomeEnum._(null, "상관없음");
    } // 매핑 실패 시 상관없음으로 처리
    return ExtendedHomeEnum._(status, label);
  }

  static String? toUpper<T extends Enum>(T? status) {
    return status?.name.toUpperCase();
  }
}
