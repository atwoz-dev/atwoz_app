import 'package:atwoz_app/app/constants/region_data.dart';
import 'package:atwoz_app/app/provider/provider.dart';
import 'package:atwoz_app/app/widget/image/rounded_image.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/home/presentation/widget/category/heart_shortage_dialog.dart';
import 'package:atwoz_app/features/introduce/domain/provider/introduce_detail_notifier.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/profile_exchange_dialog.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:atwoz_app/features/profile/presentation/widget/favorite_type_select_dialog.dart';
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

// 상대방 프로필 조회
// yes -> 프로필 보여줘
// no -> 셀프소개 상세 조회 시작

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
    final notifier = ref.read(
      introduceDetailProvider(introduceId: widget.introduceId).notifier,
    );

    final myGender = ref.read(globalProvider).profile.gender;

    return Scaffold(
      appBar: const DefaultAppBar(title: '상대방 정보'),
      body: stateAsync.when(
        data: (data) {
          if (data.introduceDetail == null) {
            // TODO: 에러 처리
            showToastMessage("상대방 정보를 불러오는데 실패했습니다.");
            return const SizedBox.shrink();
          }

          // 셀프소개 상세
          final introduceDetail = data.introduceDetail!;
          final nickname = introduceDetail.memberBasicInfo.nickname;
          final age = introduceDetail.memberBasicInfo.age;
          final mbti = introduceDetail.memberBasicInfo.mbti;
          final location = addressData.getLocationString(
            introduceDetail.memberBasicInfo.city,
            introduceDetail.memberBasicInfo.district,
          );
          final hobbies = introduceDetail.memberBasicInfo.hobbies
              .map(
                (hobby) => Hobby.parse(hobby).label,
              )
              .toList();
          final title = introduceDetail.title;
          final content = introduceDetail.content;
          final imageUrl = introduceDetail.memberBasicInfo.profileImageUrl;
          final memberId = introduceDetail.memberBasicInfo.memberId;
          final like = introduceDetail.like;
          final gender = introduceDetail.memberBasicInfo.gender;

          // 하트 갯수
          final heartBalance = ref
              .read(globalProvider)
              .heartBalance
              .totalHeartBalance;

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
                        Expanded(
                          child: Column(
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
                                style: Fonts.body03Regular(
                                  Palette.colorGrey500,
                                ),
                              ),
                              const Gap(6),
                              SizedBox(height: 2.h),
                              DefaultChip(titleList: hobbies),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(16),
                    if (myGender != gender)
                      Row(
                        children: [
                          introduceDetail.profileExchangeStatus ==
                                  ProfileExchangeStatus.none
                              ? _InteractionButton("프로필 교환하기", () {
                                  // TODO: dialog 오픈할 때 "보유하트조회"를 해야할까요??
                                  ProfileExchangeDialog.open(
                                    context,
                                    myHeart: heartBalance,
                                    onSendExchange: () {
                                      // 프로필 교환 보내기
                                      notifier.requestProfileExchange(
                                        memberId,
                                      );
                                      Navigator.of(context).pop();
                                    },
                                    onNotEnoughHeart: () {
                                      Navigator.of(context).pop();
                                      showDialog(
                                        context: context,
                                        builder: (_) => HeartShortageDialog(
                                          heartBalance: heartBalance,
                                        ),
                                      );
                                    },
                                  );
                                })
                              : _WaitingButton("상대방의 수락을 기다리고 있어요", () {}),
                          const Gap(8.0),
                          SizedBox(
                            width: 44.0,
                            child: DefaultElevatedButton(
                              padding: const EdgeInsets.all(10.0),
                              primary: Palette.colorGrey100,
                              onPressed: () async {
                                final favoriteType =
                                    await FavoriteTypeSelectDialog.open(
                                      context,
                                      userId: memberId,
                                      favoriteType: FavoriteType.interested,
                                    );
                                if (favoriteType == null) return;

                                try {
                                  await notifier.setFavoriteType(
                                    memberId: memberId,
                                    type: favoriteType,
                                  );
                                } on NetworkException catch (e) {
                                  if (e.status == 400) {
                                    // TODO: 에러 문구
                                    showToastMessage('이미 좋아요가 존재합니다.');
                                  }
                                } catch (e) {
                                  // TODO: 에러 문구
                                  showToastMessage('에러 발생');
                                }

                                // memberinfo 업데이트 필요
                                await notifier.getIntroduceDetail();
                              },
                              child: DefaultIcon(
                                like == null
                                    ? IconPath.heart
                                    : IconPath.heartFill,
                              ),
                            ),
                          ),
                        ],
                      ),
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
        error: (error, stackTrace) {
          return Center(child: Text('Error: $error'));
        },
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _InteractionButton extends ConsumerWidget {
  final String text;
  final VoidCallback onPressed;

  const _InteractionButton(
    this.text,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: DefaultElevatedButton(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Text(text, style: Fonts.body02Medium(Colors.white))],
        ),
      ),
    );
  }
}

class _WaitingButton extends ConsumerWidget {
  final String text;
  final VoidCallback onPressed;

  const _WaitingButton(
    this.text,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: DefaultElevatedButton(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        onPressed: null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Text(text, style: Fonts.body02Medium(Colors.white))],
        ),
      ),
    );
  }
}
