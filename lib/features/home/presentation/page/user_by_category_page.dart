import 'package:atwoz_app/app/constants/constants.dart';
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
        data: (profiles) {
          if (profiles.isEmpty) {
            return const _EmptyIntroducedListView();
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: ListView.separated(
              itemCount: profiles.length,
              separatorBuilder: (_, __) => const Gap(8),
              itemBuilder: (context, index) {
                final profile = profiles[index];
                final isBlurred = !profile.isIntroduced;

                return UserByCategoryListItem(
                  isBlurred: isBlurred,
                  onTap: () => _handleProfileTap(
                    context: context,
                    profile: profile,
                    index: index,
                    isBlurred: isBlurred,
                    introducedProfilesNotifier: introducedProfilesNotifier,
                    profiles: profiles,
                  ),
                  profile: profile,
                  category: widget.category,
                );
              },
            ),
          );
        },
        error: (error, _) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Future<void> _handleProfileTap({
    required BuildContext context,
    required IntroducedProfile profile,
    required int index,
    required bool isBlurred,
    required IntroducedProfilesNotifier introducedProfilesNotifier,
    required List<IntroducedProfile> profiles,
  }) async {
    if (isBlurred) {
      final heartBalance =
          await introducedProfilesNotifier.fetchUserHeartBalance();

      if (!context.mounted) return;

      final pressed = await showDialog<bool>(
        context: context,
        builder: (context) => UnlockWithHeartDialog(
          heartBalance: heartBalance,
        ),
      );

      if (pressed != true) return;

      await introducedProfilesNotifier.openProfile(
        memberId: profile.memberId,
        category: widget.category,
      );
      if (!context.mounted) return;
      _navigateToProfile(context, profile);
      return;
    }

    // isBlurred == false일 때만 아래 실행
    final result = await _navigateToProfile(context, profile);
    if (result is UserProfile) {
      introducedProfilesNotifier.updateProfile(
        index: index,
        detailProfile: result,
        category: widget.category,
      );
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

class _EmptyIntroducedListView extends StatelessWidget {
  const _EmptyIntroducedListView();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const DefaultIcon(
          IconPath.sadEmotion,
          size: 48,
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '조건에 맞는 이성을 찾지 못했어요\n대신, 직접 자신을 소개한 분들을 확인해보시겠어요?',
              textAlign: TextAlign.center,
              style: Fonts.body02Medium().copyWith(
                color: Palette.colorBlack,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ],
        ),
        const Gap(32),
        DefaultOutlinedButton(
          onPressed: () {},
          textColor: Palette.colorPrimary500,
          textStyle: Fonts.body01Medium().copyWith(
            fontWeight: FontWeight.w500,
          ),
          child: const Text(
            '셀프소개 보러 가기',
          ),
        )
      ],
    );
  }
}
