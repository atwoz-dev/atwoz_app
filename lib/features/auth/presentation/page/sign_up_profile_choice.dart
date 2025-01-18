import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/profile_choices.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpProfileChoicePage extends ConsumerWidget {
  const SignUpProfileChoicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProcessProvider);
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);

    // currentStep에 따라 보여줄 위젯 매핑
    final Map<int, Widget> stepWidgets = {
      1: buildBirthInput(
        selectedYear: signUpState.selectedYear,
        signUpNotifier: signUpNotifier,
      ),
      2: buildHeightInput(
        selectedHeight: signUpState.selectedHeight,
        signUpNotifier: signUpNotifier,
      ),
      3: buildJobInput(
        selectedJob: signUpState.selectedJob,
        signUpNotifier: signUpNotifier,
      ),
      4: buildLocationInput(
        selectedLocation: signUpState.selectedLocation,
        signUpNotifier: signUpNotifier,
      ),
      5: buildEducationInput(
        selectedEducation: signUpState.selectedEducation,
        signUpNotifier: signUpNotifier,
      ),
      6: buildMbtiInput(
        signUpState: signUpState,
        signUpNotifier: signUpNotifier,
      ),
      7: buildSmokingInput(
        selectedSmoking: signUpState.selectedSmoking,
        signUpNotifier: signUpNotifier,
      ),
      8: buildDrinkingInput(
        selectedDrinking: signUpState.selectedDrinking,
        signUpNotifier: signUpNotifier,
      ),
      9: buildReligionInput(
        selectedReligion: signUpState.selectedReligion,
        signUpNotifier: signUpNotifier,
      ),
      10: buildHobbiesInput(
        selectedHobbies: signUpState.selectedHobbies,
        signUpNotifier: signUpNotifier,
      ),
    };

    return SignUpProfileBaseWidget(
      question: '단계별 질문',
      body: stepWidgets[signUpState.currentStep]!,
    );
  }
}
