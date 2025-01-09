import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:atwoz_app/features/home/widget/age_setting_area.dart';
import 'package:flutter/material.dart';

class IdealTypeSettingPage extends StatelessWidget {
  const IdealTypeSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "이상형 설정"),
      body: Column(
        children: [AgeSettingArea()],
      ),
    );
  }
}
