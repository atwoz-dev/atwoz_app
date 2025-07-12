import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_type_setting_item.freezed.dart';

enum IdealTypeDialogType { single, multi }

@freezed
class IdealTypeSettingItem with _$IdealTypeSettingItem {
  const factory IdealTypeSettingItem({
    required String label,
    required String placeholder,
    required List<String> options,
    @Default(IdealTypeDialogType.single) IdealTypeDialogType type,
    @Default(1) int maxSelectableCount,
  }) = _IdealTypeSettingItem;
}
