import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/image/profile_image_widget.dart';
import 'package:atwoz_app/app/widget/overlay/tool_tip.dart';
import 'package:atwoz_app/app/widget/text/bullet_text.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_photo_guide_widget.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_step_indicator_widget.dart';
import 'package:atwoz_app/features/photo/domain/provider/photo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class SignUpProfilePicturePage extends ConsumerWidget {
  const SignUpProfilePicturePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<XFile?> photos = ref.watch(photoProvider);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const DefaultAppBar(title: '프로필 사진'),
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 100.h), // 버튼 영역 확보
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 흰색 배경으로 처리되는 상단 영역
                  Container(
                    color: Palette.colorWhite,
                    padding:
                        EdgeInsets.all(context.screenWidth * 0.05), // 패딩 동적 설정
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AuthStepIndicatorWidget(
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
                              textStyle:
                                  Fonts.body03Regular(Palette.colorWhite),
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
                          itemCount: photos.length,
                          itemBuilder: (context, index) {
                            return ProfileImageWidget(
                              imageFile: photos[index],
                              onPickImage: () async {
                                final picked = await ref
                                    .read(photoProvider.notifier)
                                    .pickPhoto(ImageSource.gallery);
                                if (picked != null) {
                                  ref
                                      .read(photoProvider.notifier)
                                      .updateState(index, picked);
                                }
                              },
                              // 사진 삭제
                              onRemoveImage: () {
                                ref
                                    .read(photoProvider.notifier)
                                    .updateState(index, null);
                              },
                              isRepresentative: index == 0,
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
                  // 회색 배경으로 처리되는 하단 영역
                  Container(
                    color: const Color(0xffF8F8F8),
                    padding: EdgeInsets.all(context.screenWidth * 0.05),
                    child: const Column(
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
                        Gap(24),
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
                              'text': '경직된 표정' // TODO(lgb): 문구 임의로 수정함
                            },
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // 하단 고정 버튼
            Positioned(
              left: 16.w,
              right: 16.w,
              bottom: 30.h,
              child: Material(
                borderRadius: BorderRadius.circular(16),
                child: DefaultElevatedButton(
                  onPressed:
                      photos.any((photo) => photo != null) && photos[0] != null
                          ? () => navigate(context, route: AppRoute.signUpTerms)
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
