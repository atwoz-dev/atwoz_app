import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:atwoz_app/features/my/my.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/view/view.dart';

class ProfileUpdatePage extends ConsumerWidget {
  final String profileType;

  const ProfileUpdatePage({
    super.key,
    required this.profileType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileManageState = ref.watch(profileManageProvider);
    final profileManageNotifier =
        ref.read(profileManageProvider.notifier);

    return profileManageState.when(
      data: (state) {
        return GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: DefaultAppBar(
              title: '프로필 정보',
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(4.h),
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(
                    begin: 0,
                    end: state.isChanged ? 1.0 : 0.5,
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
                        child: ProfileUpdateInfoSelector(
                          profileType: profileType,
                          profile: state.profile,
                          onProfileUpdated: (selectedValue, isChanged) {
                            Log.d(
                                'Selected Value: $selectedValue, isChanged: $isChanged');
                            profileManageNotifier.updateProfile(
                              profile: selectedValue,
                              isChanged: isChanged,
                            );
                          },
                        ),
                      ),
                    ),
                    DefaultElevatedButton(
                      primary: state.isChanged
                          ? Palette.colorPrimary500
                          : Palette.colorGrey200,
                      onPressed: () async {
                        if (!state.isChanged) return;

                        final isSaved =
                            await profileManageNotifier.saveProfile();

                        if (!isSaved) return;

                        if (isSaved && context.mounted) {
                          pop(context);
                        }
                      },
                      child: Text(
                        '저장',
                        style: Fonts.body01Medium(
                          state.isChanged ? Colors.white : Palette.colorGrey300,
                        ),
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
    );
  }
}
