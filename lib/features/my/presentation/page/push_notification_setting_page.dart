import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/notification/domain/usecase/notification_toggle_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PushNotificationSettingPage extends ConsumerStatefulWidget {
  const PushNotificationSettingPage({super.key});

  @override
  ConsumerState<PushNotificationSettingPage> createState() =>
      _PushNotificationSettingPageState();
}

class _PushNotificationSettingPageState
    extends ConsumerState<PushNotificationSettingPage> {
  List<String> notifications = [
    "내가받은 호감",
    "새 메시지",
    "프로필 교환 요청",
    "프로필 사진 변경",
    "장기간 미접속 안내",
    "인터뷰 작성 권유"
  ];

  bool isGlobalPushEnabled = false; // 앱 전체 푸시 설정
  late List<bool> switchStates; // 항목별 푸시 설정

  @override
  void initState() {
    super.initState();
    switchStates = List.generate(notifications.length, (_) => false);
  }

  void _handleGlobalToggle(bool value) async {
    setState(() {
      isGlobalPushEnabled = value;
    });

    try {
      await ref
          .read(toggleNotificationUseCaseProvider)
          .toggle(isGlobalPushEnabled);
    } catch (e) {
      Log.d("푸시 설정 API 호출 실패: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "푸쉬알림 설정"),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xffEEEEEE), width: 4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "앱푸시 알림을 설정하시면\n새로운 메시지, 관심을 받는 즉시 알려드려요",
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w400,
                        color: Palette.colorBlack,
                        height: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                    child: Switch(
                        inactiveTrackColor: const Color(0xffDEDEDE),
                        inactiveThumbImage: const AssetImage(
                          "assets/icons/inactive_thumb_image.svg",
                        ),
                        value: isGlobalPushEnabled,
                        onChanged: _handleGlobalToggle),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 19),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0xffE1E1E1), width: 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          notifications[index],
                          style: Fonts.body02Medium().copyWith(
                            fontWeight: FontWeight.w500,
                            color: Palette.colorBlack,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                          child: Switch(
                            inactiveTrackColor: const Color(0xffDEDEDE),
                            inactiveThumbImage: const AssetImage(
                              "assets/icons/inactive_thumb_image.svg",
                            ),
                            value: switchStates[index],
                            onChanged: (value) {
                              setState(() {
                                switchStates[index] = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
