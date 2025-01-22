import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_outlined_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/input/auto_complete.dart';
import 'package:atwoz_app/app/widget/input/build_list_wheel_input.dart';
import 'package:atwoz_app/app/widget/list/list_chip.dart';
import 'package:atwoz_app/app/widget/list/single_select_list_chip.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
  final jobOptions = [
    '연구개발/엔지니어',
    '개인사업/자영업',
    '영업/판매',
    '경영/기획',
    '미래를 위한 공부중',
    '취업 준비중',
    '교육',
    '예술/체육',
    '요식업',
    '의료/보건',
    '기계/건설',
    '디자인',
    '마케팅/광고',
    '무역/유통',
    '방송언론/연애',
    '법률/공공',
    '생산/제조',
    '서비스',
    '여행/운송',
    '기타'
  ];

  return SingleSelectListChip(
    options: jobOptions,
    selectedOption: selectedJob,
    onSelectionChanged: (updatedSelection) {
      signUpNotifier.updateSelectedJob(updatedSelection);
    },
  );
}

Widget buildLocationInput({
  required String? selectedLocation,
  required SignUpProcess signUpNotifier,
  required List<String> locationOptions,
  required FocusNode locationFocusNode,
  required TextEditingController locationController,
}) {
  return StatefulBuilder(
    builder: (context, setState) {
      locationController.addListener(() {
        setState(() {});
      });

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AutoComplete 위젯
          AutoComplete<String>(
            suffix: DefaultIcon.button(
              colorFilter: DefaultIcon.fillColor(Palette.colorGrey500),
              IconPath.closeCircle,
              onPressed: () {
                locationController.clear();
                signUpNotifier.updateSelectedLocation(null);
              },
            ),
            textEditingController: locationController,
            focusNode: locationFocusNode,
            optionsBuilder: (String query) {
              if (query.isEmpty) {
                return locationOptions; // 전체 옵션 표시
              }
              return locationOptions.where((String option) {
                return option.contains(query); // 입력값으로 필터링
              });
            },
            onSubmitted: (String value) {
              // 사용자가 submit할 때 호출
              // signUpNotifier.updateSelectedLocation(value);
              if (value.isEmpty) {
                signUpNotifier.updateSelectedLocation(null);
              }
            },
            hintText: '마포구, 서울특별시',
          ),
          if (locationController.text.isEmpty || locationController.text == "")
            Padding(
              padding: EdgeInsets.only(top: 8.h), // 버튼 간격 추가
              child: DefaultOutlinedButton(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
                primary: Palette.colorGrey100,
                textColor: Palette.colorGrey800,
                expandedWidth: true,
                onPressed: () {
                  // TODO: API 연결 후 하드 코딩 없애기
                  const currentLocation = '현재 위치';
                  signUpNotifier
                      .updateSelectedLocation(currentLocation); // 선택값 업데이트
                  locationController.text = currentLocation; // 입력 필드 업데이트
                },
                child: const Text('현재 위치로 설정하기'),
              ),
            ),
        ],
      );
    },
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
  return SingleSelectListChip(
    options: options,
    selectedOption: selectedEducation,
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
  return SingleSelectListChip(
    options: options,
    selectedOption: selectedSmoking,
    onSelectionChanged: (updatedSelection) {
      signUpNotifier.updateSmoking(updatedSelection);
    },
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
    '술자리를 즐김',
    '금주 중',
  ];
  return SingleSelectListChip(
    options: options,
    selectedOption: selectedDrinking,
    onSelectionChanged: (updatedSelection) {
      signUpNotifier.updateDrinking(updatedSelection);
    },
  );
}

Widget buildReligionInput({
  required String? selectedReligion,
  required SignUpProcess signUpNotifier,
}) {
  final options = ['무교', '기독교', '천주교', '불교', '기타'];
  return SingleSelectListChip(
    options: options,
    selectedOption: selectedReligion,
    onSelectionChanged: (updatedSelection) {
      signUpNotifier.updateReligion(updatedSelection);
    },
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

  return ListChip(
    options: options,
    selectedOptions: selectedHobbies,
    onSelectionChanged: (updatedSelections) {
      signUpNotifier.updateHobbies(updatedSelections);
    },
  );
}
