import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashLine extends StatelessWidget {
  final double height;
  final Color color;

  const DashLine(
      {this.height = 1, this.color = const Color(0xffdfe2e6), super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double dashWidth = 7.w;
            double dashSpace = 4.w;
            int dashCount =
                (constraints.constrainWidth() / (dashWidth + dashSpace))
                    .floor();
            return Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: List.generate(dashCount, (_) {
                return SizedBox(
                  width: dashWidth,
                  height: height,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ),
                );
              }),
            );
          },
        ));
  }
}
