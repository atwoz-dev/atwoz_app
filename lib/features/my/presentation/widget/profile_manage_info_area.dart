import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../app/constants/enum.dart';
import '../../domain/model/my_profile.dart';

String _getDisplayValue(MyProfileInfoType type, MyProfile profile) {
  switch (type) {
    case MyProfileInfoType.job:
      return profile.job;
    case MyProfileInfoType.region:
      return profile.region;
    case MyProfileInfoType.education:
      return educationMap[profile.education] ?? '';
    case MyProfileInfoType.smokingStatus:
      return profile.smokingStatus.label;
    case MyProfileInfoType.drinkingStatus:
      return profile.drinkingStatus.label;
    case MyProfileInfoType.religion:
      return profile.religion.label;
    case MyProfileInfoType.mbti:
      return profile.mbti;
    case MyProfileInfoType.hobbies:
      return profile.hobbies.join(', ');
    case MyProfileInfoType.nickname:
      return '';
  }
}

class ProfileManageInfoArea extends ConsumerWidget {
  const ProfileManageInfoArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileManageState = ref.watch(profileManageNotifierProvider);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.5,
        vertical: 24,
      ),
      decoration: const BoxDecoration(
        color: Palette.colorGrey50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "프로필 정보",
            style: Fonts.header03().copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(16),
          Column(
            children: MyProfileInfoType.values
                .where((type) => type != MyProfileInfoType.nickname)
                .toList()
                .map(
                  (type) => Column(
                    children: [
                      buildLabeledRow(
                          label: type.label,
                          child: GestureDetector(
                            onTap: () => navigate(
                              context,
                              route: AppRoute.profileUpdate,
                              extra: MyProfileUpdateArguments(
                                profileType: type,
                              ),
                            ),
                            child: DefaultTextFormField(
                              hintText: _getDisplayValue(
                                type,
                                profileManageState.profile,
                              ),
                              hintStyle: Fonts.body02Medium().copyWith(
                                color: Palette.colorBlack,
                              ),
                              fillColor: Palette.colorGrey100,
                              readOnly: true,
                            ),
                          ),
                          context: context),
                      const Gap(24),
                    ],
                  ),
                )
                .toList(),
          ),
          const Gap(8),
          DefaultElevatedButton(
            child: Text(
              "프로필 미리보기",
              style: Fonts.body01Regular().copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {},
          ),
          ProfileManageBasicInfoArea(
            profile: profileManageState.profile,
          ),
          const Gap(24),
        ],
      ),
    );
  }
}
