import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/features/home/domain/domain.dart';
import 'package:atwoz_app/features/home/domain/enum/extended_home_enum.dart';
import 'package:atwoz_app/features/home/presentation/provider/controller.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_widget.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdealSettingArea extends ConsumerWidget {
  const IdealSettingArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncIdealType = ref.watch(idealTypeNotifierProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: asyncIdealType.when(
        data: (idealType) {
          final items = _getIdealTypeSettingItemList(idealType);
          return Column(
            children: items
                .map(
                  (item) => IdealTypeSettingBox(
                    item: item,
                    idealType: idealType,
                  ),
                )
                .toList(),
          );
        },
        error: (error, stackTrace) => Text('$error'),
        loading: () {
          final items = _getIdealTypeSettingItemList(null);
          return Column(
            children: items
                .map(
                  (item) => IdealTypeSettingBox(
                    item: item,
                    idealType: null, // 실제 데이터 없음
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }

  List<IdealTypeSettingItem> _getIdealTypeSettingItemList(
      IdealType? idealType) {
    return [
      IdealTypeSettingItem(
        label: '지역',
        placeholder: idealType?.cities.isNotEmpty == true
            ? idealType!.cities.map((e) => e.label).join(', ')
            : '상관없음',
        options: addressData.cities.map((e) => e.label).toList(),
        type: IdealTypeDialogType.multi,
        maxSelectableCount: 2,
      ),
      IdealTypeSettingItem(
        label: '흡연',
        placeholder: idealType?.smokingStatus.label ?? '상관없음',
        options: ExtendedSmokingStatus.fromValue(
          enumValues: SmokingStatus.values,
          valueToLabel: (value) => value.label,
        ).map((e) => e.label).toList(),
      ),
      IdealTypeSettingItem(
        label: '음주',
        placeholder: idealType?.drinkingStatus.label ?? '상관없음',
        options: ExtendedDrinkingStatus.fromValue(
          enumValues: DrinkingStatus.values,
          valueToLabel: (value) => value.label,
        ).map((e) => e.label).toList(),
      ),
      IdealTypeSettingItem(
        label: '종교',
        placeholder: idealType?.religion.label ?? '상관없음',
        options: ExtendedReligionStatus.fromValue(
          enumValues: Religion.values,
          valueToLabel: (value) => value.label,
        ).map((e) => e.label).toList(),
      ),
      IdealTypeSettingItem(
        label: '취미',
        placeholder: idealType?.hobbies.isNotEmpty == true
            ? idealType!.hobbies.map((e) => e.label).join(', ')
            : '상관없음',
        options: Hobby.values.map((e) => e.label).toList(),
        type: IdealTypeDialogType.multi,
        maxSelectableCount: 3,
      ),
    ];
  }
}
