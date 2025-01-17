import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widget/widget.dart';

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
