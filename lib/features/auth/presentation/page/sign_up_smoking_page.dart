import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpSmokingPage extends ConsumerWidget {
  const SignUpSmokingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);
    final selectedSmoking = ref.watch(
      signUpProcessProvider.select((state) => state.selectedSmoking),
    );

    final options = ['비흡연', '금연 중', '전자담배', '가끔 피움', '매일 피움'];

    return SignUpProfileBaseWidget(
      question: '흡연 여부가 어떻게 되세요?',
      step: 7,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileDrinking);
      },
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: options.map((option) {
          return ChoiceChip(
            label: Text(option),
            selected: selectedSmoking == option,
            onSelected: (_) => signUpNotifier.updateSmoking(option),
          );
        }).toList(),
      ),
    );
  }
}
