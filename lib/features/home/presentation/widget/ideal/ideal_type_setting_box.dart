import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/home/domain/model/ideal_type.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class IdealTypeSettingBox extends ConsumerWidget {
  const IdealTypeSettingBox({
    super.key,
    required this.item,
    required this.idealType,
  });

  final IdealTypeSettingItem item;
  final IdealType idealType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.label,
          style: Fonts.body02Regular().copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Gap(8),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => _showDialog(context, ref),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 24),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Palette.colorGrey100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              item.placeholder,
              style: Fonts.body02Regular().copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xff8D92A0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showDialog(BuildContext context, WidgetRef ref) {
    final options = item.options;
    final label = item.label;
    final notifier = ref.read(idealTypeNotifierProvider.notifier);

    switch (item.type) {
      case IdealTypeDialogType.single:
        int initialIndex = switch (label) {
          "흡연" => options.indexOf(smokingMap[idealType.smokingStatus]!),
          "음주" => options.indexOf(drinkingMap[idealType.drinkingStatus]!),
          "종교" => options.indexOf(religionMap[idealType.religion]!),
          _ => 0,
        };

        showDialog(
          context: context,
          builder: (_) => SingleBtnSelectDialg(
            label: label,
            options: options,
            initialIndex: initialIndex >= 0 ? initialIndex : 0,
            onItemSelected: (selectedValue) {
              switch (item.label) {
                case '흡연':
                  final smokingEnum = smokingMap.entries
                      .firstWhere((entry) => entry.value == selectedValue)
                      .key;
                  notifier.updateSmokingStatus(smokingEnum);
                  break;
                case '음주':
                  final drinkingEnum = drinkingMap.entries
                      .firstWhere((entry) => entry.value == selectedValue)
                      .key;
                  notifier.updateDrinkingStatus(drinkingEnum);
                  break;
                case '종교':
                  final religionEnum = religionMap.entries
                      .firstWhere((entry) => entry.value == selectedValue)
                      .key;
                  notifier.updateReligion(religionEnum);
                  break;
              }
            },
          ),
        );
        break;

      case IdealTypeDialogType.multi:
        List<String> selectedValues = switch (label) {
          "지역" => idealType.regions,
          "취미" => idealType.hobbies,
          _ => [],
        };

        showDialog(
          context: context,
          builder: (_) => MultiBtnSelectDialog(
            title: label,
            btnNames: options,
            maxSelectableCount: item.maxSelectableCount,
            selectedValues: selectedValues,
            onSubmit: (selectedItems) {
              switch (label) {
                case '지역':
                  notifier.updateRegions(selectedItems);
                  break;
                case '취미':
                  notifier.updateHobbies(selectedItems);
                  break;
              }
              context.pop();
            },
          ),
        );
        break;
    }
  }
}
