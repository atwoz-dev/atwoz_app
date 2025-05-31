// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/home/home.dart';
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
  //late List<bool> _blurredList;

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
          List<bool> blurredList =
              profiles.map((e) => !e.isIntroduced).toList();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: ListView.separated(
              itemCount: profiles.length,
              separatorBuilder: (context, index) => const Gap(8),
              itemBuilder: (context, index) {
                return UserByCategoryListItem(
                  isBlurred: blurredList[index],
                  onTap: () async {
                    // true면 소개받지 않은 프로필
                    if (blurredList[index]) {
                      final pressed = await showDialog<bool>(
                        context: context,
                        builder: (context) => const UnlockWithHeartDialog(),
                      );

                      // 하트 소모 다이얼로그에서 확인을 누른 경우
                      if (pressed!) {
                        final selectedId = profiles[index].id;
                        introducedProfilesNotifier.openProfile(selectedId);
                      }
                    }
                  },
                  profile: profiles[index],
                );
              },
            ),
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
