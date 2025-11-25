import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/widget/chip/default_chip.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IntroduceDetailPage extends ConsumerStatefulWidget {
  const IntroduceDetailPage({super.key});

  @override
  IntroduceDetailPageState createState() => IntroduceDetailPageState();
}

class IntroduceDetailPageState
    extends AppBaseConsumerStatefulPageState<IntroduceDetailPage> {
  @override
  Widget buildPage(BuildContext context) {
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding = EdgeInsets.symmetric(
      horizontal: horizontalPadding,
    );

    return Scaffold(
      appBar: DefaultAppBar(title: '상대방 정보'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 10.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: 100.w,
                        height: 100.h,
                        child: Image.asset(
                          ImagePath.selfThumb,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '차은우, 24',
                          style: Fonts.header02(
                            Palette.colorGrey900,
                          ).copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Gap(6),
                        Text(
                          'ISTP · 서울특별시 동작구',
                          style: Fonts.body03Regular(Palette.colorGrey500),
                        ),
                        const Gap(6),
                        SizedBox(height: 2.h),
                        DefaultChip(titleList: ['공연 전시회 관람', '클라이밍']),
                      ],
                    ),
                  ],
                ),
                const Gap(16),
                const _InteractionButtons(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Palette.colorGrey100,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: 12.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.colorWhite,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16.0),
                        bottom: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '안녕하세요 명수님',
                            style: Fonts.header03(
                              Palette.colorGrey900,
                            ).copyWith(fontWeight: FontWeight.w700),
                          ),
                          const Gap(12),
                          Text(
                            '나이 : 28세\n'
                            '지역 : 서울시 동작구\n'
                            '선호 관계 : 일단 연애부터 찬찬히\n'
                            '하는 일 : 패션 디자이너로 근근히 먹고 살아요\n'
                            '외모 : 키는 186cm이고 약간 억울한 송강 닮았다고 가끔 듣는정도...? 평범한 얼굴이에요ㅋㅋ 약간 속쌍입니다!\n'
                            '성격 : 밝고 자존감 있는편!\n'
                            '대화 나누는걸 좋아해서 대화 잘 통하는분이 좋아요\n'
                            '지역 : 서울시 동작구\n'
                            '선호 관계 : 일단 연애부터 찬찬히\n'
                            '하는 일 : 패션 디자이너로 근근히 먹고 살아요\n'
                            '외모 : 키는 186cm이고 약간 억울한 송강 닮았다고 가끔 듣는정도...? 평범한 얼굴이에요ㅋㅋ 약간 속쌍입니다!\n'
                            '성격 : 밝고 자존감 있는편!\n'
                            '대화 나누는걸 좋아해서 대화 잘 통하는분이 좋아요\n'
                            '지역 : 서울시 동작구\n'
                            '선호 관계 : 일단 연애부터 찬찬히\n'
                            '하는 일 : 패션 디자이너로 근근히 먹고 살아요\n'
                            '외모 : 키는 186cm이고 약간 억울한 송강 닮았다고 가끔 듣는정도...? 평범한 얼굴이에요ㅋㅋ 약간 속쌍입니다!\n'
                            '성격 : 밝고 자존감 있는편!\n'
                            '대화 나누는걸 좋아해서 대화 잘 통하는분이 좋아요\n'
                            '연락 빈도수를 크게 신경쓰진 않지만 대화가 끊길 정도가 아니면 괜찮다 생각해요! 리액션 좋다면 최곱니다',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InteractionButtons extends StatelessWidget {
  const _InteractionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DefaultElevatedButton(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultIcon(IconPath.letter),
                const Gap(8.0),
                Text('대화 해볼래요', style: Fonts.body02Medium(Colors.white)),
              ],
            ),
            onPressed: () => {},
          ),
        ),
        const Gap(8.0),
        SizedBox(
          width: 44.0,
          child: DefaultElevatedButton(
            padding: const EdgeInsets.all(10.0),
            primary: Palette.colorGrey100,
            onPressed: () {},
            child: DefaultIcon(IconPath.heart),
          ),
        ),
      ],
    );
  }
}
