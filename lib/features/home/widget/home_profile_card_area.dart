import 'package:atwoz_app/core/extension/context_extension.dart';
import 'package:atwoz_app/core/theme/app_colors.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/core/theme/app_icons.dart';
import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:flutter/material.dart';

// 페이지뷰 + 페이지 번호 상태 바
class HomeProfileCardArea extends StatefulWidget {
  final List<String> hashTagList;
  const HomeProfileCardArea({super.key, required this.hashTagList});

  @override
  State<HomeProfileCardArea> createState() => _HomeProfileCardAreaState();
}

class _HomeProfileCardAreaState extends State<HomeProfileCardArea> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // 소개받은 프로필 페이지 뷰
          width: context.screenWidth,
          height: context.screenHeight * 0.4,
          child: PageView.builder(
            itemCount: 3,
            onPageChanged: (value) => setState(() => _currentPage = value),
            itemBuilder: (context, index) {
              return ProfileCardWidget(hashTagList: widget.hashTagList);
            },
          ),
        ),
        SizedBox(height: 16),
        Row(
          // 페이지 번호 상태 바
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? AppColors.colorPrimary500
                    : AppColors.colorGrey100,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }),
        ),
      ],
    );
  }
}

// 소개받은 프로필 페이지 - 프로필 정보 카드
class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.hashTagList,
  });

  final List<String> hashTagList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
      decoration: BoxDecoration(
        // 카드 색상 및 둥근모서리 설정
        color: AppColors.colorGrey50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            // 상단 프로필 사진
            width: 100,
            height: 100,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/home_pic.png"),
            ),
          ),
          SizedBox(height: 16),
          Column(
            // 하단 프로필 정보
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
                // 인터뷰 글
                "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
                style: AppStyles.body02Medium().copyWith(
                    fontWeight: FontWeight.w400, color: AppColors.colorGrey600),
              ),
              SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  // 좋아요 버튼 클릭 로직
                },
                child: Container(
                  // 좋아요 버튼
                  margin: EdgeInsets.symmetric(horizontal: 54),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
                  decoration: BoxDecoration(
                      color: AppColors.colorPrimary500,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppIcon(AppIcons.home_heart, size: 24),
                      SizedBox(width: 8),
                      Text(
                        "좋아요",
                        style: AppStyles.body01Regular()
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HomeHashtagWidget extends StatelessWidget {
  final String tagName;
  const HomeHashtagWidget({
    super.key,
    required this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
          color: AppColors.colorPrimary100,
          borderRadius: BorderRadius.circular(2)),
      child: Text(
        tagName,
        style: AppStyles.body03Regular().copyWith(
          fontWeight: FontWeight.w500,
          color: AppColors.colorPrimary600,
        ),
      ),
    );
  }
}
