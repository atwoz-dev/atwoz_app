import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/lovetest/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MatchResultPage extends ConsumerStatefulWidget {
  const MatchResultPage({super.key});

  @override
  MatchResultPageState createState() => MatchResultPageState();
}

class MatchResultPageState
    extends BaseConsumerStatefulPageState<MatchResultPage> {
  MatchResultPageState()
      : super(
          isAppBar: true,
          defaultAppBarTitle: "매칭된 회원",
          isHorizontalMargin: true,
          isDefaultBottomNavigationBar: true,
        );
  String imagePath = "assets/images/find_mate.png";
  bool isMatched = false;

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(24),
            Text('나의 소울메이트를 찾았어요',
                style: Fonts.header03().copyWith(fontWeight: FontWeight.w700)),
            const Gap(6),
            Row(
              children: [
                Text(
                  '상대방과 모두 같은 답을 선택하셨어요!',
                  style: Fonts.body02Regular().copyWith(
                      fontWeight: FontWeight.w400, color: Color(0xff8D92A0)),
                ),
              ],
            ),
            Text(
              '결과는 48시간 동안 유지됩니다',
              style: Fonts.body02Regular().copyWith(
                  fontWeight: FontWeight.w400, color: Color(0xff8D92A0)),
            ),
            const Gap(24),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              height: 400,
            ),
            const Gap(24),
            Text(
              '선호하는 과목이 같은 이성',
              style: Fonts.body02Regular().copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
            const Gap(8),
            MatchPhotoWidget(
              profileImageAndDetails: [
                {
                  'image': 'assets/images/find_mate1.png',
                  'name': '조이현',
                  'detail': '서울, 20대'
                },
                {
                  'image': 'assets/images/find_mate2.png',
                  'name': '박보영',
                  'detail': '경기, 20대'
                },
                {
                  'image': 'assets/images/find_mate3.png',
                  'name': '신민아',
                  'detail': '서울, 30대'
                },
                {
                  'image': 'assets/images/find_mate1.png',
                  'name': '조이현',
                  'detail': '서울, 20대'
                },
                {
                  'image': 'assets/images/find_mate2.png',
                  'name': '박보영',
                  'detail': '경기, 20대'
                },
                {
                  'image': 'assets/images/find_mate3.png',
                  'name': '신민아',
                  'detail': '서울, 30대'
                },
              ],
            ),
            const Gap(24),
            DefaultElevatedButton(
              onPressed: () {
                navigate(context, route: AppRoute.lovetest);
              },
              primary: Palette.colorPrimary500,
              child: Text("연애 모의고사 다시보기",
                  style: Fonts.body01Regular().copyWith(
                      fontWeight: FontWeight.w500, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
