import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeBannerArea extends ConsumerWidget {
  const HomeBannerArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDatingExamSubmitted =
        ref.watch(globalProvider).profile.isDatingExamSubmitted;

    return GestureDetector(
      onTap: () {
        if (context.mounted) {
          isDatingExamSubmitted
              ? navigate(
                  context,
                  route: AppRoute.examResult,
                  extra: ExamResultArguments(
                    isFromDirectAccess: true,
                  ),
                )
              : navigate(context, route: AppRoute.exam);
        }
      },
      child: Image.asset(
        ImagePath.homeTest,
        fit: BoxFit.cover,
        width: context.screenWidth,
      ),
    );
  }
}
