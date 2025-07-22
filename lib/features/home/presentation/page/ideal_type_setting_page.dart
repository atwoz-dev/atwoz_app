import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/home/presentation/provider/ideal_type_notifier.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_age_setting_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_setting_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class IdealTypeSettingPage extends ConsumerWidget {
  const IdealTypeSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idealTypeNotifier = ref.read(idealTypeNotifierProvider.notifier);

    return Scaffold(
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
                onPressed: () async {
                  if (await idealTypeNotifier.updateIdealType() &&
                      context.mounted) {
                    return context.pop();
                  }
                },
                child: const Text('필터 적용하기'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
