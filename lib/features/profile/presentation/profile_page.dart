import 'package:atwoz_app/features/profile/domain/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../widget/widgets.dart';

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

class _ProfileHeadInformation extends ConsumerWidget {
  const _ProfileHeadInformation();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(profileNotifierProvider).userInforamtion;

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 480.0),
      child: Stack(children: [
        Positioned.fill(
            child: ProfileMainImage(
          profileUri: userInfo.profileUri,
        )),
        ProfileAppbar(),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: ProfileMainInformation(
            name: userInfo.name,
            age: userInfo.age,
            mbti: userInfo.mbti,
            address: userInfo.address,
            hobbies: userInfo.hobbies,
          ),
        ),
      ]),
    );
  }
}
