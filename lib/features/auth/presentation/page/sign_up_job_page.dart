import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final selectedJobProvider = StateProvider<String?>((ref) => null);

class SignUpJobPage extends ConsumerWidget {
  const SignUpJobPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpProcessProvider.notifier);
    return SignUpProfileBaseWidget(
      question: '직업이 어떻게 되세요?',
      step: 3,
      onNextPressed: () {
        navigate(context, route: AppRoute.signUpProfileLocation);
      },
      body: Wrap(
        spacing: 8.w,
        runSpacing: 8.h,
        children: ['개발자', '디자이너', '마케팅', '교육', '의료', '기타'].map((job) {
          final selectedJob = ref.watch(
            signUpProcessProvider.select((state) => state.selectedJob),
          );
          return ChoiceChip(
            label: Text(job),
            selected: selectedJob == job,
            onSelected: (_) => signUpNotifier.updateSelectedJob(job),
          );
        }).toList(),
      ),
    );
  }
}
