import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/input/build_list_wheel_input.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// TODO: api 나오면 options들 백엔드에서 받아오게 수정해야 함
Widget buildBirthInput({
  required int? selectedYear,
  required SignUpProcess signUpNotifier,
}) {
  return buildListWheelInput(
    selectedValue: selectedYear,
    minValue: 1960,
    maxValue: 2022,
    defaultValue: 1997,
    unit: '년',
    onValueChanged: (year) => signUpNotifier.updateSelectedYear(year),
  );
}

Widget buildHeightInput({
  required int? selectedHeight,
  required SignUpProcess signUpNotifier,
}) {
  return buildListWheelInput(
    selectedValue: selectedHeight,
    minValue: 130,
    maxValue: 200,
    defaultValue: 170,
    unit: 'cm',
    onValueChanged: (height) => signUpNotifier.updateSelectedHeight(height),
  );
}

Widget buildJobInput({
  required String? selectedJob,
  required SignUpProcess signUpNotifier,
}) {
  return Wrap(
    spacing: 8.w,
    runSpacing: 8.h,
    children: ['개발자', '디자이너', '마케팅', '교육', '의료', '기타'].map((job) {
      return ChoiceChip(
        label: Text(job),
        selected: selectedJob == job,
        onSelected: (_) => signUpNotifier.updateSelectedJob(job),
      );
    }).toList(),
  );
}

Widget buildLocationInput({
  required String? selectedLocation,
  required SignUpProcess signUpNotifier,
}) {
  final locationController = TextEditingController(text: selectedLocation);
  return Column(
    children: [
      TextField(
        controller: locationController,
        decoration: const InputDecoration(
          labelText: '지역 입력',
        ),
        onChanged: (value) => signUpNotifier.updateSelectedLocation(value),
      ),
      ElevatedButton(
        onPressed: () {
          // 현재 위치 가져오기 로직 추가
          const currentLocation = '현재 위치로 설정하기';
          signUpNotifier.updateSelectedLocation(currentLocation);
          locationController.text = currentLocation;
        },
        child: const Text('현재 위치로 설정하기'),
      ),
    ],
  );
}

Widget buildEducationInput({
  required String? selectedEducation,
  required SignUpProcess signUpNotifier,
}) {
  final options = [
    '서울 4년제',
    '지방 4년제',
    '전문대',
    '해외대',
    '석사',
    '박사',
    '로스쿨',
    '고등학교 졸업',
    '기타',
  ];
  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: options.map((option) {
      return ChoiceChip(
        label: Text(option),
        selected: selectedEducation == option,
        onSelected: (_) => signUpNotifier.updateEducation(option),
      );
    }).toList(),
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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
  required String? selectedSmoking,
  required SignUpProcess signUpNotifier,
}) {
  final options = ['비흡연', '금연 중', '전자담배', '가끔 피움', '매일 피움'];
  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: options.map((option) {
      return ChoiceChip(
        label: Text(option),
        selected: selectedSmoking == option,
        onSelected: (_) => signUpNotifier.updateSmoking(option),
      );
    }).toList(),
  );
}

Widget buildDrinkingInput({
  required String? selectedDrinking,
  required SignUpProcess signUpNotifier,
}) {
  final options = [
    '전혀 마시지 않음',
    '사회적 음주',
    '가끔 마심',
    '4술자리를 즐김',
    '금주 중',
  ];
  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: options.map((option) {
      return ChoiceChip(
        label: Text(option),
        selected: selectedDrinking == option,
        onSelected: (_) => signUpNotifier.updateDrinking(option),
      );
    }).toList(),
  );
}

Widget buildReligionInput({
  required String? selectedReligion,
  required SignUpProcess signUpNotifier,
}) {
  final options = ['무교', '기독교', '천주교', '불교', '기타'];
  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: options.map((option) {
      return ChoiceChip(
        label: Text(option),
        selected: selectedReligion == option,
        onSelected: (_) => signUpNotifier.updateReligion(option),
      );
    }).toList(),
  );
}

Widget buildHobbiesInput({
  required List<String> selectedHobbies,
  required SignUpProcess signUpNotifier,
}) {
  final options = [
    '국내여행/해외여행',
    '공연/전시회관람',
    '웹툰/만화',
    '드라마/예능보기',
    'PC/모바일게임',
    '애니메이션',
    '골프',
    '연극/영화',
    '글쓰기',
    '보드게임',
    '사진촬영',
    '노래',
    '배드민턴/테니스',
    '댄스',
    '드라이브',
    '등산/클라이밍',
    '산책',
    '맛집탐방',
    '쇼핑',
    '스키/스노우보드',
    '악기연주',
    '와인',
    '운동/헬스',
    '요가/필라테스',
    '요리',
    '인테리어',
    '자전거',
    '캠핑',
    '기타',
  ];
  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: options.map((option) {
      return FilterChip(
        label: Text(option),
        selected: selectedHobbies.contains(option),
        onSelected: (selected) {
          final updatedHobbies = List<String>.from(selectedHobbies);
          if (selected) {
            updatedHobbies.add(option);
          } else {
            updatedHobbies.remove(option);
          }
          signUpNotifier.updateHobbies(updatedHobbies);
        },
      );
    }).toList(),
  );
}
