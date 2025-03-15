import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/data/model/introduced_profile.dart';
import 'package:atwoz_app/features/home/presentation/controller/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 페이지뷰 + 페이지 번호 상태 바
class HomeProfileCardArea extends ConsumerStatefulWidget {
  const HomeProfileCardArea({super.key});

  @override
  ConsumerState<HomeProfileCardArea> createState() =>
      _HomeProfileCardAreaState();
}

class _HomeProfileCardAreaState extends ConsumerState<HomeProfileCardArea> {
  int _currentPage = 0; // 현재 페이지 0으로 설정

  @override
  Widget build(BuildContext context) {
    final profiles =
        ref.watch(homeNotifierProvider).introducedProfiles; // 소개받은 프로필 정보들

    return Column(
      children: [
        SizedBox(
          // 소개받은 프로필 페이지 뷰
          width: context.screenWidth,
          height: context.screenHeight * 0.41,
          child: PageView.builder(
            itemCount: profiles.length,
            onPageChanged: (value) => setState(() => _currentPage = value),
            itemBuilder: (context, index) {
              return ProfileCardWidget(profile: profiles[index]);
            },
          ),
        ),
        SizedBox(height: 16),
        Row(
          // 페이지 번호 상태 바
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(profiles.length, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? Palette.colorPrimary500
                    : Palette.colorGrey100,
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
    required this.profile,
  });

  final IntroducedProfile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 40),
      decoration: BoxDecoration(
        // 카드 색상 및 둥근모서리 설정
        color: Palette.colorGrey50,
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
              backgroundImage:
                  AssetImage(profile.image), // 추후 api 연동 시 NetworkImage로 변경
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
                  itemCount: profile.hashTags.length,
                  itemBuilder: (context, index) {
                    return HomeHashtagWidget(tagName: profile.hashTags[index]);
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
                style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w400, color: Palette.colorGrey600),
                maxLines: 2,
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
                      color: Palette.colorPrimary500,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DefaultIcon(IconPath.homeHeart, size: 24),
                      SizedBox(width: 8),
                      Text(
                        "좋아요",
                        style:
                            Fonts.body01Regular().copyWith(color: Colors.white),
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
          color: Palette.colorPrimary100,
          borderRadius: BorderRadius.circular(2)),
      child: Text(
        tagName,
        style: Fonts.body03Regular().copyWith(
          fontWeight: FontWeight.w500,
          color: Palette.colorPrimary600,
        ),
      ),
    );
  }
}
