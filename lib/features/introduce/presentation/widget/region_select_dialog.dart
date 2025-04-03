import 'package:atwoz_app/app/widget/list/list_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/list/single_select_list_chip.dart';
import 'package:atwoz_app/features/introduce/domain/provider/filter_notifier.dart';
import 'package:atwoz_app/app/constants/region_data.dart';

class Regionselectdialog extends ConsumerStatefulWidget {
  const Regionselectdialog({super.key});

  @override
  ConsumerState<Regionselectdialog> createState() => _RegionselectdialogState();

  static Future open(BuildContext context) => showDialog(
        context: context,
        builder: (context) => const Regionselectdialog(),
      );
}

class _RegionselectdialogState extends ConsumerState<Regionselectdialog> {
  @override
  Widget build(BuildContext context) {
    final List<String> cityList =
        cityRegionMap.map((e) => e['city'] as String).toList();
    final selectedCityList = ref.watch(filterProvider).selectedHobbies;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(borderRadius: Dimens.dialogRadius),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 20.0,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              spacing: 14.0,
              children: [
                Text(
                  '지역',
                  style: Fonts.header03().copyWith(
                    fontWeight: FontWeight.w600,
                    color: Palette.colorBlack,
                  ),
                ),
                Text(
                  '2개까지 중복 선택이 가능해요',
                  style: Fonts.body02Regular()
                      .copyWith(color: Palette.colorGrey500),
                ),
                ListChip(
                  options: cityList,
                  selectedOptions: selectedCityList,
                  onSelectionChanged: (updatedSelections) {
                    if (updatedSelections.length > 2) return;
                    ref
                        .read(filterProvider.notifier)
                        .updateHobbies(updatedSelections);
                  },
                ),
              ],
            ),
            DefaultElevatedButton(
              onPressed: () => Navigator.pop(context),
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Text('확인'),
            ),
          ],
        ),
      ),
    );
  }
}
