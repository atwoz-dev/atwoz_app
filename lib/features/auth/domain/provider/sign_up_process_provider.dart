import 'package:atwoz_app/app/constants/enum.dart';
// import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';

part 'sign_up_process_provider.g.dart';

@Riverpod(keepAlive: false)
class SignUpProcess extends _$SignUpProcess {
  @override
  SignUpProcessState build() => const SignUpProcessState();
  Future<void> nextStep(BuildContext context) async {
    // 순서대로 처리할 필드 정의
    final requiredFieldsOrder = [
      'selectedYear',
      'selectedHeight',
      'selectedJob',
      'selectedLocation',
      'selectedEducation',
      'mbti',
      'selectedSmoking',
      'selectedDrinking',
      'selectedReligion',
      'selectedHobbies',
    ];

    // 현재 상태에서 입력되지 않은 필드 필터링
    final unwrittenFields = state.unwritten
        .where((field) => requiredFieldsOrder.contains(field))
        .toList();

    if (unwrittenFields.isEmpty) {
      // 모든 필드가 입력되었으면 완료 페이지로 이동
      if (!context.mounted) return;
      navigate(context, route: AppRoute.signUpProfilePicture);
      return;
    }

    // 입력되지 않은 필드 중 가장 먼저 나오는 필드로 이동
    for (int i = 0; i < requiredFieldsOrder.length; i++) {
      final fieldForStep = requiredFieldsOrder[i];
      if (unwrittenFields.contains(fieldForStep)) {
        state = state.copyWith(currentStep: i + 1); // 단계는 1부터 시작
        return;
      }
    }

    // 현재 단계가 마지막 단계가 아니라면 기본적으로 다음 단계로 이동
    if (state.currentStep < requiredFieldsOrder.length) {
      state = state.copyWith(currentStep: state.currentStep + 1);
    } else {
      if (!context.mounted) return;
      // 마지막 단계에서 완료 페이지로 이동
      navigate(context, route: AppRoute.signUpProfilePicture);
    }
  }

  void previousStep(BuildContext context) {
    if (state.currentStep > 1) {
      state = state.copyWith(currentStep: state.currentStep - 1);
    }
  }

  bool isButtonEnabled() => state.isButtonEnabled();

  void updateNickname(String nickname) {
    state = state.copyWith(
      nickname: nickname,
      error: nickname.isEmpty
          ? null
          : (nickname.length > 10 ? '닉네임은 10자 이하여야 합니다.' : null),
    );
  }

  void updateCurrentStep(int step) {
    state = state.copyWith(currentStep: step);
  }

  void updateGender(String gender) {
    final selectedEnum = genderMap.entries
        .firstWhere(
          (entry) => entry.value == gender,
        )
        .key;

    state = state.copyWith(selectedGender: selectedEnum);
  }

  void updateSelectedYear(int year) {
    state = state.copyWith(selectedYear: year);
  }

  void updateSelectedHeight(int height) {
    state = state.copyWith(selectedHeight: height);
  }

  void updateSelectedJob(String? job) {
    state = state.copyWith(selectedJob: job);
  }

  void updateSelectedLocation(String? location) {
    state = state.copyWith(selectedLocation: location);
  }

  void updateEducation(String? education) {
    // String(한글) 값을 Enum으로 변환
    final selectedEnum = educationMap.entries
        .firstWhere(
          (entry) => entry.value == education,
          orElse: () => MapEntry(HighestEducationEnum.other, "기타"), // 기본값 설정
        )
        .key; // 키값(Enum) 가져오기

    state = state.copyWith(selectedEducation: selectedEnum);
  }

  void updateFirstMbtiLetter(String letter) {
    state = state.copyWith(selectedFirstMbtiLetter: letter);
  }

  void updateSecondMbtiLetter(String letter) {
    state = state.copyWith(selectedSecondMbtiLetter: letter);
  }

  void updateThirdMbtiLetter(String letter) {
    state = state.copyWith(selectedThirdMbtiLetter: letter);
  }

  void updateFourthMbtiLetter(String letter) {
    state = state.copyWith(selectedFourthMbtiLetter: letter);
  }

  void updateSmoking(String? smoking) {
    final selectedEnum = smokingMap.entries
        .firstWhere(
          (entry) => entry.value == smoking,
        )
        .key;

    state = state.copyWith(selectedSmoking: selectedEnum);
  }

  void updateDrinking(String? drinking) {
    final selectedEnum = drinkingMap.entries
        .firstWhere(
          (entry) => entry.value == drinking,
        )
        .key;

    state = state.copyWith(selectedDrinking: selectedEnum);
  }

  void updateReligion(String? religion) {
    final selectedEnum = religionMap.entries
        .firstWhere(
          (entry) => entry.value == religion,
        )
        .key; // 키값(Enum) 가져오기

    state = state.copyWith(selectedReligion: selectedEnum);
  }

  void updateHobbies(List<String> hobbies) {
    state = state.copyWith(selectedHobbies: hobbies);
  }

  void reset() {
    state = const SignUpProcessState();
  }
}
