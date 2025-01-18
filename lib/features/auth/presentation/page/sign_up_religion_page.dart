import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpReligionPage extends ConsumerWidget {
  const SignUpReligionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);
    final selectedReligion = ref.watch(
      signUpProcessProvider.select((state) => state.selectedReligion),
    );

    final options = ['무교', '기독교', '천주교', '불교', '기타'];

    return SignUpProfileBaseWidget(
      question: '종교가 어떻게 되세요?',
      step: 9,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileHobbies);
      },
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: options.map((option) {
          return ChoiceChip(
            label: Text(option),
            selected: selectedReligion == option,
            onSelected: (_) => signUpNotifier.updateReligion(option),
          );
        }).toList(),
      ),
    );
  }
}
