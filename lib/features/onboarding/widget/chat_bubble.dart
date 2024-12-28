import 'package:flutter/material.dart';

Widget bubbleWidget({
  required String comment, // 말풍선 텍스트
  Color bubbleColor = Colors.white, // 말풍선 배경색
  Color textColor = Colors.black, // 텍스트 색깔
  double width = 200, // 말풍선 너비
  double height = 60, // 말풍선 높이
  double shadowBlur = 5, // 그림자 흐림 정도
  double shadowOffset = 5, // 그림자 아래 이동 정도
  Color shadowColor = Colors.grey, // 그림자 색깔
  // double borderRadius = 50, // 말풍선 테두리 둥글기 정도
  TextStyle? textStyle, // 텍스트 스타일
}) =>
    Stack(
      clipBehavior: Clip.none,
      children: [
        CustomPaint(
          size: Size(width, height + 20), // 그림자의 크기
          painter: ShadowPainter(
            width: width,
            height: height,
            shadowBlur: shadowBlur,
            shadowOffset: shadowOffset,
            shadowColor: shadowColor,
            borderRadius: 50,
          ),
        ),
        ClipPath(
          clipper: BubbleClipper(borderRadius: 50),
          child: Container(
            decoration: BoxDecoration(
              color: bubbleColor,
            ),
            padding: const EdgeInsets.only(
              top: 0,
              left: 15,
              right: 15,
              bottom: 5, // 삼각형 부분을 위한 충분한 여백 추가
            ),
            width: width, // 말풍선 너비
            height: height, // 말풍선 높이
            child: Center(
              child: Text(
                comment,
                style: textStyle ??
                    TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );

class ShadowPainter extends CustomPainter {
  final double width;
  final double height;
  final double shadowBlur;
  final double shadowOffset;
  final Color shadowColor;
  final double borderRadius;

  ShadowPainter({
    required this.width,
    required this.height,
    required this.shadowBlur,
    required this.shadowOffset,
    required this.shadowColor,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint shadowPaint = Paint()
      ..color = shadowColor
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, shadowBlur); // 그림자 흐림 효과

    final Path bubblePath = BubbleClipper(borderRadius: borderRadius)
        .getBubblePath(Size(width, height));

    // 그림자 그리기
    canvas.drawPath(bubblePath.shift(Offset(0, shadowOffset)), shadowPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class BubbleClipper extends CustomClipper<Path> {
  final double borderRadius;

  BubbleClipper({this.borderRadius = 10});

  @override
  Path getClip(Size size) => getBubblePath(size);

  Path getBubblePath(Size size) {
    final Path path = Path();

    final double tailHeight = 10; // 꼬리 높이
    final double tailWidth = 15; // 꼬리 너비 (높이와 동일)

    // 본체 경계
    path.addRRect(RRect.fromLTRBAndCorners(
      0,
      0,
      size.width,
      size.height - tailHeight, // 꼬리 윗부분까지만 사각형
      bottomLeft: Radius.circular(borderRadius),
      bottomRight: Radius.circular(borderRadius),
      topLeft: Radius.circular(borderRadius),
      topRight: Radius.circular(borderRadius),
    ));

    // 꼬리 추가
    final double tailCenterX = size.width / 2; // 꼬리 중심 위치
    path.moveTo(tailCenterX - tailWidth / 2, size.height - tailHeight);
    path.lineTo(tailCenterX + tailWidth / 2, size.height - tailHeight);
    path.lineTo(tailCenterX, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true; // 변경된 도형 반영
}
