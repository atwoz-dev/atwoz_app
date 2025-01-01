import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/core/theme/app_colors.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int totalSteps; // 총 단계 수
  final int currentStep; // 현재 단계 (1부터 시작)
  final Color? activeColor; // 활성화 색상 (현재 단계까지)
  final Color? inactiveColor; // 비활성 색상
  final double size; // 원의 크기
  final double spacing; // 원 간 간격

  const StepIndicator({
    super.key,
    required this.totalSteps,
    required this.currentStep,
    this.activeColor,
    this.inactiveColor,
    this.size = 10.0,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final Color resolvedActiveColor = activeColor ?? context.appColors.primary;
    final Color resolvedInactiveColor = inactiveColor ?? AppColors.colorGrey100;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(totalSteps, (index) {
          final isActive = index < currentStep; // 현재 단계까지 활성화

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: spacing / 2),
            child: Container(
              width: size * (isActive && index + 1 == currentStep ? 2 : 1),
              height: size * (isActive && index + 1 == currentStep ? 2 : 1),
              decoration: BoxDecoration(
                color: isActive ? resolvedActiveColor : resolvedInactiveColor,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: (isActive && index + 1 == currentStep)
                  ? Text(
                      '${index + 1}', // 현재 단계 숫자

                      style:
                          AppStyles.body03Regular(context.appColors.onPrimary),
                    )
                  : null, // 다른 단계는 숫자 없음
            ),
          );
        }),
      ),
    );
  }
}
