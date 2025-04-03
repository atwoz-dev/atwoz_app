import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';

final TextStyle _defaultHintStyle =
    Fonts.body02Medium().copyWith(color: Color(0xffB4B8C0));

final TextStyle _blackHintStyle =
    Fonts.body02Medium().copyWith(color: Palette.colorBlack);

class ProfileManageBasicInfoArea extends StatelessWidget {
  const ProfileManageBasicInfoArea({
    super.key,
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
          buildLabeledRow(
            label: "닉네임",
            child: GestureDetector(
              onTap: () => navigate(context, route: AppRoute.profileUpdate),
              child: DefaultTextFormField(
                fillColor: Palette.colorGrey100,
                readOnly: true,
                hintText: "닉네임", //TODO: 추후 프로필 정보로 변경
                hintStyle: _blackHintStyle,
              ),
            ),
            context: context,
          ),
          buildLabeledRow(
            label: "나이",
            child: DefaultTextFormField(
              fillColor: Palette.colorGrey100,
              readOnly: true,
              hintText: "34", //TODO: 추후 프로필 정보로 변경
              hintStyle: _defaultHintStyle,
            ),
            context: context,
          ),
          buildLabeledRow(
            label: "키",
            child: DefaultTextFormField(
              fillColor: Palette.colorGrey100,
              readOnly: true,
              hintText: "172cm", //TODO: 추후 프로필 정보로 변경
              hintStyle: _defaultHintStyle,
            ),
            context: context,
          ),
          buildLabeledRow(
            label: "성별",
            child: DefaultTextFormField(
              fillColor: Palette.colorGrey100,
              readOnly: true,
              hintText: "남자", //TODO: 추후 프로필 정보로 변경
              hintStyle: _defaultHintStyle,
            ),
            context: context,
          ),
          buildLabeledRow(
            label: "연락처",
            child: GestureDetector(
              onTap: () => navigate(context, route: AppRoute.contactSetting),
              child: DefaultTextFormField(
                fillColor: Palette.colorGrey100,
                readOnly: true,
                hintText: "010-1234-5678", //TODO: 추후 프로필 정보로 변경
                hintStyle: _blackHintStyle,
              ),
            ),
            context: context,
          ),
        ],
      ),
    );
  }
}
