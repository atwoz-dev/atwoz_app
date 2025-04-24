import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:atwoz_app/features/my/presentation/controller/profile_manage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../app/constants/enum.dart';
import '../../domain/model/my_profile.dart';

String _getDisplayValue(MyProfileInfoTypeEnum type, MyProfile profile) {
  switch (type) {
    case MyProfileInfoTypeEnum.job:
      return profile.job;
    case MyProfileInfoTypeEnum.region:
      return profile.region;
    case MyProfileInfoTypeEnum.education:
      return profile.education;
    case MyProfileInfoTypeEnum.smokingStatus:
      return smokingMap[profile.smokingStatus] ?? '';
    case MyProfileInfoTypeEnum.drinkingStatus:
      return drinkingMap[profile.drinkingStatus] ?? '';
    case MyProfileInfoTypeEnum.religion:
      return religionMap[profile.religion] ?? '';
    case MyProfileInfoTypeEnum.mbti:
      return profile.mbti;
    case MyProfileInfoTypeEnum.hobbies:
      return profile.hobbies.join(', ');
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
            children: myProfileInfoTypeMap.values
                .toList()
                .map(
                  (label) => Column(
                    children: [
                      buildLabeledRow(
                          label: label,
                          child: GestureDetector(
                            onTap: () => navigate(context,
                                route: AppRoute.profileUpdate,
                                extra: MyProfileUpdateArguments(
                                    profileType: myProfileInfoTypeMap.entries
                                        .firstWhere((e) => e.value == label)
                                        .key)),
                            child: DefaultTextFormField(
                              hintText: _getDisplayValue(
                                  myProfileInfoTypeMap.entries
                                      .firstWhere((e) => e.value == label)
                                      .key,
                                  profileManageState
                                      .profile), //TODO: 추후 프로필 정보로 수정
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
