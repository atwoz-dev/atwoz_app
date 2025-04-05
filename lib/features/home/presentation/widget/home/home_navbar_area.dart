import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "딩동! 민호님,\n오늘 소개해드릴 분들이에요!",
          style: Fonts.header03().copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () => navigate(context, route: AppRoute.notification),
              child: Container(
                padding: EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
                child: DefaultIcon(
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
                padding: EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
                child: DefaultIcon(
                  IconPath.tune,
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
