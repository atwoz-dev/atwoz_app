import 'dart:ui';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/widget/home_profile_card_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UserByCategoryPage extends StatefulWidget {
  final String category;
  const UserByCategoryPage({super.key, required this.category});

  @override
  State<UserByCategoryPage> createState() => _UserByCategoryPageState();
}

class _UserByCategoryPageState extends State<UserByCategoryPage> {
  final List<bool> _isBlurredList =
      List<bool>.filled(10, true); //TODO: 추후 API 연동 시 불러온 리스트 크기로 변경
  // 10개의 아이템 모두 블러 처리 상태로 초기화
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: widget.category),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: ListView.separated(
          itemCount: _isBlurredList.length,
          separatorBuilder: (context, index) => SizedBox(height: 8),
          itemBuilder: (context, index) {
            return UserByCategoryListItem(
              isBlurred: _isBlurredList[index],
              onTap: () async {
                // Make onTap async
                if (_isBlurredList[index]) {
                  // Only show dialog if item is blurred
                  final result = await showDialog<bool>(
                    context: context,
                    builder: (context) => ProfileOpenHearUseModal(),
                  );

                  if (result == true) {
                    setState(() {
                      _isBlurredList[index] =
                          false; // Update state based on dialog result
                    });
                  }
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class UserByCategoryListItem extends StatelessWidget {
  final bool isBlurred;
  final VoidCallback onTap;

  const UserByCategoryListItem({
    super.key,
    required this.isBlurred,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    List<String> hashTagList = ["#클라이밍", "#불교", "#무계획 여행", "+2"];
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Palette.gray10, borderRadius: BorderRadius.circular(16)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 54,
                      width: 54,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/home_pic.png"),
                        radius: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        // 해시태그 리스트 뷰
                        width: context.screenHeight,
                        height: 18,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: hashTagList.length,
                          itemBuilder: (context, index) {
                            return HomeHashtagWidget(
                                tagName: hashTagList[index]);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 8);
                          },
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
                        style: Fonts.body02Medium().copyWith(
                            fontWeight: FontWeight.w400,
                            color: Palette.colorGrey600),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                  color: Palette.colorGrey100,
                                  borderRadius: BorderRadius.circular(12)),
                              child: SvgPicture.asset(
                                "assets/icons/home_heart.svg",
                                width: 24,
                                height: 24,
                                color: Palette.colorPrimary500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isBlurred)
            Positioned.fill(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ProfileOpenHearUseModal extends StatelessWidget {
  const ProfileOpenHearUseModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: context.screenWidth,
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.fromLTRB(13, 24, 13, 16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "소개 받으시겠습니까?",
                style: Fonts.header02().copyWith(fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Gap(12),
              Text(
                "보유한 하트:10",
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7E7E7E),
                ),
                textAlign: TextAlign.center,
              ),
              Gap(24),
              Row(
                children: [
                  Expanded(
                    child: DefaultElevatedButton(
                      onPressed: () {
                        pop(context);
                      },
                      primary: Colors.white,
                      border: BorderSide(color: Color(0xffE1E1E1)),
                      child: Text(
                        "취소",
                        style: Fonts.body02Medium().copyWith(
                            fontWeight: FontWeight.w400,
                            color: Palette.colorBlack),
                      ),
                    ),
                  ),
                  Gap(8),
                  Expanded(
                    child: DefaultElevatedButton(
                      onPressed: () {
                        pop(context, true);
                      },
                      primary: Palette.colorPrimary500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultIcon(IconPath.homeHeart, size: 16),
                          Gap(4),
                          Text(
                            "8",
                            style: Fonts.body02Medium().copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
