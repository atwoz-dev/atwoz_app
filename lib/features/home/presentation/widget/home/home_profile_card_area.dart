import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:atwoz_app/features/home/presentation/controller/home_notifier.dart';
import 'package:atwoz_app/features/home/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

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
    final homeStateAsync = ref.watch(
      homeNotifierProvider.select(
        (value) => value.whenData((data) => data.recommendedProfiles),
      ),
    ); // 소개받은 프로필 정보들

    return homeStateAsync.when(
      data: (profiles) {
        if (profiles.isEmpty) {
          return const _EmptyProfileCard();
        }
        return Column(
          children: [
            SizedBox(
              // 소개받은 프로필 페이지 뷰
              width: context.screenWidth,
              height: context.screenHeight * 0.41,
              child: PageView.builder(
                itemCount: profiles.length,
                onPageChanged: (value) => setState(
                  () => _currentPage = value,
                ),
                itemBuilder: (context, index) {
                  return _ProfileCardWidget(profile: profiles[index]);
                },
              ),
            ),
            const Gap(16),
            Row(
              // 페이지 번호 상태 바
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(profiles.length, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
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
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(
            error.toString(),
            style: Fonts.body01Regular().copyWith(
              fontWeight: FontWeight.w500,
              color: Palette.colorGrey600,
            ),
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class _EmptyProfileCard extends StatelessWidget {
  const _EmptyProfileCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 122,
      ),
      decoration: BoxDecoration(
        // 카드 색상 및 둥근모서리 설정
        color: Palette.colorGrey50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const DefaultIcon(
            IconPath.sadEmotion,
            size: 48,
          ),
          const Gap(8),
          Text(
            '조건에 맞는 이성을 찾지 못했어요\n우측 상단의 필터에서 이상형을 설정할 수 있어요',
            style: Fonts.body03Regular().copyWith(
              fontWeight: FontWeight.w500,
              color: Palette.colorBlack,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

// 소개받은 프로필 페이지 - 프로필 정보 카드
class _ProfileCardWidget extends StatelessWidget {
  const _ProfileCardWidget({
    required this.profile,
  });

  final IntroducedProfile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 40,
      ),
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
              backgroundImage: AssetImage(
                  profile.profileImageUrl), // 추후 api 연동 시 NetworkImage로 변경
            ),
          ),
          const Gap(16),
          Column(
            // 하단 프로필 정보
            children: [
              Container(
                // 해시태그 리스트 뷰
                width: double.infinity,
                height: 18,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: HashtagWrap(tags: profile.tags),
              ),
              const Gap(8),
              Text(
                profile.interviewContent,
                style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w400, color: Palette.colorGrey600),
                maxLines: 2,
              ),
              const Gap(24),
              GestureDetector(
                onTap: () {
                  // 좋아요 버튼 클릭 로직
                },
                child: Container(
                  // 좋아요 버튼
                  margin: const EdgeInsets.symmetric(horizontal: 54),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12.5,
                  ),
                  decoration: BoxDecoration(
                    color: Palette.colorPrimary500,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const DefaultIcon(
                        IconPath.heart,
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "좋아요",
                        style: Fonts.body01Regular().copyWith(
                          color: Colors.white,
                        ),
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
