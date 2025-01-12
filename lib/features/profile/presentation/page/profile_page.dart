import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ProfileHeadInformation(),
          ProfileSubInformation(),
          const Gap(13.0),
          ProfileSelfIntroduction(),
        ],
      )),
    );
  }
}

class _ProfileHeadInformation extends StatelessWidget {
  const _ProfileHeadInformation();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 480.0),
      child: Stack(children: [
        Positioned.fill(child: ProfileMainImage()),
        ProfileAppbar(),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: ProfileMainInformation(),
        ),
      ]),
    );
  }
}
