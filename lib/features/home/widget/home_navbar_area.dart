import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/core/theme/app_icons.dart';
import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:flutter/material.dart';

class HomeNavbarArea extends StatelessWidget {
  const HomeNavbarArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "딩동! 민호님,\n오늘 소개해드릴 분들이에요!",
          style: AppStyles.header03().copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
              child: AppIcon(
                // 알림페이지 바로가기 버튼
                AppIcons.notification,
                size: 24,
              ),
            ),
            Container(
              // 이상형 설정
              padding: EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
              child: AppIcon(
                AppIcons.tune,
                size: 24,
              ),
            )
          ],
        )
      ],
    );
  }
}
