import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal_age_setting_area.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal_setting_area.dart';
import 'package:flutter/material.dart';

class IdealTypeSettingPage extends StatelessWidget {
  const IdealTypeSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "이상형 설정"),
      body: Column(
        children: [IdealAgeSettingArea(), IdealSettingArea()],
      ),
    );
  }
}
