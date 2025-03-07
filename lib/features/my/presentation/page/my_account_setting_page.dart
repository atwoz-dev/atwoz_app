import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyAccountSettingPage extends StatefulWidget {
  const MyAccountSettingPage({super.key});

  @override
  State<MyAccountSettingPage> createState() => _MyAccountSettingPageState();
}

class _MyAccountSettingPageState extends State<MyAccountSettingPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "계정 설정"),
      body: Column(
        children: [
          _AccountSettingItem(
            children: [
              Text(
                "닉네임",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Palette.colorBlack,
                ),
              ),
              Spacer(),
              Text("마카롱조아")
            ],
          ),
          _AccountSettingItem(
            children: [
              Text(
                "휴먼 회원 전환",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Palette.colorBlack,
                ),
              ),
              Spacer(),
              Switch(
                value: isSwitched,
                inactiveThumbImage:
                    AssetImage("assets/images/inactive_thumb.png"),
                inactiveTrackColor: Color(0xffDEDEDE),
                onChanged: (value) {
                  // setState(() {
                  //   isSwitched = !isSwitched;
                  // });
                  showDialog(
                    context: context,
                    builder: (context) {
                      return _HumanUserChangeDialog();
                    },
                  );
                },
              )
            ],
          ),
          _AccountSettingItem(
            children: [
              Text(
                "로그아웃",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Palette.colorBlack,
                ),
              ),
            ],
          ),
          _AccountSettingItem(
            children: [
              Text(
                "서비스 탈퇴",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Color(0xffbdbdbd),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountSettingItem extends StatelessWidget {
  final List<Widget> children;
  const _AccountSettingItem({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffE1E1E1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: children,
      ),
    );
  }
}

class _HumanUserChangeDialog extends StatelessWidget {
  const _HumanUserChangeDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Gap(32),
                  Text(
                    "휴먼회원 전환",
                    style: Fonts.header02().copyWith(
                        fontWeight: FontWeight.w700, color: Palette.colorBlack),
                    textAlign: TextAlign.center,
                  ),
                  Gap(16),
                  Text(
                    "프로필이 상대방에게 노출되지 않고\n받은 호감과 메시지가 모두 사라집니다\n휴면회원으로 전환하시겠습니까?",
                    style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff515151),
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  Gap(24),
                  Row(
                    children: [
                      Expanded(
                        child: DefaultElevatedButton(
                          onPressed: () {
                            pop(context);
                          },
                          primary: Colors.white,
                          border: BorderSide(color: Color(0xffE1E1E1)),
                          child: Text(
                            "취소",
                            style: Fonts.body02Medium().copyWith(
                                fontWeight: FontWeight.w400,
                                color: Palette.colorBlack),
                          ),
                        ),
                      ),
                      Gap(8),
                      Expanded(
                        child: DefaultElevatedButton(
                          onPressed: context.pop,
                          primary: Palette.colorPrimary500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "확인",
                                style: Fonts.body02Medium().copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(16)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
