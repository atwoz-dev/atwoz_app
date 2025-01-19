import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';

part 'sign_up_process_provider.g.dart';

@Riverpod(keepAlive: false)
class SignUpProcess extends _$SignUpProcess {
  @override
  SignUpProcessState build() => const SignUpProcessState();
  void nextStep(BuildContext context) {
    if (state.currentStep == 10) {
      navigate(context, route: AppRoute.signUpProfilePicture);
    }
    if (state.currentStep < 10) {
      state = state.copyWith(currentStep: state.currentStep + 1);
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
    state = state.copyWith(selectedGender: gender);
  }

  void updateSelectedYear(int year) {
    state = state.copyWith(selectedYear: year);
  }

  void updateSelectedHeight(int height) {
    state = state.copyWith(selectedHeight: height);
  }

  void updateSelectedJob(String job) {
    state = state.copyWith(selectedJob: job);
  }

  void updateSelectedLocation(String location) {
    state = state.copyWith(selectedLocation: location);
  }

  void updateEducation(String education) {
    state = state.copyWith(selectedEducation: education);
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

  void updateSmoking(String smoking) {
    state = state.copyWith(selectedSmoking: smoking);
  }

  void updateDrinking(String drinking) {
    state = state.copyWith(selectedDrinking: drinking);
  }

  void updateReligion(String religion) {
    state = state.copyWith(selectedReligion: religion);
  }

  void updateHobbies(List<String> hobbies) {
    state = state.copyWith(selectedHobbies: hobbies);
  }

  void reset() {
    state = const SignUpProcessState();
  }
}
