import 'package:deepple_app/app/constants/constants.dart';
import 'package:deepple_app/app/widget/button/button.dart';
import 'package:deepple_app/app/widget/icon/default_icon.dart';
import 'package:deepple_app/core/extension/extended_context.dart';
import 'package:deepple_app/features/profile/domain/common/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FavoriteTypeSelectDialog extends ConsumerStatefulWidget {
  const FavoriteTypeSelectDialog({
    required this.userId,
    required this.favoriteType,
    super.key,
  });

  final int userId;
  final FavoriteType? favoriteType;

  @override
  ConsumerState<FavoriteTypeSelectDialog> createState() =>
      _FavoriteTypeSelectDialogState();

  static Future<FavoriteType?> open(
    BuildContext context, {
    required int userId,
    required FavoriteType? favoriteType,
  }) => showDialog<FavoriteType>(
    context: context,
    builder: (context) =>
        FavoriteTypeSelectDialog(userId: userId, favoriteType: favoriteType),
  );
}

class _FavoriteTypeSelectDialogState
    extends ConsumerState<FavoriteTypeSelectDialog> {
  FavoriteType? _selectedType;

  @override
  void initState() {
    _selectedType = widget.favoriteType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(borderRadius: Dimens.dialogRadius),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 24.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              spacing: 16.0,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '상대에 대한\n'
                  '호감은 어느정도인가요?',
                  style: Fonts.header02(),
                  textAlign: TextAlign.center,
                ),
                _FavoriteTypeSelector(
                  selectedType: _selectedType,
                  onChanged: (type) => setState(() {
                    _selectedType = type;
                  }),
                ),
                Text(
                  '호감에 따라 상대방이 결정하는데\n'
                  '큰 영향을 줄 수 있어요.',
                  style: Fonts.body01Regular().copyWith(
                    color: Palette.colorGrey800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            DefaultElevatedButton(
              onPressed: _selectedType != null
                  ? () => context.pop(_selectedType)
                  : null,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(_selectedType?.label ?? '호감도를 선택해주세요'),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoriteTypeSelector extends StatelessWidget {
  const _FavoriteTypeSelector({
    required this.selectedType,
    required this.onChanged,
  });

  final FavoriteType? selectedType;
  final ValueChanged<FavoriteType> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.0,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [FavoriteType.interested, FavoriteType.highlyInterested]
          .map(
            (type) => _FavoriteTypeItem(
              value: type,
              onTap: () => onChanged(type),
              selected: selectedType == type,
            ),
          )
          .toList(),
    );
  }
}

class _FavoriteTypeItem extends StatelessWidget {
  const _FavoriteTypeItem({
    required this.value,
    required this.onTap,
    required this.selected,
  });

  final FavoriteType value;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final borderPrimary = selected
        ? context.colorScheme.primary
        : context.colorScheme.outline;
    final iconPrimary = selected
        ? context.colorScheme.primary
        : context.colorScheme.secondary;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Params.animationDuration,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(3.2)),
          border: Border.all(width: 1.0, color: borderPrimary),
          color: selected
              ? context.colorScheme.primaryContainer.withValues(alpha: .12)
              : context.colorScheme.outlineVariant,
        ),
        padding: const EdgeInsets.all(12.0),
        child: DefaultIcon(
          value.iconPath,
          size: 35.2,
          colorFilter: DefaultIcon.fillColor(iconPrimary),
        ),
      ),
    );
  }
}
