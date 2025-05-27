import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/widget.dart';
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
    final idealTypeNotifier = ref.read(idealTypeNotifierProvider.notifier);

    return idealTypeAsync.when(
        data: (data) => Scaffold(
              appBar: const DefaultAppBar(title: "이상형 설정"),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const IdealAgeSettingArea(),
                      const IdealSettingArea(),
                      const Spacer(),
                      DefaultElevatedButton(
                        onPressed: idealTypeNotifier.updateIdealType,
                        child: const Text('필터 적용하기'),
                      )
                    ],
                  ),
                ),
              ),
            ),
        error: (error, stack) => Text(error.toString()),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
