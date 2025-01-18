import 'package:atwoz_app/features/profile/domain/provider/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widget.dart';

// TODO(han): 세부 UI 미구현
class MatchedProfile extends StatelessWidget {
  const MatchedProfile({
    super.key,
    required this.matchedStatus,
  });

  final Matched matchedStatus;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ProfileHeadInformation(),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeadInformation extends ConsumerWidget {
  const _ProfileHeadInformation();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(profileNotifierProvider).userInformation;

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 480.0),
      child: Stack(children: [
        Positioned.fill(
            child: ProfileMainImage(
          profileUri: userInfo.profileUri,
        )),
        const ProfileAppbar(),
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
