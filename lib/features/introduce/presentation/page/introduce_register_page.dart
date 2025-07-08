import 'package:atwoz_app/app/widget/button/default_text_button.dart';
import 'package:atwoz_app/app/widget/dialogue/dialogue.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/view/default_app_bar.dart';
import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/features/introduce/domain/provider/self_introduce_notifier.dart';

class IntroduceRegisterPage extends ConsumerStatefulWidget {
  const IntroduceRegisterPage({super.key});

  @override
  IntroduceRegisterPageState createState() => IntroduceRegisterPageState();
}

class IntroduceRegisterPageState extends ConsumerState<IntroduceRegisterPage> {
  final TextEditingController _inputTitleController = TextEditingController();
  final TextEditingController _inputContentController = TextEditingController();
  bool _isFormValid = false;

  @override
  void initState() {
    super.initState();
    // 페이지 진입 시 상태 초기화
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(selfIntroduceRegisterNotifierProvider.notifier).resetState();
    });

    // 텍스트 필드 변경 감지
    _inputTitleController.addListener(_validateForm);
    _inputContentController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _inputTitleController.removeListener(_validateForm);
    _inputContentController.removeListener(_validateForm);
    super.dispose();
  }

  void _validateForm() {
    final title = _inputTitleController.text.trim();
    final content = _inputContentController.text.trim();

    final isValid = title.isNotEmpty && content.length >= 30;

    setState(() {
      _isFormValid = isValid;
    });
  }

  Future<void> _registerSelfIntroduction() async {
    final title = _inputTitleController.text.trim();
    final content = _inputContentController.text.trim();

    await ref
        .read(selfIntroduceRegisterNotifierProvider.notifier)
        .registerIntroduction(title, content);
  }

  @override
  Widget build(BuildContext context) {
    final registerState = ref.watch(selfIntroduceRegisterNotifierProvider);

    // 등록 성공 시 처리
    ref.listen<SelfIntroduceRegisterState>(
      selfIntroduceRegisterNotifierProvider,
      (previous, current) {
        if (current.isSuccess && !current.isLoading) {
          // 네비게이션 스택을 완전히 초기화하고 이동 (뒤로가기 방지)
          navigate(
            context,
            route: AppRoute.introduce,
            method: NavigationMethod.go,
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('셀프소개가 등록되었습니다.')),
          );
        } else if (current.error != null && previous?.error != current.error) {
          // 에러가 이전과 다를 때만 SnackBar 표시
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(current.error!)),
          );
        }
      },
    );

    return Scaffold(
      appBar: DefaultAppBar(
        title: '내 소개 등록하기',
        actions: [
          DefaultTextButton(
            primary: registerState.isLoading
                ? Palette.colorGrey300
                : (_isFormValid ? Palette.colorGrey500 : Palette.colorGrey300),
            child: registerState.isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('등록'),
            onPressed: () {
              if (registerState.isLoading || !_isFormValid) {
                // 버튼은 보이지만 클릭해도 아무것도 안함
                return;
              }
              CustomDialogue.showTwoChoiceDialogue(
                  context: context,
                  content: '등록 버튼을 누르면\n작성된 내용을 저장합니다.',
                  elevatedButtonText: '등록',
                  onElevatedButtonPressed: () {
                    _registerSelfIntroduction();
                  });
            },
          )
        ],
        leadingAction: () => {
          CustomDialogue.showTwoChoiceDialogue(
              context: context,
              content: '이 페이지를 벗어나면\n작성된 내용은 저장되지 않습니다.',
              onElevatedButtonPressed: () {
                navigate(
                  context,
                  route: AppRoute.introduce,
                  method: NavigationMethod.pushReplacement,
                );
              })
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(24),
          DefaultTextFormField(
            autofocus: true,
            controller: _inputTitleController,
            keyboardType: TextInputType.text,
            hintText: '제목을 입력해주세요',
            enabled: !registerState.isLoading,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: DefaultDivider()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DefaultTextFormField(
                    autofocus: false,
                    controller: _inputContentController,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: null,
                    expands: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                    maxLength: 1000,
                    showCharacterCount: true,
                    enabled: !registerState.isLoading,
                    hintText:
                        '나이 : 28세\n\n선호 관계 : 서로에게 좋은 자극을 주는 관계\n\n하는 일 : 패션 디자이너로 일하고 있어요\n\n성격 : 밝고 자존감 있는편!\n\n어필:\n대화 나누는걸 좋아해서 대화가 잘 통하는분이 좋아요\n연락 빈도수를 크게 신경쓰진 않지만\n대화가 끊길 정도가 아니면 괜찮다 생각해요!\n리액션 좋다면 최곱니다ㅎㅎ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Builder(
                    builder: (context) {
                      final currentLength =
                          _inputContentController.text.trim().length;
                      return Text(
                        '내용은 최소 30자 이상 입력해주세요 (현재 ${currentLength}자)',
                        style: Fonts.body03Regular(
                          currentLength >= 30
                              ? Palette.colorGrey500
                              : Colors.red,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
