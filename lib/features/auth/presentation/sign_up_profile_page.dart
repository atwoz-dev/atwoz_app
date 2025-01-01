import 'package:atwoz_app/core/theme/theme.dart';
import 'package:atwoz_app/core/widgets/button/app_elevated_button.dart';
import 'package:atwoz_app/core/widgets/overlay/app_tooltip.dart';
import 'package:atwoz_app/core/widgets/text/bullet_text.dart';
import 'package:atwoz_app/core/widgets/view/default_appbar.dart';
import 'package:atwoz_app/data/sources/local/photo_state.dart';
import 'package:atwoz_app/features/auth/widgets/photo_guild_widget.dart';
import 'package:atwoz_app/features/auth/widgets/profile_image.dart';
import 'package:atwoz_app/features/auth/widgets/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class SignUpProfilePage extends ConsumerWidget {
  const SignUpProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<XFile?> photos = ref.watch(photoProvider);

    // 초기 상태에서 photos 리스트를 6개로 고정
    final List<XFile?> paddedPhotos = List<XFile?>.from(photos)
      ..addAll(List<XFile?>.filled(6 - photos.length, null));

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: DefaultAppBar(
          title: '프로필 사진',
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 흰색 배경으로 처리되는 상단 영역
              Container(
                color: AppColors.colorWhite, // 흰색 배경
                child: Padding(
                  padding:
                      EdgeInsets.all(context.screenWidth * 0.05), // 패딩 동적 설정
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StepIndicator(
                        totalSteps: 4,
                        currentStep: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            '프로필 사진을 등록해주세요',
                            style: AppStyles.header03()
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Gap(6),
                          AppTooltip(
                            message: '최대 6개의 사진을 등록할 수 있습니다.',
                          ),
                        ],
                      ),
                      const Gap(24),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: paddedPhotos.length,
                        itemBuilder: (context, index) {
                          return ProfileImageWidget(
                            imageFile: paddedPhotos[index],
                            onPickImage: () async {
                              final pickedPhoto = await ref
                                  .read(photoProvider.notifier)
                                  .pickPhoto(ImageSource.gallery);
                              if (pickedPhoto != null) {
                                final updatedPhotos = List<XFile?>.from(photos);
                                updatedPhotos[index] = pickedPhoto;

                                // 사진 업로드
                                await ref
                                    .read(photoProvider.notifier)
                                    .updatePhoto(index, pickedPhoto);
                              }
                            },
                            // 사진 삭제
                            onRemoveImage: () async => await ref
                                .read(photoProvider.notifier)
                                .updatePhoto(index, null),
                            isRepresentative: index == 0, // 첫 번째 사진만 대표로 설정
                          );
                        },
                      ),
                      BulletText(
                        texts: [
                          '본인의 장점을 어필할 수 있는 가장 멋진 사진으로 올려주세요',
                          '아래의 가이드를 참고하시면 매칭 확률이 올라가요',
                        ],
                        textStyle: AppStyles.body03Regular(
                          const Color.fromRGBO(155, 160, 171, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // 회색 배경으로 처리되는 하단 영역
              Container(
                color: const Color(0xffF8F8F8),
                child: Padding(
                  padding: EdgeInsets.all(context.screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PhotoGuideWidget(
                        title: '이성에게 좋은 인상을 주는 사진',
                        imagePathsWithText: [
                          {
                            'image': 'assets/images/good_pic1.png',
                            'text': '자연스럽게 웃는 사진'
                          },
                          {
                            'image': 'assets/images/good_pic2.png',
                            'text': '이목구비가 선명한 사진'
                          },
                          {
                            'image': 'assets/images/good_pic3.png',
                            'text': '활동적인 사진'
                          },
                          {
                            'image': 'assets/images/good_pic4.png',
                            'text': '분위기 있는 전신사진'
                          },
                        ],
                      ),
                      const Gap(24),
                      PhotoGuideWidget(
                        title: '이성에게 부정적인 인상을 주는 사진',
                        imagePathsWithText: [
                          {
                            'image': 'assets/images/bad_pic1.png',
                            'text': '보정이 과도한 사진'
                          },
                          {
                            'image': 'assets/images/bad_pic2.png',
                            'text': '2인 이상의 단체 사진'
                          },
                          {
                            'image': 'assets/images/bad_pic3.png',
                            'text': 'AI 프로필'
                          },
                          {
                            'image': 'assets/images/bad_pic4.png',
                            'text': '얼굴이 가려진 사진'
                          },
                          {
                            'image': 'assets/images/bad_pic5.png',
                            'text': '마스크를 착용한 사진'
                          },
                          {
                            'image': 'assets/images/bad_pic6.png',
                            'text': '사진에 대한 설명'
                          },
                        ],
                      ),
                      AppElevatedButton(
                        onPressed: photos.any((photo) => photo != null) &&
                                photos[0] != null
                            ? () {
                                // TODO: 다음 페이지 라우팅
                                print('클릭');
                              }
                            : null,
                        child: Text(
                          '다음',
                          style: AppStyles.body01Medium(
                            photos.any((photo) => photo != null)
                                ? context.appColors.onPrimary
                                : AppColors.colorGrey400,
                          ).copyWith(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
