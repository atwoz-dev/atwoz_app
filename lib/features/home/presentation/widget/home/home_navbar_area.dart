import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNavbarArea extends ConsumerWidget {
  const HomeNavbarArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(globalNotifierProvider).profile.nickname;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "딩동! $nickname님,\n오늘 소개해드릴 분들이에요!",
          style: Fonts.header03().copyWith(
            fontWeight: FontWeight.w700,
            height: 1.2,
          ),
        ),
        DefaultAppBarIcon(
          showFilter: true,
          filterRoute: AppRoute.ideal,
        ),
      ],
    );
  }
}
