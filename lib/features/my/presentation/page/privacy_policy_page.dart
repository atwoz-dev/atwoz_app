import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/privacy_policy.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "개인정보 취급방침",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                style: Fonts.body02Medium().copyWith(
                  color: Color(0xff7E7E7E),
                  fontWeight: FontWeight.w400,
                ),
                children: parsePrivacyPolicy(privacyPolicyText),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<TextSpan> parsePrivacyPolicy(String text) {
  List<TextSpan> spans = [];
  List<String> lines = text.split('\n');
  for (var line in lines) {
    if (line.startsWith('### ')) {
      spans.add(TextSpan(
        text: '${line.substring(4)}\n',
        style: Fonts.body02Medium().copyWith(
          color: Palette.colorGrey800,
          fontWeight: FontWeight.w600,
        ),
      ));
    } else {
      spans.add(TextSpan(
        text: '$line\n',
      ));
    }
  }
  return spans;
}
