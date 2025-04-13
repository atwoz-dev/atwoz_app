import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/features/my/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const List<String> _profiles = [
  "직업",
  "지역",
  "학력",
  "흡연여부",
  "음주빈도",
  "종교",
  "MBTI",
  "취미",
];

class ProfileManageInfoArea extends StatelessWidget {
  const ProfileManageInfoArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.5, vertical: 24),
      decoration: BoxDecoration(
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
          Gap(16),
          Column(
            children: _profiles.map((profile) {
              return Column(
                children: [
                  buildLabeledRow(
                      label: profile,
                      child: GestureDetector(
                        onTap: () =>
                            navigate(context, route: AppRoute.profileUpdate),
                        child: DefaultTextFormField(
                          hintText: profile, //TODO: 추후 프로필 정보로 수정
                          hintStyle: Fonts.body02Medium()
                              .copyWith(color: Palette.colorBlack),
                          fillColor: Palette.colorGrey100,
                          readOnly: true,
                        ),
                      ),
                      context: context),
                  Gap(16),
                ],
              );
            }).toList(),
          ),
          Gap(32),
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
          ProfileManageBasicInfoArea()
        ],
      ),
    );
  }
}
