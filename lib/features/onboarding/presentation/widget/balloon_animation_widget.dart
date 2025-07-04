import 'dart:math';
import 'package:flutter/material.dart';
import 'package:atwoz_app/features/onboarding/presentation/widget/onboarding_balloon_widget.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class BalloonAnimationWidget extends StatefulWidget {
  final List<Map<String, dynamic>> balloons;

  const BalloonAnimationWidget({
    super.key,
    required this.balloons,
  });

  @override
  State<BalloonAnimationWidget> createState() => _BalloonAnimationWidgetState();
}

class _BalloonAnimationWidgetState extends State<BalloonAnimationWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final List<double> randomRowStartX;

  final double rowHeight = 120.0;
  final int balloonsPerRow = 2;

  @override
  void initState() {
    super.initState();
    final totalRows = (widget.balloons.length / balloonsPerRow).ceil();
    final totalHeight = totalRows * rowHeight;

    _controller = AnimationController(
      duration: Duration(milliseconds: (totalHeight * 10).toInt()),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(
      begin: 0.0,
      end: totalHeight,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    randomRowStartX = List.generate(
      totalRows,
      (_) => Random().nextDouble() * 100 - 100,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          children: [
            ...List.generate(
              ((widget.balloons.length / balloonsPerRow).ceil()) * 2,
              (rowIndex) {
                final int startBalloonIndex = (rowIndex %
                        (widget.balloons.length / balloonsPerRow).ceil()) *
                    balloonsPerRow;

                final double yOffset =
                    (_animation.value - rowIndex * rowHeight) %
                        ((widget.balloons.length / balloonsPerRow).ceil() *
                            rowHeight);

                return Positioned(
                  top: screenHeight - yOffset,
                  left: randomRowStartX[rowIndex % randomRowStartX.length],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(balloonsPerRow, (colIndex) {
                      final int balloonIndex = (startBalloonIndex + colIndex) %
                          widget.balloons.length;

                      return OnboardingBalloonWidget(
                        text: widget.balloons[balloonIndex]['text'],
                        color: widget.balloons[balloonIndex]['color'],
                        textStyle: Fonts.header02()
                            .copyWith(fontWeight: FontWeight.w900),
                      );
                    }),
                  ),
                );
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.7,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.05),
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
