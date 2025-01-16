import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/sign_up_provider.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpBirthPage extends ConsumerWidget {
  const SignUpBirthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
    final selectedYear = ref.watch(
      // 상태 구독
      signUpNotifierProvider.select((state) => state.selectedYear),
    );

    return SignUpProfileBasePage(
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
