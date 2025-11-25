import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/auth/domain/usecase/get_current_location_use_case.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
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
    final unwrittenFields = state.unwritten
        .where(requiredFieldsOrder.contains)
        .toList();

    // 모든 필드가 입력되었으면 완료 페이지로 이동
    if (unwrittenFields.isEmpty) {
      if (!context.mounted) return;
      navigate(context, route: AppRoute.signUpProfilePicture);
      return;
    }

    // 입력되지 않은 필드 중 가장 먼저 나오는 필드로 이동
    final nextStepIndex = requiredFieldsOrder.indexWhere(
      unwrittenFields.contains,
    );
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
  void updateField<T>(
    T value, {
    required Function(SignUpProcessState, T) copy,
  }) {
    state = copy(state, value);
  }

  void updateNickname(String nickname) => updateField(
    nickname,
    copy: (s, v) => s.copyWith(
      nickname: v,
      error: v.isEmpty
          ? null
          : (v.runes.length < 2
                ? '닉네임은 2자 이상이어야 합니다.'
                : (v.runes.length > 10 ? '닉네임은 10자 이하이어야 합니다.' : null)),
    ),
  );
  void updateSelectedYear(int year) =>
      updateField(year, copy: (s, v) => s.copyWith(selectedYear: v));

  void updateSelectedHeight(int height) =>
      updateField(height, copy: (s, v) => s.copyWith(selectedHeight: v));

  void updateSelectedJob(String? job) {
    final selectedEnum = Job.fromLabel(job);
    state = state.copyWith(selectedJob: selectedEnum);
  }

  void updateSelectedLocation(String? location) {
    updateField(location, copy: (s, v) => s.copyWith(selectedLocation: v));
    if (!state.isButtonEnabled()) {
      // 입력한 지역이 목록에 없으면 초기화
      state = state.copyWith(selectedLocation: null);
    }
  }

  void updateCurrentStep(int step) {
    state = state.copyWith(currentStep: step);
  }

  void updateGender(String gender) {
    final selectedEnum = Gender.fromLabel(gender);

    state = state.copyWith(selectedGender: selectedEnum);
  }

  void updateEducation(String? education) {
    // String(한글) 값을 Enum으로 변환
    final selectedEnum = Education.fromLabel(education);
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
    final selectedEnum = SmokingStatus.fromLabel(smoking);
    state = state.copyWith(selectedSmoking: selectedEnum);
  }

  void updateDrinking(String? drinking) {
    final selectedEnum = DrinkingStatus.fromLabel(drinking);

    state = state.copyWith(selectedDrinking: selectedEnum);
  }

  void updateReligion(String? religion) {
    final selectedEnum = Religion.fromLabel(religion);

    state = state.copyWith(selectedReligion: selectedEnum);
  }

  void updateHobbies(List<String> hobbies) {
    state = state.copyWith(
      selectedHobbies: hobbies.map((e) => Hobby.fromLabel(e)).toList(),
    );
  }

  void reset() => state = const SignUpProcessState();

  Future<String> updateLocation() async {
    final location = await ref
        .read(getCurrentLocationUseCaseProvider)
        .execute();

    Log.d('현재 위치: $location');
    state = state.copyWith(selectedLocation: location);

    return location;
  }
}
