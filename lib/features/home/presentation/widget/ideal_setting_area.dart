import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IdealSettingArea extends StatelessWidget {
  const IdealSettingArea({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> idealTypes = [
      // 이상형 설정 박스 라벨 및 plceholder
      {"label": "선호 지역", "placeholder": "선호 지역을 선택해주세요"},
      {"label": "흡연", "placeholder": "흡연여부를 선택해주세요"},
      {"label": "음주", "placeholder": "음주여부를 선택해주세요"},
      {"label": "종교", "placeholder": "종교를 선택해주세요"},
      {"label": "취미", "placeholder": "취미를 선택해주세요"}
    ];
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: idealTypes.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // 각 박스별 라벨
                idealTypes[index]['label'],
                style: Fonts.body02Regular().copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Gap(8),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  showDialog(
                    // 박스 선택 시 모달 팝업
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      String label = idealTypes[index]['label'];
                      if (label == "선호 지역") {
                        return RegionIdealSettingDialog();
                      } else if (label == "흡연") {
                        return BaseIdealSettingDialog(
                            label: label,
                            options: ["비흡연", "금연 중", "전자담배", "가끔 피움", "매일 피움"]);
                      } else if (label == "음주") {
                        return BaseIdealSettingDialog(label: label, options: [
                          "전혀 마시지 않음",
                          "사회적 음주",
                          "가끔 마심",
                          "술자리를 즐김",
                          "금주 중"
                        ]);
                      } else if (label == "종교") {
                        return BaseIdealSettingDialog(
                            label: label,
                            options: ["무교", "기독교", "천주교", "불교", "기타"]);
                      } else {
                        return Container();
                      }
                    },
                  );
                },
                child: Container(
                  // 이상형 설정 박스
                  width: context.screenWidth,
                  margin: EdgeInsets.only(bottom: 24),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Palette.colorGrey100,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    idealTypes[index]['placeholder'],
                    style: Fonts.body02Regular().copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8D92A0),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class BaseIdealSettingDialog extends StatefulWidget {
  final String label;
  final List<String> options;
  const BaseIdealSettingDialog({
    super.key,
    required this.label,
    required this.options,
  });

  @override
  State<BaseIdealSettingDialog> createState() => _BaseIdealSettingDialogState();
}

class _BaseIdealSettingDialogState extends State<BaseIdealSettingDialog> {
  int selectedIndex = 2;
  final FixedExtentScrollController _controller =
      FixedExtentScrollController(initialItem: 2);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.only(top: 16, bottom: 24),
          width: context.screenWidth,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: DefaultIcon(IconPath.close)),
                      ],
                    ),
                    Text(
                      widget.label,
                      style: Fonts.header03().copyWith(
                        fontWeight: FontWeight.w600,
                        color: Palette.colorBlack,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      height: context.screenHeight * 0.2,
                      child: ListWheelScrollView(
                        controller: _controller,
                        itemExtent: context.screenHeight * 0.05,
                        onSelectedItemChanged: (value) {
                          setState(() {
                            selectedIndex = value;
                          });
                        },
                        children: widget.options.map((element) {
                          return Container(
                            width: context.screenWidth,
                            decoration: BoxDecoration(
                                color: widget.options[selectedIndex] == element
                                    ? Palette.colorGrey50
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                element,
                                style: widget.options[selectedIndex] == element
                                    ? Fonts.body01Regular().copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Palette.colorBlack)
                                    : Fonts.body01Regular().copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Palette.colorGrey600),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    DefaultElevatedButton(
                      onPressed: null,
                      onPrimary: context.palette.onPrimary,
                      primary: context.palette.primary,
                      child: Text("확인"),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RegionIdealSettingDialog extends StatelessWidget {
  const RegionIdealSettingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.only(top: 16, bottom: 24),
          width: context.screenWidth,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: DefaultIcon(IconPath.close)),
                      ],
                    ),
                    Text(
                      "지역",
                      style: Fonts.header03().copyWith(
                        fontWeight: FontWeight.w600,
                        color: Palette.colorBlack,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: DefaultElevatedButton(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            border: BorderSide(color: Palette.colorGrey200),
                            onPressed: null,
                            onPrimary: Palette.colorBlack,
                            primary: Colors.white,
                            child: Text(
                              "취소",
                              style: Fonts.body02Regular()
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Gap(8),
                        Expanded(
                          child: DefaultElevatedButton(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            onPressed: null,
                            primary: context.palette.primary,
                            child: Text("확인",
                                style: Fonts.body02Regular().copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
