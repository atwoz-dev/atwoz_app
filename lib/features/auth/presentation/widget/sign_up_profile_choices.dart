import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// TODO: api 나오면 options들 백엔드에서 받아오게 수정해야 함
Widget buildBirthInput({
  required int? selectedYear,
  required SignUpProcess signUpNotifier,
}) {
  return Expanded(
    child: ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        final year = 1993 + index;
        return ListTile(
          title: Text('$year년'),
          selected: selectedYear == year,
          onTap: () => signUpNotifier.updateSelectedYear(year),
        );
      },
    ),
  );
}

Widget buildHeightInput({
  required int? selectedHeight,
  required SignUpProcess signUpNotifier,
}) {
  return Expanded(
    child: ListView.builder(
      itemCount: 20, // 키 범위: 160 ~ 180
      itemBuilder: (context, index) {
        final height = 160 + index;
        return ListTile(
          title: Text('$height cm'),
          selected: selectedHeight == height,
          onTap: () => signUpNotifier.updateSelectedHeight(height),
        );
      },
    ),
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
  Widget buildMbtiPair({
    required List<String> options,
    required String? selected,
    required void Function(String selection) onSelected,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: options.map((option) {
        return ChoiceChip(
          label: Text(option),
          selected: selected == option,
          onSelected: (isSelected) {
            if (isSelected) onSelected(option);
          },
        );
      }).toList(),
    );
  }

  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: 2,
    mainAxisSpacing: 16.0,
    crossAxisSpacing: 16.0,
    children: [
      buildMbtiPair(
        options: ['E', 'I'],
        selected: signUpState.selectedFirstMbtiLetter,
        onSelected: (selection) =>
            signUpNotifier.updateFirstMbtiLetter(selection),
      ),
      buildMbtiPair(
        options: ['N', 'S'],
        selected: signUpState.selectedSecondMbtiLetter,
        onSelected: (selection) =>
            signUpNotifier.updateSecondMbtiLetter(selection),
      ),
      buildMbtiPair(
        options: ['T', 'F'],
        selected: signUpState.selectedThirdMbtiLetter,
        onSelected: (selection) =>
            signUpNotifier.updateThirdMbtiLetter(selection),
      ),
      buildMbtiPair(
        options: ['J', 'P'],
        selected: signUpState.selectedFourthMbtiLetter,
        onSelected: (selection) =>
            signUpNotifier.updateFourthMbtiLetter(selection),
      ),
    ],
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
