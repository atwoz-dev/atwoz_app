import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/sign_up_provider.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpReligionPage extends ConsumerWidget {
  const SignUpReligionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
    final selectedReligion = ref.watch(
      signUpNotifierProvider.select((state) => state.selectedReligion),
    );

    final options = ['무교', '기독교', '천주교', '불교', '기타'];

    return SignUpProfileBasePage(
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
