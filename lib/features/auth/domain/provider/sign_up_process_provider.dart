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
    final unwrittenFields =
        state.unwritten.where(requiredFieldsOrder.contains).toList();

    // 모든 필드가 입력되었으면 완료 페이지로 이동
    if (unwrittenFields.isEmpty) {
      if (!context.mounted) return;
      navigate(context, route: AppRoute.signUpProfilePicture);
      return;
    }

    // 입력되지 않은 필드 중 가장 먼저 나오는 필드로 이동
    final nextStepIndex =
        requiredFieldsOrder.indexWhere(unwrittenFields.contains);
    if (nextStepIndex != -1) {
      state = state.copyWith(currentStep: nextStepIndex + 1);
      return;
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
  void updateField<T>(T value,
      {required Function(SignUpProcessState, T) copy}) {
    state = copy(state, value);
  }

  void updateNickname(String nickname) => updateField(
        nickname,
        copy: (s, v) => s.copyWith(
          nickname: v,
          error:
              v.isEmpty ? null : (v.length > 10 ? '닉네임은 10자 이하여야 합니다.' : null),
        ),
      );
  void updateSelectedYear(int year) =>
      updateField(year, copy: (s, v) => s.copyWith(selectedYear: v));

  void updateSelectedHeight(int height) =>
      updateField(height, copy: (s, v) => s.copyWith(selectedHeight: v));

  void updateSelectedJob(String? job) =>
      updateField(job, copy: (s, v) => s.copyWith(selectedJob: v));

  void updateSelectedLocation(String? location) =>
      updateField(location, copy: (s, v) => s.copyWith(selectedLocation: v));

  void updateCurrentStep(int step) {
    state = state.copyWith(currentStep: step);
  }

  void updateGender(String gender) {
    final selectedEnum = Gender.fromLabel(gender);

    state = state.copyWith(selectedGender: selectedEnum);
  }

  void updateEducation(String? education) {
    // String(한글) 값을 Enum으로 변환
    final selectedEnum = educationMap.entries
        .firstWhere(
          (entry) => entry.value == education,
          orElse: () =>
              const MapEntry(HighestEducationEnum.other, "기타"), // 기본값 설정
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

  void reset() => state = const SignUpProcessState();
}
