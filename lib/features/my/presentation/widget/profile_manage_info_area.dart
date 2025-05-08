import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/my/presentation/enum/my_profile_type.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../app/constants/enum.dart';

String _getDisplayValue(MyProfileInfoType type, MyProfile profile) {
  return switch (type) {
    MyProfileInfoType.job => profile.job.label,
    MyProfileInfoType.region => profile.region,
    MyProfileInfoType.education => educationMap[profile.education] ?? '',
    MyProfileInfoType.smokingStatus => profile.smokingStatus.label,
    MyProfileInfoType.drinkingStatus => profile.drinkingStatus.label,
    MyProfileInfoType.religion => profile.religion.label,
    MyProfileInfoType.mbti => profile.mbti,
    MyProfileInfoType.hobbies =>
      profile.hobbies.map((hobby) => hobby.label).join(', '),
    MyProfileInfoType.nickname => '',
  };
}

class ProfileManageInfoArea extends StatelessWidget {
  final MyProfile profile;
  const ProfileManageInfoArea({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
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
                                profile,
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
            profile: profile,
          ),
          const Gap(24),
        ],
      ),
    );
  }
}
