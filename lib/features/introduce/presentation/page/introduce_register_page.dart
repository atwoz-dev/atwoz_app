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

class IntroduceRegisterPage extends ConsumerStatefulWidget {
  const IntroduceRegisterPage({super.key});

  @override
  IntroduceRegisterPageState createState() => IntroduceRegisterPageState();
}

class IntroduceRegisterPageState extends ConsumerState<IntroduceRegisterPage> {
  final TextEditingController _inputTitleController = TextEditingController();
  final TextEditingController _inputContentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '내 소개 등록하기',
        actions: [
          DefaultTextButton(
            primary: Palette.colorGrey500,
            child: Text('등록'),
            onPressed: () {
              CustomDialogue.showTwoChoiceDialogue(
                  context: context,
                  content: '등록 버튼을 누르면\n작성된 내용을 저장합니다.',
                  elevatedButtonText: '등록',
                  onElevatedButtonPressed: () {
                    //TODO: 작성한 내용 저장
                  });
            },
          )
        ],
        leadingAction: (context) => {
          CustomDialogue.showTwoChoiceDialogue(
              context: context,
              content: '이 페이지를 벗어나면\n작성된 내용은 저장되지 않습니다.',
              onElevatedButtonPressed: () {
                navigate(
                  context,
                  route: AppRoute.introduce,
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
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: DefaultDivider()),
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
              hintText:
                  '나이 : 28세\n\n선호 관계 : 서로에게 좋은 자극을 주는 관계\n\n하는 일 : 패션 디자이너로 일하고 있어요\n\n성격 : 밝고 자존감 있는편!\n\n어필:\n대화 나누는걸 좋아해서 대화가 잘 통하는분이 좋아요\n연락 빈도수를 크게 신경쓰진 않지만\n대화가 끊길 정도가 아니면 괜찮다 생각해요!\n리액션 좋다면 최곱니다ㅎㅎ',
            ),
          )
        ],
      ),
    );
  }
}
