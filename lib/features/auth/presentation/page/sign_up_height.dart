import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/sign_up_provider.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedHeightProvider = StateProvider<int?>((ref) => null);

class SignUpHeightPage extends ConsumerWidget {
  const SignUpHeightPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);

    return SignUpProfileBasePage(
      question: '키가 어떻게 되세요?',
      step: 2,
      onNextPressed: () => navigate(context, route: AppRoute.signUpProfileJob),
      body: ListView.builder(
        itemCount: 20, // 키 범위: 160 ~ 180
        itemBuilder: (context, index) {
          final height = 160 + index;
          final selectedHeight = ref.watch(
            signUpNotifierProvider.select((state) => state.selectedHeight),
          );

          return ListTile(
            title: Text('$height cm'),
            selected: selectedHeight == height,
            onTap: () => signUpNotifier.updateSelectedHeight(height),
          );
        },
      ),
    );
  }
}
