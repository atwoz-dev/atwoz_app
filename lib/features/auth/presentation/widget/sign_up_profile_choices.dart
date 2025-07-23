import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/constants/temp.dart';
import 'package:atwoz_app/app/enum/enum.dart';
import 'package:atwoz_app/app/widget/input/list_wheel_input.dart';
import 'package:atwoz_app/app/widget/list/list_chip.dart';
import 'package:atwoz_app/app/widget/list/single_select_list_chip.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSelectInput({
  required String? selectedValue,
  required List<String> options,
  required void Function(String?) onValueChanged,
}) {
  return SingleSelectListChip(
    options: options,
    selectedOption: selectedValue,
    onSelectionChanged: onValueChanged,
  );
}

// TODO: api 나오면 options들 백엔드에서 받아오게 수정해야 함
Widget buildBirthInput({
  required int? selectedYear,
  required SignUpProcess signUpNotifier,
}) {
  return ListWheelInput(
    key: const Key('birthInput'),
    selectedValue: selectedYear,
    minValue: 1960,
    maxValue: 2022,
    defaultValue: 1997,
    unit: '년',
    onValueChanged: signUpNotifier.updateSelectedYear,
  );
}

Widget buildHeightInput({
  required int? selectedHeight,
  required SignUpProcess signUpNotifier,
}) {
  return ListWheelInput(
    key: const Key('heightInput'),
    selectedValue: selectedHeight,
    minValue: 130,
    maxValue: 200,
    defaultValue: 170,
    unit: 'cm',
    onValueChanged: signUpNotifier.updateSelectedHeight,
  );
}

Widget buildJobInput({
  required String? selectedJob,
  required SignUpProcess signUpNotifier,
}) {
  return SingleSelectListChip(
    options: Job.values.map((e) => e.label).toList(),
    selectedOption: selectedJob,
    onSelectionChanged: signUpNotifier.updateSelectedJob,
  );
}

class LocationInputWidget extends ConsumerStatefulWidget {
  final String? selectedLocation;
  final Function(String?) onLocationUpdated;

  const LocationInputWidget({
    super.key,
    required this.selectedLocation,
    required this.onLocationUpdated,
  });

  @override
  ConsumerState<LocationInputWidget> createState() =>
      _LocationInputWidgetState();
}

class _LocationInputWidgetState extends ConsumerState<LocationInputWidget> {
  late final TextEditingController _controller;

  List<String> _filteredLocations = [];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.selectedLocation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(signUpProcessProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _controller,
          onChanged: (value) {
            setState(() {
              _filteredLocations = addressData.searchLocations(value);
            });
          },
          decoration: InputDecoration(
            hintText: '지역을 입력하세요',
            hintStyle: Fonts.body02Medium().copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xff8D92A0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xffEDEEF0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Palette.colorBlack,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        if (_controller.text.isEmpty)
          GestureDetector(
            onTap: () {
              notifier.updateLocation();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffDCDEE3),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '현재 위치로 설정하기',
                  style: Fonts.body02Medium(Palette.colorBlack),
                ),
              ),
            ),
          ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: context.screenHeight * 0.4, // 스크롤 가능한 최대 높이 설정
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _filteredLocations.map((location) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _controller.text = location;
                      widget.onLocationUpdated(location);
                      _filteredLocations.clear(); // 검색 후 결과 초기화
                    });

                    FocusScope.of(context).unfocus(); // 키보드 내리기
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 16,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Palette.colorGrey50,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Text(
                      location,
                      style: Fonts.body02Medium(Palette.colorGrey800),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildEducationInput({
  required Education? selectedEducation,
  required SignUpProcess signUpNotifier,
}) {
  final options = [...Education.values.map((e) => e.label)];

  return SingleSelectListChip(
    options: options,
    selectedOption: selectedEducation?.label,
    onSelectionChanged: (updatedSelection) {
      signUpNotifier.updateEducation(updatedSelection);
    },
  );
}

Widget buildMbtiInput({
  required SignUpProcessState signUpState,
  required SignUpProcess signUpNotifier,
}) {
  final mbtiOptions = [
    ['E', 'N', 'F', 'P'],
    ['I', 'S', 'T', 'J']
  ];

  Widget buildMbtiButton({
    required String letter,
    required bool isSelected,
    required void Function() onTap,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Palette.colorPrimary100 : Palette.colorGrey200,
          ),
          color: isSelected ? Palette.colorPrimary100 : context.palette.surface,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity, // 카드의 가로 길이를 GridView에 맞춤
        child: Text(
          letter,
          style: Fonts.title(
            isSelected ? context.palette.primary : Palette.colorGrey200,
          ).copyWith(fontWeight: FontWeight.bold, fontSize: 30.sp),
        ),
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 각 행에 4개의 카드
            mainAxisSpacing: 8.0, // 카드 간 세로 간격
            crossAxisSpacing: 8.0, // 카드 간 가로 간격
            childAspectRatio: 68.0 / 76.0, // 직사각형 비율
          ),
          itemCount: mbtiOptions.expand((e) => e).length,
          itemBuilder: (context, index) {
            final row = index ~/ 4;
            final col = index % 4;
            final letter = mbtiOptions[row][col];
            final isSelected = (letter == signUpState.selectedFirstMbtiLetter ||
                letter == signUpState.selectedSecondMbtiLetter ||
                letter == signUpState.selectedThirdMbtiLetter ||
                letter == signUpState.selectedFourthMbtiLetter);

            return buildMbtiButton(
              context: context,
              letter: letter,
              isSelected: isSelected,
              onTap: () {
                if (['E', 'I'].contains(letter)) {
                  signUpNotifier.updateFirstMbtiLetter(letter);
                } else if (['N', 'S'].contains(letter)) {
                  signUpNotifier.updateSecondMbtiLetter(letter);
                } else if (['T', 'F'].contains(letter)) {
                  signUpNotifier.updateThirdMbtiLetter(letter);
                } else if (['J', 'P'].contains(letter)) {
                  signUpNotifier.updateFourthMbtiLetter(letter);
                }
              },
            );
          },
        ),
      ],
    ),
  );
}

Widget buildSmokingInput({
  required SmokingStatus? selectedSmoking,
  required SignUpProcess signUpNotifier,
}) =>
    buildSelectInput(
      selectedValue: selectedSmoking?.label,
      options: SmokingStatus.values.map((e) => e.label).toList(),
      onValueChanged: signUpNotifier.updateSmoking,
    );

Widget buildDrinkingInput({
  required DrinkingStatus? selectedDrinking,
  required SignUpProcess signUpNotifier,
}) =>
    buildSelectInput(
      selectedValue: selectedDrinking?.label,
      options: DrinkingStatus.values.map((e) => e.label).toList(),
      onValueChanged: signUpNotifier.updateDrinking,
    );

Widget buildReligionInput({
  required Religion? selectedReligion,
  required SignUpProcess signUpNotifier,
}) =>
    buildSelectInput(
      selectedValue: selectedReligion?.label,
      options: Religion.values.map((e) => e.label).toList(),
      onValueChanged: signUpNotifier.updateReligion,
    );

Widget buildHobbiesInput({
  required List<String> selectedHobbies,
  required SignUpProcess signUpNotifier,
}) {
  return ListChip(
    options: hobbies,
    selectedOptions: selectedHobbies,
    onSelectionChanged: signUpNotifier.updateHobbies,
  );
}
