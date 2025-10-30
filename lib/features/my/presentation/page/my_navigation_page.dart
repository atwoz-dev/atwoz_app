import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyNavigationPage extends StatefulWidget {
  const MyNavigationPage({super.key});

  @override
  State<MyNavigationPage> createState() => _MyNavigationPageState();
}

class _MyNavigationPageState extends AppBaseStatefulPageBase<MyNavigationPage> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenWidth * 0.2,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.mainTab,
                    method: NavigationMethod.go,
                  );
                },
                child: Text(
                  '메인',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.profileManage,
                  );
                },
                child: Text(
                  '프로필 관리',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.idealSetting,
                  );
                },
                child: Text(
                  '이상형 설정',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.blockFriend,
                  );
                },
                child: Text(
                  '지인차단',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.store,
                  );
                },
                child: Text(
                  '스토어',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.customerCenter,
                  );
                },
                child: Text(
                  '고객센터',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.setting,
                  );
                },
                child: Text(
                  '설정',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.pushNotificationSetting,
                  );
                },
                child: Text(
                  '푸쉬알림 설정',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.accountSetting,
                  );
                },
                child: Text(
                  '계정 설정',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const SizedBox(height: 16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.serviceWithdraw,
                  );
                },
                child: Text(
                  '서비스 탈퇴',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.withdrawReason,
                  );
                },
                child: Text(
                  '서비스 탈퇴 이유',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.privacyPolicy,
                  );
                },
                child: Text(
                  '개인정보 처리방침',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.termsOfUse,
                  );
                },
                child: Text(
                  '이용약관',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
              const Gap(16),
              DefaultElevatedButton(
                primary: palette.primary,
                onPressed: () {
                  navigate(
                    context,
                    route: AppRoute.communityGuide,
                  );
                },
                child: Text(
                  '커뮤니티 가이드',
                  style: Fonts.body01Regular(palette.onPrimary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
