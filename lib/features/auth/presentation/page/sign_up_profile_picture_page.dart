import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/overlay/tool_tip.dart';
import 'package:atwoz_app/app/widget/text/bullet_text.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/provider/photo_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_photo_guide_widget.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_profile_image_widget.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_step_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class SignUpProfilePicturePage extends ConsumerWidget {
  const SignUpProfilePicturePage({super.key});

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
                color: Palette.colorWhite, // 흰색 배경
                child: Padding(
                  padding:
                      EdgeInsets.all(context.screenWidth * 0.05), // 패딩 동적 설정
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthStepIndicatorWidget(
                        totalSteps: 4,
                        currentStep: 3,
                      ),
                      Gap(12.h),
                      Row(
                        children: [
                          Text(
                            '프로필 사진을 등록해주세요',
                            style: Fonts.header03()
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Gap(6),
                          ToolTip(
                            message: '대표 사진은 하단과 같이\n정면사진을 등록해주세요',
                            boldText: '정면사진',
                            textStyle: Fonts.body03Regular(
                              Palette.colorWhite,
                            ),
                          )
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
                          return AuthProfileImageWidget(
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
                        textStyle: Fonts.body03Regular(
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
                      AuthPhotoGuideWidget(
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
                      AuthPhotoGuideWidget(
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
                      DefaultElevatedButton(
                        onPressed: photos.any((photo) => photo != null) &&
                                photos[0] != null
                            ? () {
                                // TODO: 다음 페이지 라우팅
                                navigate(context, route: AppRoute.signUpTerms);
                              }
                            : null,
                        child: Text(
                          '다음',
                          style: Fonts.body01Medium(
                            photos.any((photo) => photo != null)
                                ? context.palette.onPrimary
                                : Palette.colorGrey400,
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
