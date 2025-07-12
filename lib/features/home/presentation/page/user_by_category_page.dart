import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class UserByCategoryPage extends ConsumerStatefulWidget {
  final IntroducedCategory category;
  const UserByCategoryPage({super.key, required this.category});

  @override
  ConsumerState<UserByCategoryPage> createState() => _UserByCategoryPageState();
}

class _UserByCategoryPageState extends ConsumerState<UserByCategoryPage> {
  @override
  Widget build(BuildContext context) {
    final introducedProfilesAsync =
        ref.watch(introducedProfilesNotifierProvider(widget.category));
    final introducedProfilesNotifier =
        ref.read(introducedProfilesNotifierProvider(widget.category).notifier);

    return Scaffold(
      appBar: DefaultAppBar(title: widget.category.label),
      body: introducedProfilesAsync.when(
        data: (profiles) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView.separated(
            itemCount: profiles.length,
            separatorBuilder: (_, __) => const Gap(8),
            itemBuilder: (context, index) {
              final profile = profiles[index];
              final isBlurred = !profile.isIntroduced;

              return UserByCategoryListItem(
                isBlurred: isBlurred,
                onTap: () => _handleProfileTap(context, profile, index,
                    isBlurred, introducedProfilesNotifier, profiles),
                profile: profile,
                category: widget.category,
              );
            },
          ),
        ),
        error: (error, _) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Future<void> _handleProfileTap(
    BuildContext context,
    IntroducedProfile profile,
    int index,
    bool isBlurred,
    IntroducedProfilesNotifier introducedProfilesNotifier,
    List<IntroducedProfile> profiles,
  ) async {
    if (isBlurred) {
      final pressed = await showDialog<bool>(
        context: context,
        builder: (context) => const UnlockWithHeartDialog(),
      );

      if (pressed == true) {
        await introducedProfilesNotifier.openProfile(
          memberId: profile.memberId,
          category: widget.category,
        );
        if (!context.mounted) return;
        _navigateToProfile(context, profile);
      }
    } else {
      final result = await _navigateToProfile(context, profile);
      if (result is UserProfile) {
        introducedProfilesNotifier.updateProfile(
          index: index,
          detailProfile: result,
          category: widget.category,
        );
      }
    }
  }

  Future<dynamic> _navigateToProfile(
      BuildContext context, IntroducedProfile profile) {
    return navigate(
      context,
      route: AppRoute.profile,
      extra: ProfileDetailArguments(userId: profile.memberId),
    );
  }
}
