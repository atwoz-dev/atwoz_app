import 'package:atwoz_app/features/profile/domain/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/profile_state.dart';
import '../widget/widgets.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchStatus = ref.watch(profileNotifierProvider).matchStatus;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: switch (matchStatus) {
        final UnMatched unMatched => UnMatchedProfile(
            unMatchedStatus: unMatched,
          ),
        final Matched _ => MatchedProfile(matchedStatus: matchStatus),
      },
    );
  }
}
