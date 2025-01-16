import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpEducationPage extends ConsumerWidget {
  const SignUpEducationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);
    final selectedEducation = ref.watch(
      signUpProcessProvider.select((state) => state.selectedEducation),
    );

    final options = [
      '서울 4년제',
      '지방 4년제',
      '전문대',
      '해외대',
      '석사',
      '박사',
      '로스쿨',
      '고등학교 졸업',
      '기타',
    ];

    return SignUpProfileBaseWidget(
      question: '학력이 어떻게 되세요?',
      step: 5,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileMbti);
      },
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: options.map((option) {
          return ChoiceChip(
            label: Text(option),
            selected: selectedEducation == option,
            onSelected: (_) => signUpNotifier.updateEducation(option),
          );
        }).toList(),
      ),
    );
  }
}
