// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/my/presentation/controller/profile_manage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/view/view.dart';
import 'package:atwoz_app/features/my/presentation/enum/enum.dart';
import 'package:atwoz_app/features/my/presentation/widget/widget.dart';
import 'package:go_router/go_router.dart';

import '../../domain/model/my_profile.dart';

class ProfileUpdatePage extends ConsumerWidget {
  final MyProfileInfoType profileType;

  const ProfileUpdatePage({
    super.key,
    required this.profileType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileManageState = ref.read(profileManageNotifierProvider);
    final profileManageNotifier =
        ref.read(profileManageNotifierProvider.notifier);
    MyProfile tempProfile = profileManageState.profile;

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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProfileUpdateInfoSelector(
                        profileType: profileType,
                        profile: tempProfile,
                        onProfileUpdated: (selectedValue) {
                          tempProfile = selectedValue;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              DefaultElevatedButton(
                child: const Text('저장'),
                onPressed: () {
                  profileManageNotifier.updateProfile(tempProfile).then((_) {
                    if (context.mounted) pop(context);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
