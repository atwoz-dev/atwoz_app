import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extended_home_enum.freezed.dart';

typedef ExtendedSmokingStatus = ExtendedHomeEnum<SmokingStatus>;
typedef ExtendedDrinkingStatus = ExtendedHomeEnum<DrinkingStatus>;
typedef ExtendedReligionStatus = ExtendedHomeEnum<Religion>;

@freezed
class ExtendedHomeEnum<T extends Enum> with _$ExtendedHomeEnum<T> {
  const factory ExtendedHomeEnum({
    T? status,
    required String label,
  }) = _ExtendedHomeEnum<T>;

  const ExtendedHomeEnum._(); // 👈 freezed에서 custom method 쓰려면 반드시 추가

  String get name => status?.name ?? "any";

  /// 기존 enum에 "상관없음" 추가
  static List<ExtendedHomeEnum<T>> fromValue<T extends Enum>({
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    return [
      ExtendedHomeEnum<T>(status: null, label: "상관없음"),
      for (final value in enumValues)
        ExtendedHomeEnum<T>(
          status: value,
          label: valueToLabel(value),
        ),
    ];
  }

  /// 서버에서 받은 데이터를 enum으로 변환
  static ExtendedHomeEnum<T> fromServerString<T extends Enum>({
    String? value,
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    if (value == null) {
      return ExtendedHomeEnum<T>(status: null, label: "상관없음");
    }
    final map = {
      for (final status in enumValues) status.name.toUpperCase(): status,
    };
    final status = map[value.toUpperCase()];
    if (status == null) {
      return ExtendedHomeEnum<T>(status: null, label: "상관없음");
    }
    return ExtendedHomeEnum<T>(status: status, label: valueToLabel(status));
  }

  /// label을 enum으로 변환
  static ExtendedHomeEnum<T> fromLabel<T extends Enum>({
    required String label,
    required List<T> enumValues,
    required String Function(T) valueToLabel,
  }) {
    if (label == "상관없음") {
      return ExtendedHomeEnum<T>(status: null, label: "상관없음");
    }
    final map = {
      for (final status in enumValues) valueToLabel(status): status,
    };
    final status = map[label];
    if (status == null) {
      return ExtendedHomeEnum<T>(status: null, label: "상관없음");
    }
    return ExtendedHomeEnum<T>(status: status, label: label);
  }

  static String? toUpper<T extends Enum>(T? status) {
    return status?.name.toUpperCase();
  }
}
