import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileManagePage extends StatelessWidget {
  const ProfileManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Palette.colorGrey50,
        appBar: DefaultAppBar(
          title: "프로필 관리",
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ProfilePhotoArea(), // 프로필 사진 영역
              _ProfileInfoArea() // 프로필 정보 영역
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileInfoArea extends StatelessWidget {
  const _ProfileInfoArea();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.5, vertical: 24),
      decoration: BoxDecoration(
        color: Palette.colorGrey50,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "프로필 정보",
                style: Fonts.header03().copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(16),
              buildLabeledRow(
                label: "직업",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "지역",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "학력",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "흡연여부",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "음주빈도",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "종교",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "MBTI",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "취미",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
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
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(32),
              Text(
                "기본 정보",
                style: Fonts.header03().copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(16),
              buildLabeledRow(
                label: "닉네임",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "나이",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "키",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "성별",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
              buildLabeledRow(
                label: "연락처",
                child: DefaultTextFormField(
                  fillColor: Palette.colorGrey100,
                ),
                context: context,
              ),
              Gap(16),
            ],
          )
        ],
      ),
    );
  }
}

class _ProfilePhotoArea extends StatelessWidget {
  const _ProfilePhotoArea();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(24),
          Text(
            "프로필 사진",
            style: Fonts.header03().copyWith(
              color: Palette.colorBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(16),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffEDEEF0),
                      ),
                      child: index == 0
                          ? DefaultIcon(
                              IconPath.personPlaceholder,
                              size: 150,
                            )
                          : null,
                    ),
                  ),
                  if (index == 0)
                    Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Palette.colorPrimary600,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                            child: Text(
                              "대표",
                              style: Fonts.body03Regular().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xff8D92A0),
                          width: 1.5,
                        ),
                      ),
                      child: DefaultIcon(
                        IconPath.add,
                        colorFilter: DefaultIcon.fillColor(Color(0xff8D92A0)),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
