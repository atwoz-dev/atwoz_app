import 'package:atwoz_app/features/auth/data/model/sign_up_process_state.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_notifier.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_choices.dart';
import 'package:flutter/material.dart';

class SignUpProfileChoices {
  final String question;
  final Widget Function(
    SignUpProcessNotifier signUpNotifier,
    SignUpProcessState signUpState,
  )
  buildWidget;

  const SignUpProfileChoices({
    required this.question,
    required this.buildWidget,
  });
}

final locationController = TextEditingController();
final locationFocusNode = FocusNode();

// 단계별 질문과 위젯 정의
final List<SignUpProfileChoices> signUpSteps = [
  SignUpProfileChoices(
    question: '나이가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildBirthInput(
      selectedYear: signUpState.selectedYear,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '키가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildHeightInput(
      selectedHeight: signUpState.selectedHeight,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '직업이 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildJobInput(
      selectedJob: signUpState.selectedJob?.label,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '지역이 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) =>
        LocationInputWidget(selectedLocation: signUpState.selectedLocation),
  ),
  SignUpProfileChoices(
    question: '학력이 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildEducationInput(
      selectedEducation: signUpState.selectedEducation,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: 'MBTI가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildMbtiInput(
      signUpState: signUpState,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '흡연 여부가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildSmokingInput(
      selectedSmoking: signUpState.selectedSmoking,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '음주 여부가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildDrinkingInput(
      selectedDrinking: signUpState.selectedDrinking,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '종교가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildReligionInput(
      selectedReligion: signUpState.selectedReligion,
      signUpNotifier: signUpNotifier,
    ),
  ),
  SignUpProfileChoices(
    question: '취미가 어떻게 되세요?',
    buildWidget: (signUpNotifier, signUpState) => buildHobbiesInput(
      selectedHobbies: signUpState.selectedHobbies.map((e) => e.label).toList(),
      signUpNotifier: signUpNotifier,
    ),
  ),
];
