import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/sign_up_provider.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpMbtiPage extends ConsumerWidget {
  const SignUpMbtiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
    final state = ref.watch(signUpNotifierProvider);

    return SignUpProfileBasePage(
      question: 'MBTI가 어떻게 되세요?',
      step: 6,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileSmoking);
      },
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: [
          _buildMbtiPair(
            options: ['E', 'I'],
            selected: state.selectedFirstMbtiLetter,
            onSelected: (selection) =>
                signUpNotifier.updateFirstMbtiLetter(selection),
          ),
          _buildMbtiPair(
            options: ['N', 'S'],
            selected: state.selectedSecondMbtiLetter,
            onSelected: (selection) =>
                signUpNotifier.updateSecondMbtiLetter(selection),
          ),
          _buildMbtiPair(
            options: ['T', 'F'],
            selected: state.selectedThirdMbtiLetter,
            onSelected: (selection) =>
                signUpNotifier.updateThirdMbtiLetter(selection),
          ),
          _buildMbtiPair(
            options: ['J', 'P'],
            selected: state.selectedFourthMbtiLetter,
            onSelected: (selection) =>
                signUpNotifier.updateFourthMbtiLetter(selection),
          ),
        ],
      ),
    );
  }

  Widget _buildMbtiPair({
    required List<String> options,
    required String? selected,
    required void Function(String selection) onSelected,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: options.map((option) {
        return ChoiceChip(
          label: Text(option),
          selected: selected == option,
          onSelected: (isSelected) {
            if (isSelected) onSelected(option);
          },
        );
      }).toList(),
    );
  }
}
