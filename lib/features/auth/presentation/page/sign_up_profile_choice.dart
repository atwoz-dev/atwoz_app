import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_notifier.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpProfileChoicePage extends ConsumerWidget {
  const SignUpProfileChoicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpProcessProvider);
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);

    // 현재 단계의 데이터를 가져와서 화면에 표시
    final currentStepData = signUpSteps[signUpState.currentStep - 1];

    return SignUpProfileBaseWidget(
      question: currentStepData.question,
      body: currentStepData.buildWidget(signUpNotifier, signUpState),
    );
  }
}
