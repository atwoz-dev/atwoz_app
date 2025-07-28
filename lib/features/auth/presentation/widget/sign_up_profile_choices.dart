import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/constants/temp.dart';
import 'package:atwoz_app/app/widget/button/default_outlined_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/input/auto_complete.dart';
import 'package:atwoz_app/app/widget/input/list_wheel_input.dart';
import 'package:atwoz_app/app/widget/list/list_chip.dart';
import 'package:atwoz_app/app/widget/list/single_select_list_chip.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSelectInput({
  required String? selectedValue,
  required List<String> values,
  required void Function(String?) onValueChanged,
}) {
  return SingleSelectListChip(
    options: values,
    selectedOption: selectedValue,
    onSelectionChanged: onValueChanged,
  );
}

// TODO: api 나오면 options들 백엔드에서 받아오게 수정해야 함
Widget buildBirthInput({
  required int? selectedYear,
  required SignUpProcess signUpNotifier,
}) {
  const defaultYear = 1997;
  // selectedYear가 없으면 초기 세팅
  if (selectedYear == null) {
    Future.microtask(() {
      signUpNotifier.updateSelectedYear(defaultYear);
    });
  }

  return ListWheelInput(
    selectedValue: selectedYear ?? defaultYear,
    minValue: DateTime.now().year - 46,
    maxValue: DateTime.now().year - 20,
    defaultValue: defaultYear,
    unit: '년',
    onValueChanged: signUpNotifier.updateSelectedYear,
  );
}

Widget buildHeightInput({
  required int? selectedHeight,
  required SignUpProcess signUpNotifier,
}) {
  const defaultHeight = 170;

  if (selectedHeight == null) {
    Future.microtask(() {
      signUpNotifier.updateSelectedHeight(defaultHeight);
    });
  }

  return ListWheelInput(
    key: const Key('heightInput'),
    selectedValue: selectedHeight ?? defaultHeight,
    minValue: 130,
    maxValue: 200,
    defaultValue: defaultHeight,
    unit: 'cm',
    onValueChanged: signUpNotifier.updateSelectedHeight,
  );
}

Widget buildJobInput({
  required String? selectedJob,
  required SignUpProcess signUpNotifier,
}) {
  return SingleSelectListChip(
    options: jobOptions,
    selectedOption: selectedJob,
    onSelectionChanged: signUpNotifier.updateSelectedJob,
  );
}

class LocationInputWidget extends StatefulWidget {
  final String? selectedLocation;
  final Function(String?) onLocationUpdated;

  const LocationInputWidget({
    super.key,
    required this.selectedLocation,
    required this.onLocationUpdated,
  });

  @override
  State<LocationInputWidget> createState() => _LocationInputWidgetState();
}

class _LocationInputWidgetState extends State<LocationInputWidget> {
  late final TextEditingController locationController;
  late final FocusNode locationFocusNode;

  @override
  void initState() {
    super.initState();
    locationController = TextEditingController(text: widget.selectedLocation);
    locationFocusNode = FocusNode();

    locationController.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    locationController.dispose();
    locationFocusNode.dispose();
    super.dispose();
  }

  String extractInitialConsonant(String input) {
    const int baseCode = 0xAC00; // "가"의 유니코드
    const List<String> initialConsonants = [
      "ㄱ",
      "ㄲ",
      "ㄴ",
      "ㄷ",
      "ㄸ",
      "ㄹ",
      "ㅁ",
      "ㅂ",
      "ㅃ",
      "ㅅ",
      "ㅆ",
      "ㅇ",
      "ㅈ",
      "ㅉ",
      "ㅊ",
      "ㅋ",
      "ㅌ",
      "ㅍ",
      "ㅎ"
    ];

    final buffer = StringBuffer();

    for (final char in input.runes) {
      if (char >= baseCode && char <= 0xD7A3) {
        final index = ((char - baseCode) / (21 * 28)).floor();
        buffer.write(initialConsonants[index]);
      } else {
        buffer.write(String.fromCharCode(char)); // 한글이 아닌 경우 그대로 추가
      }
    }

    return buffer.toString();
  }

  List<String> getCityAndRegions(String city) {
    final cityData = cityRegionMap.firstWhere(
      (e) => e['city'] == city,
      orElse: () => {'regions': []},
    );
    return [...cityData['regions'].map((region) => '$city $region')];
  }

  @override
  Widget build(BuildContext context) {
    final List<String> cityOptions =
        cityRegionMap.map((e) => e['city'] as String).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoComplete<String>(
          suffix: DefaultIcon.button(
            colorFilter: DefaultIcon.fillColor(Palette.colorGrey500),
            IconPath.closeCircle,
            size: 20,
            onPressed: () {
              if (mounted) {
                locationController.clear();
                widget.onLocationUpdated(null);
              }
            },
          ),
          textEditingController: locationController,
          focusNode: locationFocusNode,
          optionsBuilder: (String query) {
            if (query.isEmpty) {
              return cityOptions; // 입력값이 없으면 모든 city 반환
            }

            final List<String> matchingCities = [];
            final queryInitial = extractInitialConsonant(query);

            for (final city in cityOptions) {
              final cityInitial = extractInitialConsonant(city);
              if (city.contains(query) ||
                  cityInitial.startsWith(queryInitial)) {
                matchingCities.add(city);
              }
            }

            if (matchingCities.contains(query)) {
              final cityAndRegions = getCityAndRegions(query);
              return cityAndRegions;
            }

            return matchingCities;
          },
          onSubmitted: (String value) {
            if (mounted) {
              widget.onLocationUpdated(value);
              locationController.text = value;
            }
          },
          hintText: '예: 서울특별시, 서울특별시 강남구',
        ),
        if (locationController.text.isEmpty)
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: DefaultOutlinedButton(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
              primary: Palette.colorGrey100,
              textColor: Palette.colorGrey800,
              expandedWidth: true,
              onPressed: () {
                if (mounted) {
                  const currentLocation = '현재 위치';
                  widget.onLocationUpdated(currentLocation);
                  locationController.text = currentLocation;
                }
              },
              child: const Text('현재 위치로 설정하기'),
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
      values: SmokingStatus.values.map((e) => e.label).toList(),
      onValueChanged: signUpNotifier.updateSmoking,
    );

Widget buildDrinkingInput({
  required DrinkingStatus? selectedDrinking,
  required SignUpProcess signUpNotifier,
}) =>
    buildSelectInput(
      selectedValue: selectedDrinking?.label,
      values: DrinkingStatus.values.map((e) => e.label).toList(),
      onValueChanged: signUpNotifier.updateDrinking,
    );

Widget buildReligionInput({
  required Religion? selectedReligion,
  required SignUpProcess signUpNotifier,
}) =>
    buildSelectInput(
      selectedValue: selectedReligion?.label,
      values: Religion.values.map((e) => e.label).toList(),
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
