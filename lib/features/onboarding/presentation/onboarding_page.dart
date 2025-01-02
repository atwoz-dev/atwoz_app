import 'dart:math';
import 'package:atwoz_app/core/widgets/overlay/app_chat_bubble.dart';
import 'package:atwoz_app/router/router.dart';
import 'package:flutter/material.dart';

import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/features/onboarding/widget/balloon_widget.dart';
// TODO: 반응형 고려해서 고정값 바꾸기
// TODO: 위젯 분리하기
// TODO: Deprecatd 코드(whiteOpacity) 없애기
// TODO:  코드 정리하기
// TODO: text style 통일

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  final List<Map<String, dynamic>> balloons = [
    {'text': '진정한 사랑, 연인', 'color': const Color.fromARGB(255, 206, 233, 255)},
    {'text': '나에게 사랑이란?', 'color': const Color.fromARGB(255, 241, 192, 255)},
    {'text': '같은 생각, 같은 마음', 'color': const Color(0xFFFF97CA)},
    {'text': '사랑의 시작', 'color': const Color.fromARGB(255, 192, 201, 227)},
    {'text': '나와 잘 맞는 사람', 'color': const Color(0xFF30D0A7)},
    {'text': '추구하는 美', 'color': const Color.fromARGB(255, 255, 181, 210)},
    {'text': '#나의 생각 #마음', 'color': const Color(0xFFFF5C5D)},
    {'text': '사랑, 가치관에서 시작된다.', 'color': const Color(0xFF9ECEFD)},
    {'text': '세상에서 가장 편한 사람', 'color': const Color(0xFFFFE4AF)},
    {'text': '#힘들 때 #내 곁에', 'color': const Color(0xFFFBD4D3)},
    {'text': '#즐거운 순간은 #함께', 'color': const Color(0xFFA9DFDA)},
    {'text': '만남의 시작', 'color': const Color(0xFFFF5219)},
    {'text': '인연의 시작', 'color': const Color(0xFF81DF79)},
    {'text': '만남부터 차근차근', 'color': const Color(0xFF1FCF69)},
    {'text': '행복한 미래', 'color': const Color(0xFF5AA4D2)},
    {'text': '영원한 내 편', 'color': const Color(0xFFC478D3)},
    {'text': '소중한 사람과의 시간', 'color': const Color(0xFF73C2FB)},
    {'text': '내 마음의 평온', 'color': const Color.fromARGB(255, 255, 211, 242)},
    {'text': '작은 행복의 시작', 'color': const Color(0xFF9370DB)},
    {'text': '지금 이 순간의 즐거움', 'color': const Color.fromARGB(255, 255, 146, 201)},
  ];

  late final List<double> randomRowStartX; // 각 줄의 시작 X축 위치
  final double rowHeight = 120.0; // 각 줄의 높이
  final int balloonsPerRow = 2; // 한 줄에 표시할 풍선 수

  @override
  void initState() {
    super.initState();

    // 전체 이동 거리와 주기 동기화
    final totalRows = (balloons.length / balloonsPerRow).ceil();
    final totalHeight = totalRows * rowHeight;

    _controller = AnimationController(
      duration: Duration(milliseconds: (totalHeight * 10).toInt()), // 타이밍 동기화
      vsync: this,
    )..repeat();

    _animation = Tween<double>(
      begin: 0.0,
      end: totalHeight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    // 각 줄의 X축 시작 위치를 랜덤하게 설정
    randomRowStartX = List.generate(
      totalRows,
      (_) => Random().nextDouble() * 100 - 100, // 화면 바깥으로 랜덤 이동
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Stack(
                  children: [
                    // 기존 풍선 애니메이션
                    ...List.generate(
                      ((balloons.length / balloonsPerRow).ceil()) *
                          2, // 두 배의 줄 생성
                      (rowIndex) {
                        final int startBalloonIndex = (rowIndex %
                                (balloons.length / balloonsPerRow).ceil()) *
                            balloonsPerRow;

                        final double yOffset =
                            (_animation.value - rowIndex * rowHeight) %
                                ((balloons.length / balloonsPerRow).ceil() *
                                    rowHeight);

                        return Positioned(
                          top: screenHeight - yOffset, // 아래에서 위로 이동
                          left: randomRowStartX[rowIndex %
                              randomRowStartX.length], // 각 줄의 시작 X축 랜덤 위치
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              balloonsPerRow,
                              (colIndex) {
                                final int balloonIndex =
                                    (startBalloonIndex + colIndex) %
                                        balloons.length;
                                return BalloonWidget(
                                  text: balloons[balloonIndex]['text'],
                                  color: balloons[balloonIndex]['color'],
                                  textStyle: AppStyles.header02()
                                      .copyWith(fontWeight: FontWeight.w900),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    // 아래쪽에 흰색 그라데이션 추가
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: context.screenHeight * 0.7, // 그라데이션 높이
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white.withOpacity(0), // 투명 흰색
                              Colors.white.withOpacity(0.05), // 투명 흰색
                              Colors.white, // 완전 흰색
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 3, // 하단 UI 유지
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bubbleWidget(
                      comment: '회원가입하고 포인트 선물받기',
                      boldText: '포인트 선물',
                      width: MediaQuery.of(context).size.width * 0.5,
                      textStyle: AppStyles.body03Regular(),
                      shadowColor: AppColors.colorGrey200),
                  AppElevatedButton(
                    primary: context.appColors.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.onboardPhone,
                      );
                    },
                    child: Text(
                      '전화번호로 시작하기',
                      style:
                          AppStyles.body01Regular(context.appColors.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '만 18세 이상만 이용 가능하며 회원가입 시\n'
                    '이용약관, 개인정보처리방침에 동의하게 됩니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
