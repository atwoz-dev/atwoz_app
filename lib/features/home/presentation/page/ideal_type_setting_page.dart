import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/home/presentation/controller/ideal_type_notifier.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_age_setting_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_setting_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdealTypeSettingPage extends ConsumerWidget {
  const IdealTypeSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(idealTypeNotifierProvider);

    return Scaffold(
      appBar: DefaultAppBar(title: "이상형 설정"),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: const [
                IdealAgeSettingArea(),
                IdealSettingArea(),
              ],
            ),
    );
  }
}
