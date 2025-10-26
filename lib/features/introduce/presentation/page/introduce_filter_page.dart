import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/input/selection.dart';
import 'package:atwoz_app/features/introduce/domain/provider/filter_notifier.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/age_range_slider.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/region_select_dialog.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/row_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IntroduceFilterPage extends ConsumerWidget {
  const IntroduceFilterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ageRange = ref.watch(filterProvider).rangeValues;
    final selectedCityList = ref.watch(filterProvider).selectedCitys;
    final selectedGenderList =
        ref.watch(filterProvider).selectedGenders;

    return Scaffold(
      appBar: const DefaultAppBar(
        title: '필터 설정',
      ),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '나이',
                  style: Fonts.body02Regular(Palette.colorBlack)
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                Text("${ageRange.start.toInt()}세~${ageRange.end.toInt()}세",
                    style: Fonts.body02Regular(Palette.colorBlack))
              ],
            )),
        AgeRangeSlider(),
        Gap(12.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              RowTextFormField(
                label: '선호 지역',
                hintText: '선호 지역을 선택해주세요',
                initialValue: selectedCityList.isNotEmpty
                    ? selectedCityList.join(', ')
                    : null,
              ),
              Gap(24.h),
              buildLabeledRow(
                context: context,
                label: '성별',
                child: SelectionWidget(
                  options: ["전체 보기", "이성만 보기"],
                  onChange: (value) {
                    // TODO: 성별 설정 추가
                  },
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
