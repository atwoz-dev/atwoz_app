import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/features/my/presentation/controller/controller.dart';
import 'package:atwoz_app/features/my/presentation/enum/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MySettingPage extends StatelessWidget {
  const MySettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "설정",
      ),
      body: ListView.builder(
        itemCount: MySettingTypeEnum.values.length,
        itemBuilder: (context, index) {
          final type = MySettingTypeEnum.values[index];
          return _MySettingListItem(
            title: mySettingTypeMap[type]!,
            onTapMove: () {
              switch (type) {
                case MySettingTypeEnum.pushNotification:
                  navigate(context, route: AppRoute.pushNotificationSetting);
                case MySettingTypeEnum.accountSetting:
                  navigate(context, route: AppRoute.accountSetting);
                case MySettingTypeEnum.versionInfo:
                  break;
                case MySettingTypeEnum.contactSetting:
                  navigate(context, route: AppRoute.contactSetting);
                case MySettingTypeEnum.privacyPolicy:
                  navigate(context, route: AppRoute.privacyPolicy);
                case MySettingTypeEnum.useTerms:
                  navigate(context, route: AppRoute.termsOfUse);
                case MySettingTypeEnum.faq:
                  break;
              }
            },
          );
        },
      ),
    );
  }
}

class _MySettingListItem extends ConsumerWidget {
  final String title;
  final VoidCallback onTapMove;
  const _MySettingListItem({
    required this.title,
    required this.onTapMove,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mySettingAsync = ref.watch(mySettingNotifierProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 19,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE1E1E1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Fonts.body02Medium().copyWith(
              fontWeight: FontWeight.w500,
              color: Palette.colorBlack,
            ),
          ),
          if (title == mySettingTypeMap[MySettingTypeEnum.versionInfo])
            mySettingAsync.when(
              data: (data) => Text("V$data"),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => const Text("버전 정보 없음"),
            )
          else
            GestureDetector(
              onTap: onTapMove,
              child: const DefaultIcon(
                IconPath.chevronRight2,
                size: 24,
              ),
            ),
        ],
      ),
    );
  }
}
