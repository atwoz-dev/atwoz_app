import 'package:flutter/material.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'widget.dart';

class UnMatchedProfile extends StatelessWidget {
  const UnMatchedProfile({
    super.key,
    this.chatEnabled = true,
  });

  final bool chatEnabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ProfileHeadInformation(
            chatEnabled: chatEnabled,
          ),
          const ProfileSubInformation(),
          const Gap(13.0),
          const ProfileSelfIntroduction(),
        ],
      ),
    );
  }
}

class _ProfileHeadInformation extends ConsumerWidget {
  const _ProfileHeadInformation({required this.chatEnabled});

  final bool chatEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(profileNotifierProvider).profile;
    if(userInfo == null) return Container();

    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 480.0),
      child: Stack(
        children: [
          Positioned.fill(
            child: ProfileMainImage(profileUri: userInfo.profileUri),
          ),
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
              chatEnabled: chatEnabled,
              favoriteUser: userInfo.favoriteUser,
              onFavoriteChanged: (favorite) => ref
                  .read(profileNotifierProvider.notifier)
                  .favorite = favorite,
            ),
          ),
        ],
      ),
    );
  }
}
