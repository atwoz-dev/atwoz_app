import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/view/view.dart';
import 'package:atwoz_app/features/my/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileUpdatePage extends StatelessWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '프로필 정보',
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.h), // Progress bar의 높이를 지정
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(
              begin: 0,
              end: 0.5, //TODO: 프로필 수정 시 1로 변경되도록 추후 변경
            ),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            builder: (context, value, child) {
              return LinearProgressIndicator(
                value: value,
                minHeight: 4.h,
                backgroundColor: Palette.colorGrey100,
                color: Palette.colorPrimary500,
              );
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(32),
              const ProfileUpdateInfoSelector(),
              const Spacer(),
              DefaultElevatedButton(
                child: const Text('저장'),
                onPressed: () {
                  //TODO: 수정된 프로필 저장 로직 구현
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
