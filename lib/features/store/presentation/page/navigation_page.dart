import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter/material.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';

// TODO: 전체화면 나온 뒤 삭제 필요
class StoreNavigationPage extends StatelessWidget {
  const StoreNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.screenWidth * 0.05,
                vertical: context.screenWidth * 0.2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.store,
                      );
                    },
                    child: Text(
                      '상점',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DefaultElevatedButton(
                    primary: context.palette.primary,
                    onPressed: () async {
                      navigate(
                        context,
                        route: AppRoute.store,
                      );
                    },
                    child: Text(
                      '하트 부족',
                      style: Fonts.body01Regular(context.palette.onPrimary),
                    ),
                  ),
                ],
              ),
            )));
  }
}
