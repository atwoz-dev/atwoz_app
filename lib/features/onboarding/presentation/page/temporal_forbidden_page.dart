import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TemporalForbiddenPage extends StatelessWidget {
  const TemporalForbiddenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Gap(24),
              Text(
                '커뮤니티 가이드 위반으로\n이용 제한 중입니다.',
                style: Fonts.header02().copyWith(
                  color: Palette.colorBlack,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  const DefaultIcon(IconPath.sadEmotion, size: 48.0),
                  Text(
                    '회원님의 계정은 3일동안\n서비스 이용이 제한되어 있습니다.',
                    style: Fonts.body02Medium().copyWith(
                      color: Palette.colorBlack,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Spacer(),
              DefaultElevatedButton(
                child: Text(
                  '가이드라인 확인 후 시작하기',
                  style: Fonts.body01Medium().copyWith(
                    color: Palette.colorWhite,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.communityGuide,
                    method: NavigationMethod.go,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
