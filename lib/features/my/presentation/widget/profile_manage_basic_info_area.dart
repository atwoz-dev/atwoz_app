import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final TextStyle _defaultHintStyle =
    Fonts.body02Medium().copyWith(color: const Color(0xffB4B8C0));

final TextStyle _blackHintStyle =
    Fonts.body02Medium().copyWith(color: Palette.colorBlack);

String _getDisplayValue(MyBasicInfoType type, MyProfile profile) {
  switch (type) {
    case MyBasicInfoType.nickname:
      return profile.nickname;
    case MyBasicInfoType.age:
      return profile.age.toString();
    case MyBasicInfoType.height:
      return "${profile.height}cm";
    case MyBasicInfoType.gender:
      return profile.gender == GenderEnum.male ? '남자' : '여자';
    case MyBasicInfoType.phoneNum:
      return profile.phoneNum;
  }
}

class ProfileManageBasicInfoArea extends StatelessWidget {
  final MyProfile profile;
  const ProfileManageBasicInfoArea({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.0,
        children: [
          Text(
            "기본 정보",
            style: Fonts.header03().copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Column(
            children: MyBasicInfoType.values
                .toList()
                .map((type) => Column(
                      children: [
                        buildLabeledRow(
                          label: type.label,
                          child: GestureDetector(
                            onTap: () {
                              if (type == MyBasicInfoType.nickname) {
                                navigate(context,
                                    route: AppRoute.profileUpdate,
                                    extra: const MyProfileUpdateArguments(
                                        profileType:
                                            MyProfileInfoType.nickname));
                              } else if (type == MyBasicInfoType.phoneNum) {
                                navigate(context,
                                    route: AppRoute.contactSetting);
                              }
                            },
                            child: DefaultTextFormField(
                              fillColor: Palette.colorGrey100,
                              readOnly: true,
                              hintText: _getDisplayValue(type, profile),
                              hintStyle: type == MyBasicInfoType.nickname ||
                                      type == MyBasicInfoType.phoneNum
                                  ? _blackHintStyle
                                  : _defaultHintStyle,
                            ),
                          ),
                          context: context,
                        ),
                        const Gap(24)
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
