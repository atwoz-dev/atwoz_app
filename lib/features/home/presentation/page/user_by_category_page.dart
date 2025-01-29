import 'dart:ui';

import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/widget/home_profile_card_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserByCategoryPage extends StatefulWidget {
  const UserByCategoryPage({super.key});

  @override
  State<UserByCategoryPage> createState() => _UserByCategoryPageState();
}

class _UserByCategoryPageState extends State<UserByCategoryPage> {
  List<String> appBarTitle = [
    "상위 5%",
    "새로 가입했어요",
    "지금 근처인 사람!",
    "종교가 같아요",
    "취미가 같아요"
  ];
  int currentCategoryIndex = 0;
  Map<int, bool> isBlurredMap = {
    for (var item in List.generate(4, (index) => index)) item: true
  };
  List<bool> isBlurredList =
      List<bool>.filled(10, true); // 10개의 아이템 모두 블러 처리 상태로 초기화

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle[currentCategoryIndex],
          style: Fonts.header03()
              .copyWith(fontWeight: FontWeight.w600, color: Palette.colorBlack),
        ),
        leading: GestureDetector(
            onTap: () {
              if (currentCategoryIndex > 0) {
                currentCategoryIndex--;
              } else {
                currentCategoryIndex = 4;
              }
              setState(() {});
            },
            child: Icon(Icons.arrow_back_ios_new)),
        actions: [
          GestureDetector(
            onTap: () {
              if (currentCategoryIndex < 4) {
                currentCategoryIndex++;
              } else {
                currentCategoryIndex = 0;
              }
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (context, index) => SizedBox(height: 8),
          itemBuilder: (context, index) {
            return UserByCategoryListItem(
              isBlurred: isBlurredMap[index]!,
              onTap: () {
                setState(() {
                  isBlurredMap[index] = !isBlurredMap[index]!; // 클릭 시 블러 상태 변경
                });
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
      child: BackdropFilter(
        filter: isBlurred
            ? ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0)
            : ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: Container(
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
                      backgroundImage: AssetImage("assets/images/home_pic.png"),
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
                          return HomeHashtagWidget(tagName: hashTagList[index]);
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
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                              color: Palette.colorGrey100,
                              borderRadius: BorderRadius.circular(12)),
                          child: SvgPicture.asset(
                            "assets/icons/home_heart.svg",
                            width: 24,
                            height: 24,
                            color: Palette.colorPrimary500,
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
      ),
    );
  }
}
