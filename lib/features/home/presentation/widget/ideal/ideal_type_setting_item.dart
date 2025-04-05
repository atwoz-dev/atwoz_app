enum IdealTypeDialogType { single, multi }

class IdealTypeSettingItem {
  final String label;
  final String placeholder;
  final List<String> options;
  final IdealTypeDialogType type;
  final int? maxSelectableCount;

  IdealTypeSettingItem({
    required this.label,
    required this.placeholder,
    required this.options,
    this.type = IdealTypeDialogType.single,
    this.maxSelectableCount,
  });
}
