import 'package:atwoz_app/features/profile/domain/common/enum.dart';

typedef ExtendedSmokingStatus = ExtendedEnum<SmokingStatus>;
typedef ExtendedDrinkingStatus = ExtendedEnum<DrinkingStatus>;
typedef ExtendedReligionStatus = ExtendedEnum<Religion>;

class ExtendedEnum<T extends Enum> {
  final T? status;
  final String korean;

  const ExtendedEnum._(this.status, this.korean);

  String get name => status?.name ?? "any";
  String get label => (status as dynamic)?.label ?? "상관없음";

  static List<ExtendedEnum<T>> valuesOf<T extends Enum>(
    List<T> enumValues,
    String Function(T) labelGetter,
  ) {
    return [
      for (final s in enumValues) ExtendedEnum._(s, labelGetter(s)),
      const ExtendedEnum._(null, "상관없음"),
    ];
  }

  static ExtendedEnum<T> parseUpper<T extends Enum>(
    String? value,
    List<T> enumValues,
    String Function(T) labelGetter,
  ) {
    if (value == null) return ExtendedEnum._(null, "상관없음");
    final map = {
      for (final status in enumValues) status.name.toUpperCase(): status,
    };
    final status = map[value.toUpperCase()];
    if (status == null) {
      return ExtendedEnum._(null, "상관없음");
    } // 매핑 실패 시 상관없음으로 처리
    return ExtendedEnum._(status, labelGetter(status));
  }

  static ExtendedEnum<T> parseLabel<T extends Enum>(
    String label,
    List<T> enumValues,
    String Function(T) labelGetter,
  ) {
    if (label == "상관없음") return ExtendedEnum._(null, "상관없음");
    final map = {
      for (final status in enumValues) labelGetter(status): status,
    };
    final status = map[label];
    if (status == null) {
      return ExtendedEnum._(null, "상관없음");
    } // 매핑 실패 시 상관없음으로 처리
    return ExtendedEnum._(status, label);
  }

  static String? toUpper<T extends Enum>(T? status) {
    return status?.name.toUpperCase();
  }
}
