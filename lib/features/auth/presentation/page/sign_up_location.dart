import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/sign_up_provider.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpLocationPage extends ConsumerWidget {
  const SignUpLocationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
    final selectedLocation = ref.watch(
      signUpNotifierProvider.select((state) => state.selectedLocation),
    );
    final locationController = TextEditingController(text: selectedLocation);

    return SignUpProfileBasePage(
      question: '지역이 어떻게 되세요?',
      step: 4,
      onNextPressed: () {
        // TODO: 다음 페이지로 이동
        print('지역: $selectedLocation');
        navigate(context, route: AppRoute.signUpProfileEducation);
      },
      body: Column(
        children: [
          TextField(
            controller: locationController,
            decoration: const InputDecoration(
              labelText: '지역 입력',
            ),
            onChanged: (value) => signUpNotifier.updateSelectedLocation(value),
          ),
          ElevatedButton(
            onPressed: () {
              // 현재 위치 가져오기 로직 추가
              const currentLocation = '현재 위치로 설정하기';
              signUpNotifier.updateSelectedLocation(currentLocation);
              locationController.text = currentLocation;
            },
            child: const Text('현재 위치로 설정하기'),
          ),
        ],
      ),
    );
  }
}
