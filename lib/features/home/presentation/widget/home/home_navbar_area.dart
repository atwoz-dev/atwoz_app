import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
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
        Row(
          children: [
            GestureDetector(
              onTap: () => navigate(context, route: AppRoute.notification),
              child: Container(
                padding: const EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
                child: const DefaultIcon(
                  // 알림페이지 바로가기 버튼
                  IconPath.notification,
                  size: 24,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigate(context, route: AppRoute.ideal),
              child: Container(
                // 이상형 설정
                padding: const EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
                child: const DefaultIcon(
                  IconPath.filter,
                  size: 24,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
