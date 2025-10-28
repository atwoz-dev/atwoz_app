import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/route_arguments.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:atwoz_app/features/home/presentation/provider/home_notifier.dart';
import 'package:atwoz_app/features/home/presentation/widget/widget.dart';
import 'package:atwoz_app/features/profile/presentation/widget/widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

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
      homeProvider.select(
        (value) => value.whenData((data) => data.recommendedProfiles),
      ),
    ); // 소개받은 프로필 정보들
    final homeNotifier = ref.read(homeProvider.notifier);

    return homeStateAsync.when(
      data: (profiles) {
        if (profiles == null) {
          // 로딩 시 보여주는 빈 박스
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.white,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Palette.colorGrey50,
              ),
              height: context.screenHeight * 0.41,
            ),
          );
        }

        if (profiles.isEmpty) {
          return const _EmptyProfileCard(); // 빈 리스트인 경우
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 높이가 동적으로 변하는 컨테이너
            AspectRatio(
              aspectRatio: 1.1,
              child: PageView.builder(
                itemCount: profiles.length,
                onPageChanged: (index) => setState(
                  () => _currentPage = index,
                ),
                itemBuilder: (context, index) {
                  final profile = profiles[index];
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => navigate(
                      context,
                      route: AppRoute.profile,
                      extra: ProfileDetailArguments(userId: profile.memberId),
                    ),
                    child: _ProfileCardWidget(
                      profile: profile,
                      onTapFavorite: () async {
                        if (profile.favoriteType != null) return;

                        final favoriteType =
                            await FavoriteTypeSelectDialog.open(
                          context,
                          userId: profile.memberId,
                          favoriteType: profile.favoriteType,
                        );
                        if (favoriteType == null) return;

                        await homeNotifier.setFavoriteType(
                          profile.memberId,
                          favoriteType,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            const Gap(16),
            _PageCardIndicator(
              totalPages: profiles.length,
              currentPage: _currentPage,
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
        return const CircularProgressIndicator();
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
      height: context.screenHeight * 0.41,
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      decoration: BoxDecoration(
        // 카드 색상 및 둥근모서리 설정
        color: Palette.colorGrey50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
    required this.onTapFavorite,
  });

  final IntroducedProfile profile;
  final VoidCallback onTapFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
      ),
      decoration: BoxDecoration(
        // 카드 색상 및 둥근모서리 설정
        color: Palette.colorGrey50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(20),
          Stack(
            children: [
              SizedBox(
                // 상단 프로필 사진
                width: 100,
                height: 100,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: profile.profileImageUrl,
                    fit: BoxFit.cover,
                  ), // 추후 api 연동 시 NetworkImage로 변경
                ),
              ),
              const BlurCoverWidget()
            ],
          ),
          const Gap(16),
          Column(
            mainAxisSize: MainAxisSize.min,
            // 하단 프로필 정보
            children: [
              Container(
                // 해시태그 리스트 뷰
                width: double.infinity,
                height: 18,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: HashtagWrap(
                  tags: profile.tags,
                  isCenter: true,
                ),
              ),
              const Gap(8),
              Text(
                profile.interviewContent,
                style: Fonts.body02Medium().copyWith(
                  fontWeight: FontWeight.w400,
                  color: Palette.colorGrey600,
                  height: 1.5,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Gap(24),
              FavoriteButton(
                isFavoriteUser: profile.favoriteType != null,
                onTap: onTapFavorite,
                label: '좋아요',
              ),
              const Gap(20),
            ],
          )
        ],
      ),
    );
  }
}

class _PageCardIndicator extends StatelessWidget {
  final int totalPages;
  final int currentPage;
  const _PageCardIndicator(
      {required this.totalPages, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      // 페이지 번호 상태 바
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: currentPage == index
                ? Palette.colorPrimary500
                : Palette.colorGrey100,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}
