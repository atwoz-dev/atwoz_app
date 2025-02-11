import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/contact_setting/presentation/widget/contact_setting_body.dart';
import 'package:flutter/material.dart';

class ContactSettingPage extends StatelessWidget {
  const ContactSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(),
      body: SafeArea(child: ContactSettingBody()),
    );
  }
}
