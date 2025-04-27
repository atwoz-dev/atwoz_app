import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/features/my/domain/model/my_profile.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/view/view.dart';

class ProfileUpdatePage extends ConsumerStatefulWidget {
  final MyProfileInfoType profileType;

  const ProfileUpdatePage({
    super.key,
    required this.profileType,
  });

  @override
  ConsumerState<ProfileUpdatePage> createState() => _ProfileUpdatePageState();
}

class _ProfileUpdatePageState extends ConsumerState<ProfileUpdatePage> {
  late MyProfile originalProfile; // 기존 프로필 정보
  late MyProfile tempProfile; // 변경된 프로필 정보
  bool _isChanged = false; // 변경 여부

  @override
  void initState() {
    super.initState();
    final profileManageState = ref.read(profileManageNotifierProvider);
    originalProfile = profileManageState.profile;
    tempProfile = profileManageState.profile;
  }

  @override
  Widget build(BuildContext context) {
    final profileManageNotifier =
        ref.read(profileManageNotifierProvider.notifier);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBar(
        title: '프로필 정보',
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.h),
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(
              begin: 0,
              end: _isChanged
                  ? 1.0
                  : 0.5, // profileManageState.isSelected 대신 _isChanged 사용
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
                        profileType: widget.profileType,
                        profile: originalProfile,
                        onProfileUpdated: (selectedValue, isChanged) {
                          setState(() {
                            tempProfile = selectedValue;
                            _isChanged = isChanged;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              DefaultElevatedButton(
                primary:
                    _isChanged // profileManageState.isSelected 대신 _isChanged 사용
                        ? Palette.colorPrimary500
                        : Palette.colorGrey200,
                onPressed: () {
                  if (_isChanged) {
                    // profileManageState.isSelected 대신 _isChanged 사용
                    profileManageNotifier.updateProfile(tempProfile).then((_) {
                      if (context.mounted) pop(context);
                    });
                  }
                },
                child: Text(
                  '저장',
                  style: Fonts.body01Medium(
                    _isChanged // profileManageState.isSelected 대신 _isChanged 사용
                        ? Colors.white
                        : Palette.colorGrey300,
                  ),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
