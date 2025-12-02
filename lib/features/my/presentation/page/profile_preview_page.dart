import 'package:deepple_app/app/constants/constants.dart';
import 'package:deepple_app/core/extension/extended_context.dart';
import 'package:deepple_app/features/home/domain/model/cached_user_profile.dart';
import 'package:deepple_app/features/my/my.dart';
import 'package:deepple_app/features/profile/domain/common/enum.dart';
import 'package:deepple_app/features/profile/domain/common/model.dart';
import 'package:deepple_app/features/profile/presentation/widget/profile_self_introduction.dart';
import 'package:deepple_app/features/profile/presentation/widget/profile_sub_information.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

const double imageHeightRatio = 0.5; // 프로필 이미지 세로 비율
const double profileInfoTopRatio = 0.45; // 상단 기준 프로필 정보 위치
const double pageIndicatorTopRatio = 0.4; // 상단 기준 페이지 번호 위치
const double horizontalPadding = 16.0;

class ProfilePreviewPage extends StatefulWidget {
  final MyProfile profile;

  const ProfilePreviewPage({super.key, required this.profile});

  @override
  State<ProfilePreviewPage> createState() => _ProfilePreviewPageState();
}

class _ProfilePreviewPageState extends State<ProfilePreviewPage> {
  late final PageController _pageController;
  late final List<MyProfileImage> _validImages;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _validImages = widget.profile.profileImages
        .whereType<MyProfileImage>()
        .toList();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.colorWhite,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                _ImageSection(
                  pageController: _pageController,
                  images: _validImages,
                ),
                const Gap(40),
                _ProfileInfoCard(profile: widget.profile),
                const Gap(13),
                _InterviewsSection(interviews: widget.profile.interviews),
              ],
            ),
            _ProfileOverlay(profile: widget.profile),
          ],
        ),
      ),
    );
  }
}

/// 이미지 섹션 (배경 이미지 + 그라디언트 + 백 버튼)
class _ImageSection extends StatelessWidget {
  final PageController pageController;
  final List<MyProfileImage> images;

  const _ImageSection({required this.pageController, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * imageHeightRatio,
      child: Stack(
        children: [
          _ImagePageView(pageController: pageController, images: images),
          const _GradientOverlay(),
          const _BackButton(),
        ],
      ),
    );
  }
}

/// 이미지 PageView + 페이지 인디케이터
class _ImagePageView extends StatelessWidget {
  final PageController pageController;
  final List<MyProfileImage> images;

  const _ImagePageView({required this.pageController, required this.images});

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight * imageHeightRatio;

    return Stack(
      children: [
        Positioned.fill(
          child: PageView.builder(
            controller: pageController,
            itemCount: images.length,
            itemBuilder: (context, index) =>
                _ProfileImage(imageUrl: images[index].imageUrl, height: height),
          ),
        ),
        if (images.length > 1)
          _PageIndicator(
            pageController: pageController,
            totalPages: images.length,
          ),
      ],
    );
  }
}

/// 페이지 인디케이터
class _PageIndicator extends StatelessWidget {
  final PageController pageController;
  final int totalPages;

  const _PageIndicator({
    required this.pageController,
    required this.totalPages,
  });

  int _getCurrentPage() {
    if (!pageController.hasClients) {
      return pageController.initialPage;
    }
    return pageController.page?.round() ?? pageController.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.screenHeight * pageIndicatorTopRatio,
      right: horizontalPadding,
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          final currentPage = _getCurrentPage();
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '${currentPage + 1}/$totalPages',
              style: Fonts.body03Regular().copyWith(
                color: Palette.colorWhite,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        },
      ),
    );
  }
}

/// 그라디언트 오버레이
class _GradientOverlay extends StatelessWidget {
  const _GradientOverlay();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.colorWhite.withValues(alpha: 0),
              Palette.colorWhite.withValues(alpha: 1),
            ],
            stops: const [0.4, 1.0],
          ),
        ),
      ),
    );
  }
}

/// 뒤로 가기 버튼
class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      left: 8,
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: context.pop,
        color: Palette.colorBlack,
      ),
    );
  }
}

/// 프로필 정보 카드
class _ProfileInfoCard extends StatelessWidget {
  final MyProfile profile;

  const _ProfileInfoCard({required this.profile});

  List<SubInfoItem> _buildSubInfoItems() {
    return [
      SubInfoItem(
        iconPath: IconPath.smoking,
        label: profile.smokingStatus.label,
      ),
      SubInfoItem(
        iconPath: IconPath.wineglass,
        label: profile.drinkingStatus.label,
      ),
      SubInfoItem(iconPath: IconPath.school, label: profile.education.label),
      SubInfoItem(iconPath: IconPath.bless, label: profile.religion.label),
      SubInfoItem(iconPath: IconPath.ruler, label: '${profile.height}cm'),
      SubInfoItem(iconPath: IconPath.business, label: profile.job.label),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: horizontalPadding,
      ),
      margin: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
        borderRadius: Dimens.cardRadius,
        border: Border.all(width: 1.0, color: context.palette.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('프로필 정보', style: Fonts.body01Medium()),
          SubInformationContainer(items: _buildSubInfoItems()),
        ],
      ),
    );
  }
}

/// 인터뷰 섹션
class _InterviewsSection extends StatelessWidget {
  final List<InterviewInfo> interviews;

  const _InterviewsSection({required this.interviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 11,
        horizontal: horizontalPadding,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(color: Palette.colorGrey50),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: interviews.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 156 / 70,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => SelfIntroducitonDetailBottomSheet.open(
            context,
            introduction: SelfIntroductionData(
              about: InterviewCategory.personal,
              title: interviews[index].title,
              content: interviews[index].content,
            ),
          ),
          child: _InterviewCard(interview: interviews[index]),
        ),
      ),
    );
  }
}

/// 프로필 오버레이 (이름, MBTI, 취미 등)
class _ProfileOverlay extends StatelessWidget {
  final MyProfile profile;

  const _ProfileOverlay({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.screenHeight * profileInfoTopRatio,
      left: horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${profile.nickname}, ${profile.age}',
            style: Fonts.header02().copyWith(
              color: Palette.colorBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(6),
          Text(
            '${profile.mbti} ・ ${profile.region}',
            style: Fonts.body02Medium().copyWith(
              color: Palette.colorGrey600,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Gap(6),
          _HobbyBadgeList(hobbies: profile.hobbies),
        ],
      ),
    );
  }
}

/// 취미 뱃지 리스트
class _HobbyBadgeList extends StatelessWidget {
  final List<Hobby> hobbies;

  const _HobbyBadgeList({required this.hobbies});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: hobbies.map((hobby) => _HobbyBadge(hobby.label)).toList(),
    );
  }
}

/// 프로필 이미지 위젯
class _ProfileImage extends StatelessWidget {
  final String imageUrl;
  final double height;

  const _ProfileImage({required this.imageUrl, required this.height});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: height,
      imageBuilder: (context, imageProvider) => Image(
        image: imageProvider,
        fit: BoxFit.cover,
        width: double.infinity,
        height: height,
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: Container(
          width: double.infinity,
          height: height,
          color: Colors.grey.shade300,
        ),
      ),
      errorWidget: (context, url, error) => Center(
        child: Text(
          '프로필 이미지 불러오기 실패',
          style: Fonts.body02Medium().copyWith(color: Palette.colorGrey600),
        ),
      ),
    );
  }
}

/// 인터뷰 카드 위젯
class _InterviewCard extends StatelessWidget {
  final InterviewInfo interview;

  const _InterviewCard({required this.interview});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            interview.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Fonts.body02Medium().copyWith(
              color: Palette.colorGrey800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

/// 취미 뱃지 위젯
class _HobbyBadge extends StatelessWidget {
  final String name;

  const _HobbyBadge(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6.0),
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
      decoration: BoxDecoration(
        color: Palette.colorPrimary100,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Text(name, style: Fonts.body03Regular(Palette.colorPrimary600)),
    );
  }
}
