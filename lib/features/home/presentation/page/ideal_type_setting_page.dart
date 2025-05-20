import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/home/presentation/controller/ideal_type_notifier.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_age_setting_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_setting_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class IdealTypeSettingPage extends ConsumerWidget {
  const IdealTypeSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idealTypeAsync = ref.watch(idealTypeNotifierProvider);

    return idealTypeAsync.when(
        data: (data) => const Scaffold(
              appBar: DefaultAppBar(title: "이상형 설정"),
              body: Column(
                children: [
                  IdealAgeSettingArea(),
                  IdealSettingArea(),
                ],
              ),
            ),
        error: (error, stack) => Text(error.toString()),
        loading: () => const LoadingWithPercentage());
  }
}

class LoadingWithPercentage extends StatefulWidget {
  const LoadingWithPercentage({super.key});

  @override
  State<LoadingWithPercentage> createState() => _LoadingWithPercentageState();
}

class _LoadingWithPercentageState extends State<LoadingWithPercentage> {
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _simulateProgress();
  }

  void _simulateProgress() async {
    while (progress < 1.0) {
      await Future.delayed(const Duration(milliseconds: 50));
      setState(() {
        progress += 0.01;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    color: Colors.lightBlue,
                    value: progress,
                    strokeWidth: 15,
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Gap(24),
            const Text('문제집 생성 중')
          ],
        ),
      ),
    );
  }
}
