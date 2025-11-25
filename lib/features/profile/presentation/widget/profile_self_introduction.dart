import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfileSelfIntroduction extends ConsumerWidget {
  const ProfileSelfIntroduction(this.userId, {super.key});

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selfIntroductionItems =
        ref.watch(profileProvider(userId)).profile?.selfIntroductionItems ?? [];

    return ColoredBox(
      color: context.palette.outline,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          mainAxisExtent: 99 + 16.0,
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        physics: const NeverScrollableScrollPhysics(),
        children: selfIntroductionItems
            .map(
              (introduction) => GestureDetector(
                onTap: () => _SelfIntroducitonDetailBottomSheet._open(
                  context,
                  introduction: introduction,
                ),
                child: _SelfIntroductionItem(
                  about: introduction.about,
                  introduction: introduction.title,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _SelfIntroductionItem extends StatelessWidget {
  const _SelfIntroductionItem({
    required this.about,
    required this.introduction,
  });

  final String about;
  final String introduction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: Dimens.cardRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(about, style: Fonts.body03Regular(context.palette.tertiary)),
          const Gap(8.0),
          Text(
            introduction,
            style: Fonts.body01Medium(),
            maxLines: 3,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}

class _SelfIntroducitonDetailBottomSheet extends StatelessWidget {
  const _SelfIntroducitonDetailBottomSheet._(this.introduction);

  final SelfIntroductionData introduction;

  static Future _open(
    BuildContext context, {
    required SelfIntroductionData introduction,
  }) => showDialog(
    context: context,
    builder: (_) => _SelfIntroducitonDetailBottomSheet._(introduction),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12.0,
              children: [
                Text('인터뷰 답변', style: Fonts.body01Medium()),
                Text(
                  introduction.title,
                  style: Fonts.header03().copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                border: Border.all(color: context.colorScheme.outline),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              constraints: const BoxConstraints(maxHeight: 280.0),
              child: Scrollbar(
                child: SingleChildScrollView(child: Text(introduction.content)),
              ),
            ),
            DefaultElevatedButton(
              onPressed: context.pop,
              child: const Text('닫기'),
            ),
          ],
        ),
      ),
    );
  }
}
