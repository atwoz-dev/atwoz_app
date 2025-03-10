import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/view/view.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ServiceWithdrawPage extends StatelessWidget {
  const ServiceWithdrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "서비스 탈퇴",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "서비스를 탈퇴 하시겠습니까?",
                style: Fonts.body01Medium(),
              ),
              Gap(16),
              Text(
                "서비스를 탈퇴할 경우 계정의 모든 정보와 구매/획득한\n하트가 모두 삭제되며 복구할 수 없습니다.\n계정을 휴면전환 하시면 프로필이 상대방에게 노출되지\n않으며 언제든지 해제할 수 있고 구매/획득한 콩은 1년동안\n유지됩니다.",
                style: Fonts.body02Medium().copyWith(
                  color: Color(
                    0xff7E7E7E,
                  ),
                ),
              ),
              Spacer(),
              DefaultElevatedButton(
                  child: Text(
                    "휴먼 전환하기",
                    style: Fonts.body02Medium().copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {}),
              Gap(16),
              DefaultElevatedButton(
                  primary: context.palette.onPrimary,
                  border: BorderSide(color: Palette.colorPrimary500),
                  onPressed: () {},
                  child: Text(
                    "서비스 탈퇴하기",
                    style: Fonts.body02Medium().copyWith(
                      color: Palette.colorPrimary500,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
