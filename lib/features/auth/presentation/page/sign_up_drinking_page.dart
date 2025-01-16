import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpDrinkingPage extends ConsumerWidget {
  const SignUpDrinkingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);
    final selectedDrinking = ref.watch(
      signUpProcessProvider.select((state) => state.selectedDrinking),
    );

    final options = [
      '전혀 마시지 않음',
      '사회적 음주',
      '가끔 마심',
      '4술자리를 즐김',
      '금주 중',
    ];

    return SignUpProfileBaseWidget(
      question: '음주 여부가 어떻게 되세요?',
      step: 8,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileReligion);
      },
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: options.map((option) {
          return ChoiceChip(
            label: Text(option),
            selected: selectedDrinking == option,
            onSelected: (_) => signUpNotifier.updateDrinking(option),
          );
        }).toList(),
      ),
    );
  }
}
