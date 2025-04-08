import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UnlockWithHeartDialog extends StatelessWidget {
  const UnlockWithHeartDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: context.screenWidth,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.fromLTRB(13, 24, 13, 16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "소개 받으시겠습니까?",
                style: Fonts.header02().copyWith(fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Gap(12),
              Text(
                "보유한 하트:10", // TODO: 하트 개수 가져오기
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7E7E7E),
                ),
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
                      border: BorderSide(color: const Color(0xffE1E1E1)),
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
                      onPressed: () {
                        pop(context, true);
                      },
                      primary: Palette.colorPrimary500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultIcon(IconPath.homeHeart, size: 16),
                          Gap(4),
                          Text(
                            "8",
                            style: Fonts.body02Medium().copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
