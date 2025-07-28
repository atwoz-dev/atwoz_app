import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/global_user_profile_notifier.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class UnlockWithHeartDialog extends ConsumerWidget {
  const UnlockWithHeartDialog({
    super.key,
    required this.heartBalance,
  });

  final int heartBalance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfile = ref.watch(globalUserProfileNotifierProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: context.screenWidth,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.fromLTRB(13, 24, 13, 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text(
                "소개 받으시겠습니까?",
                style: Fonts.header02().copyWith(fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const Gap(12),
              Text(
                "보유한 하트: $heartBalance", // TODO: 하트 개수 가져오기
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7E7E7E),
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(24),
              Row(
                children: [
                  Expanded(
                    child: DefaultElevatedButton(
                      onPressed: context.pop,
                      primary: Colors.white,
                      border: const BorderSide(
                        color: Color(0xffE1E1E1),
                      ),
                      child: Text(
                        "취소",
                        style: Fonts.body02Medium().copyWith(
                          fontWeight: FontWeight.w400,
                          color: Palette.colorBlack,
                        ),
                      ),
                    ),
                  ),
                  const Gap(8),
                  Expanded(
                    child: DefaultElevatedButton(
                      onPressed: () {
                        pop(context, true);
                      },
                      primary: Palette.colorPrimary500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const DefaultIcon(
                            IconPath.heart,
                            size: 20,
                          ),
                          const Gap(4),
                          Text(
                            userProfile.isMale ? "10" : "4",
                            style: Fonts.body02Medium().copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
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
