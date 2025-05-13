import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ServiceWithdrawReasonPage extends StatefulWidget {
  const ServiceWithdrawReasonPage({super.key});

  @override
  State<ServiceWithdrawReasonPage> createState() =>
      _ServiceWithdrawReasonPageState();
}

class _ServiceWithdrawReasonPageState extends State<ServiceWithdrawReasonPage> {
  final List<String> reasons = [
    "다른 인연이 생겼어요",
    "마음에 드는 이상형이 없어요",
    "과금 유도가 너무 심한거 같아요",
    "서비스 이용이 너무 불편해요",
    "상대에게 호감이나 메세지가 안와요",
    "이유없음",
  ];
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "서비스 탈퇴",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "서비스를 탈퇴 하시는 이유를 알려주세요.",
                style: Fonts.body01Medium(),
              ),
              const Gap(16),
              Text(
                "서비스 개선에 많은 도움이 됩니다",
                style: Fonts.body02Medium().copyWith(
                  color: const Color(0xff7E7E7E),
                ),
              ),
              const Gap(24),
              ListView.separated(
                shrinkWrap: true,
                itemCount: reasons.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 19,
                      ),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Palette.colorPrimary500.withValues(alpha: 0.1)
                            : Colors.white,
                        border: Border.all(
                          color: selectedIndex == index
                              ? Palette.colorPrimary500.withValues(alpha: 0.3)
                              : const Color(0xffE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        reasons[index],
                        style: Fonts.body02Medium().copyWith(
                          color: selectedIndex == index
                              ? Palette.colorPrimary500
                              : const Color(0xff515151),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
              ),
              const Spacer(),
              DefaultElevatedButton(
                onPressed: () {
                  if (selectedIndex != null) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const TestDialog();
                      },
                    );
                  }
                },
                primary: selectedIndex != null
                    ? Palette.colorPrimary500
                    : const Color(0xffE9EBEC), //배경색
                child: Text(
                  "탈퇴하기",
                  style: Fonts.body01Medium().copyWith(
                      fontWeight: FontWeight.w600,
                      color: selectedIndex != null
                          ? Colors.white
                          : const Color(0xffB3B7C0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TestDialog extends StatelessWidget {
  const TestDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(shape: BoxShape.rectangle),
            child: Column(
              children: [
                const Gap(32),
                Text(
                  "서비스 탈퇴",
                  style: Fonts.header02().copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(16),
                Text(
                  "탈퇴 후 24시간은 재가입이 불가능합니다.\n정말로 서비스를 탈퇴하시겠습니까?",
                  style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff515151),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(24),
                Row(
                  children: [
                    Expanded(
                      child: DefaultElevatedButton(
                        expandedWidth: true,
                        onPressed: () {
                          pop(context);
                        },
                        primary: Colors.white,
                        border: const BorderSide(color: Color(0xffE1E1E1)),
                        child: Text(
                          "취소",
                          style: Fonts.body02Medium().copyWith(
                              fontWeight: FontWeight.w400,
                              color: Palette.colorBlack),
                        ),
                      ),
                    ),
                    const Gap(8),
                    Expanded(
                      child: DefaultElevatedButton(
                        onPressed: () {
                          pop(context, true);
                        },
                        primary: Palette.colorPrimary500,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "확인",
                              style: Fonts.body02Medium().copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
