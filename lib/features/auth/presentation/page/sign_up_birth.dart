import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpBirthPage extends ConsumerWidget {
  const SignUpBirthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);
    final selectedYear = ref.watch(
      // 상태 구독
      signUpProcessProvider.select((state) => state.selectedYear),
    );

    return SignUpProfileBaseWidget(
      question: '나이가 어떻게 되세요?',
      step: 1,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileJob);
      },
      body: Expanded(
        child: ListView.builder(
          itemCount: 30, // 최근 30년
          itemBuilder: (context, index) {
            final year = 1993 + index;

            return ListTile(
              title: Text('$year년'),
              selected: selectedYear == year,
              onTap: () => signUpNotifier.updateSelectedYear(year),
            );
          },
        ),
      ),
    );
  }
}
