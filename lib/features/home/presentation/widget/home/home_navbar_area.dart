import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/home/presentation/provider/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNavbarArea extends ConsumerWidget {
  const HomeNavbarArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeStateAsync = ref.watch(homeNotifierProvider.select(
        (value) => value.whenData((data) => data.nickname))); // 홈 프로필 정보들

    return homeStateAsync.when(
        data: (nickname) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "딩동! $nickname님,\n오늘 소개해드릴 분들이에요!",
                  style: Fonts.header03().copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          navigate(context, route: AppRoute.notification),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
                        child: const DefaultIcon(
                          // 알림페이지 바로가기 버튼
                          IconPath.notification,
                          size: 24,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => navigate(context, route: AppRoute.ideal),
                      child: Container(
                        // 이상형 설정
                        padding: const EdgeInsets.fromLTRB(4.8, 2.4, 4.8, 2.4),
                        child: const DefaultIcon(
                          IconPath.tune,
                          size: 24,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
        error: (error, stackTrace) => Center(
              child: Text(
                error.toString(),
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w400,
                  color: Palette.colorBlack,
                ),
              ),
            ),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
