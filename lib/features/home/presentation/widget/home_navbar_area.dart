import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/widget/widget.dart';
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
          style: Fonts.header03().copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
              child: DefaultIcon(
                // 알림페이지 바로가기 버튼
                IconPath.notification,
                size: 24,
              ),
            ),
            Container(
              // 이상형 설정
              padding: EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
              child: DefaultIcon(
                IconPath.tune,
                size: 24,
              ),
            )
          ],
        )
      ],
    );
  }
}
