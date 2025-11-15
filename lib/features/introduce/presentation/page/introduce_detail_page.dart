import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/widget/image/rounded_image.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_detail_notifier.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/widget/chip/default_chip.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IntroduceDetailPage extends ConsumerStatefulWidget {
  final int introduceId;
  const IntroduceDetailPage({super.key, required this.introduceId});

  @override
  IntroduceDetailPageState createState() => IntroduceDetailPageState();
}

class IntroduceDetailPageState
    extends AppBaseConsumerStatefulPageState<IntroduceDetailPage> {
  @override
  Widget buildPage(BuildContext context) {
    final double horizontalPadding = screenWidth * 0.05;
    final EdgeInsets contentPadding = EdgeInsets.symmetric(
      horizontal: horizontalPadding,
    );

    final stateAsync = ref.watch(
      introduceDetailProvider(introduceId: widget.introduceId),
    );

    return Scaffold(
      appBar: const DefaultAppBar(title: '상대방 정보'),
      body: stateAsync.when(
        data: (data) {
          if (data.introduceDetail == null) {
            // TODO: 에러처리
            return const SizedBox.shrink();
          }
          final introduceDetail = data.introduceDetail!;
          final nickname = introduceDetail.memberBasicInfo.nickname;
          final age = introduceDetail.memberBasicInfo.age;
          final mbti = introduceDetail.memberBasicInfo.mbti;
          final location = addressData.getLocationString(
            introduceDetail.memberBasicInfo.city,
            introduceDetail.memberBasicInfo.district,
          );
          final hobbies = introduceDetail.memberBasicInfo.hobbies;
          final title = introduceDetail.title;
          final content = introduceDetail.content;
          final imageUrl = introduceDetail.memberBasicInfo.profileImageUrl;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RoundedImage(imageURL: imageUrl, size: 100),

                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$nickname, $age",
                              style: Fonts.header02(
                                Palette.colorGrey900,
                              ).copyWith(fontWeight: FontWeight.w700),
                            ),
                            const Gap(6),
                            Text(
                              '$mbti · $location',
                              style: Fonts.body03Regular(Palette.colorGrey500),
                            ),
                            const Gap(6),
                            SizedBox(height: 2.h),
                            DefaultChip(titleList: hobbies),
                          ],
                        ),
                      ],
                    ),
                    const Gap(16),
                    _InteractionButtons(introduceDetail.profileExchangeStatus),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.colorGrey100,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: 12.0,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Palette.colorWhite,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16.0),
                            bottom: Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                            vertical: 20.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: Fonts.header03(
                                  Palette.colorGrey900,
                                ).copyWith(fontWeight: FontWeight.w700),
                              ),
                              const Gap(12),
                              Text(content),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) => const SizedBox.shrink(),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _InteractionButtons extends StatelessWidget {
  final String? status;
  const _InteractionButtons(this.status);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        status == null ? exchangeButton() : talkButton(),
        const Gap(8.0),
        SizedBox(
          width: 44.0,
          child: DefaultElevatedButton(
            padding: const EdgeInsets.all(10.0),
            primary: Palette.colorGrey100,
            onPressed: () {},
            child: const DefaultIcon(IconPath.heart),
          ),
        ),
      ],
    );
  }

  Widget exchangeButton() {
    return Expanded(
      child: DefaultElevatedButton(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Text("프로필 교환하기", style: Fonts.body02Medium(Colors.white))],
        ),
        onPressed: () => {},
      ),
    );
  }

  Widget talkButton() {
    return Expanded(
      child: DefaultElevatedButton(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const DefaultIcon(IconPath.letter),
            const Gap(8.0),
            Text("대화 해볼래요", style: Fonts.body02Medium(Colors.white)),
          ],
        ),
        onPressed: () => {},
      ),
    );
  }
}
