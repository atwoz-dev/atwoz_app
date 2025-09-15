import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/text/title_text.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/auth/data/usecase/auth_usecase_impl.dart';
import 'package:atwoz_app/features/auth/domain/provider/sign_up_process_provider.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_step_indicator_widget.dart';
import 'package:atwoz_app/features/photo/domain/provider/photo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class AuthSignUpTermsPage extends ConsumerStatefulWidget {
  const AuthSignUpTermsPage({super.key});

  @override
  AuthSignUpTermsPageState createState() => AuthSignUpTermsPageState();
}

class AuthSignUpTermsPageState
    extends AppBaseConsumerStatefulPageState<AuthSignUpTermsPage> {
  List<bool> _isChecked = List.generate(3, (_) => false);
  bool get isButtonEnabled => _isChecked[1] && _isChecked[2];

  void _updateCheckState(int index) {
    setState(() {
      // 모두 동의 체크박스일 경우
      if (index == 0) {
        bool isAllChecked = !_isChecked.every((element) => element);
        _isChecked = List.generate(3, (index) => isAllChecked);
      } else {
        _isChecked[index] = !_isChecked[index];
        _isChecked[0] = _isChecked.getRange(1, 3).every((element) => element);
      }
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: '약관 동의',
      ),
      body: Padding(
        padding: EdgeInsets.all(context.screenWidth * 0.05), // 패딩 동적 설정
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const AuthStepIndicatorWidget(
                    totalSteps: 4,
                    currentStep: 4,
                  ),
                  Gap(16.h),
                  const TitleText(title: '서비스 이용 및 가입을 위해 \n약관에 동의해주세요'),
                  Gap(28.h),
                  ..._renderCheckList(),
                ])),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.05),
              child: DefaultElevatedButton(
                onPressed: isButtonEnabled
                    ? () async {
                        // 프로필 이미지 등록
                        final List<XFile?> photos = ref.read(photoProvider);
                        await ref
                            .read(authUsecaseProvider)
                            .uploadProfilePhotos(photos);

                        // 프로필 등록
                        final authUseCase = ref.read(authUsecaseProvider);
                        final profileState = ref.read(signUpProcessProvider);
                        final profileData =
                            profileState.toProfileUploadRequest(); // DTO 변환
                        await authUseCase.uploadProfile(profileData);

                        // 홈 화면으로 이동
                        navigate(
                          context,
                          route: AppRoute.mainTab,
                          method: NavigationMethod.go,
                        );
                      }
                    : null,
                child: Text(
                  '회원가입 완료',
                  style: Fonts.body01Medium(isButtonEnabled
                          ? palette.onPrimary
                          : Palette.colorGrey400)
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _renderCheckList() {
    List<String> labels = [
      '전체 동의하기',
      '(필수) 이용약관 동의',
      '(필수) 개인정보 처리방침 동의',
    ];

    List<Widget> list = [
      renderContainer(_isChecked[0], labels[0], 0, () => _updateCheckState(0)),
    ];

    list.addAll(List.generate(
        2,
        (index) => renderContainer(_isChecked[index + 1], labels[index + 1],
            index + 1, () => _updateCheckState(index + 1))));

    return list;
  }

  Widget renderContainer(bool checked, String text, index, VoidCallback onTap) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: index != 0
                  ? Palette.colorWhite
                  : checked
                      ? Palette.colorPrimary100
                      : Palette.colorGrey100,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.only(
                top: 14.0, bottom: 14.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  children: [
                    index == 0
                        ? DefaultIcon(
                            checked ? IconPath.checkFill : IconPath.check,
                            size: 24,
                          )
                        : DefaultIcon(
                            IconPath.check,
                            colorFilter: ColorFilter.mode(
                                checked
                                    ? Palette.colorPrimary500.withOpacity(0.6)
                                    : Palette.colorGrey300.withOpacity(0.6),
                                BlendMode.srcIn),
                            size: 24,
                          ),
                    const SizedBox(width: 8),
                    Text(text,
                        style: Fonts.body01Regular(index == 0
                            ? Palette.colorGrey900
                            : Palette.colorGrey700)),
                  ],
                )),
                Container(
                    child: index != 0
                        ? GestureDetector(
                            onTap: () {
                              // TODO: 이용약관, 개인정보 처리방침 화면 나오면 연결 필요함
                              navigate(
                                context,
                                route: index != 1
                                    ? AppRoute.signUpProfile
                                    : AppRoute.signUp,
                              );
                            },
                            child: Text('보기',
                                style:
                                    Fonts.body01Regular(Palette.colorGrey900)))
                        : null)
              ],
            ),
          ),
        ));
  }
}
