import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:atwoz_app/features/home/domain/enum/extended_enum.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_widget.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdealSettingArea extends ConsumerWidget {
  const IdealSettingArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(idealTypeNotifierProvider).when(
          data: (idealType) => Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: _getIdealTypeSettingItemList(idealType)
                  .map(
                    (item) => IdealTypeSettingBox(
                      item: item,
                      idealType: idealType,
                    ),
                  )
                  .toList(),
            ),
          ),
          error: (error, stackTrace) => Text('$error'),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }

  List<IdealTypeSettingItem> _getIdealTypeSettingItemList(IdealType idealType) {
    return [
      IdealTypeSettingItem(
        label: '지역',
        placeholder: idealType.cities.isNotEmpty
            ? idealType.cities.map((e) => e.label).toList().join(', ')
            : '상관없음',
        options: addressData.cities.map((e) => e.label).toList(),
        type: IdealTypeDialogType.multi,
        maxSelectableCount: 2,
      ),
      IdealTypeSettingItem(
        label: '흡연',
        placeholder: idealType.smokingStatus.korean,
        options:
            ExtendedSmokingStatus.valuesOf(SmokingStatus.values, (r) => r.label)
                .map((e) => e.korean)
                .toList(),
      ),
      IdealTypeSettingItem(
        label: '음주',
        placeholder: idealType.drinkingStatus.korean,
        options: ExtendedDrinkingStatus.valuesOf(
                DrinkingStatus.values, (r) => r.label)
            .map((e) => e.korean)
            .toList(),
      ),
      IdealTypeSettingItem(
        label: '종교',
        placeholder: idealType.religion.korean,
        options:
            ExtendedReligionStatus.valuesOf(Religion.values, (r) => r.label)
                .map((e) => e.korean)
                .toList(),
      ),
      IdealTypeSettingItem(
        label: '취미',
        placeholder: idealType.hobbies.isNotEmpty
            ? idealType.hobbies.join(', ')
            : '상관없음',
        options: Hobby.values.map((e) => e.label).toList(),
        type: IdealTypeDialogType.multi,
        maxSelectableCount: 3,
      ),
    ];
  }
}
