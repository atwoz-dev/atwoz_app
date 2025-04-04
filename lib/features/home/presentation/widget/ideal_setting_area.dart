import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const List<String> _hobbies = [
  // TODO: api 연동 시 제거
  '국내여행/해외여행',
  '공연/전시회관람',
  '웹툰/만화',
  '드라마/예능보기',
  'PC/모바일게임',
  '애니메이션',
  '골프',
  '연극/영화',
  '글쓰기',
  '보드게임',
  '사진촬영',
  '노래',
  '배드민턴/테니스',
  '댄스',
  '드라이브',
  '등산/클라이밍',
  '산책',
  '맛집탐방',
  '쇼핑',
  '스키/스노우보드',
  '악기연주',
  '와인',
  '운동/헬스',
  '요가/필라테스',
  '요리',
  '인테리어',
  '자전거',
  '캠핑',
  '기타'
];

const List<String> _regions = [
  '서울',
  '인천',
  '부산',
  '대전',
  '대구',
  '광주',
  '울산',
  '세종',
  '제주',
  '경기도',
  '경상남도',
  '강원도',
  '경상북도',
  '충청북도',
  '충청남도',
  '전라남도',
  '전라북도'
];

const List<Map<String, dynamic>> _idealTypes = [
  // 이상형 설정 박스 라벨 및 plceholder
  {"label": "선호 지역", "placeholder": "선호 지역을 선택해주세요"},
  {"label": "흡연", "placeholder": "흡연여부를 선택해주세요"},
  {"label": "음주", "placeholder": "음주여부를 선택해주세요"},
  {"label": "종교", "placeholder": "종교를 선택해주세요"},
  {"label": "취미", "placeholder": "취미를 선택해주세요"}
];

class IdealSettingArea extends StatelessWidget {
  const IdealSettingArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ...List.generate(
            _idealTypes.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 각 박스별 라벨
                  _idealTypes[index]['label'],
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
                        String label = _idealTypes[index]['label'];
                        if (label == "선호 지역") {
                          return _MultiBtnSelectDialog(
                              title: '지역', btnNames: _regions, selectNum: 2);
                        } else if (label == "흡연") {
                          return _BaseIdealSettingDialog(
                              label: label,
                              options: [
                                "비흡연",
                                "금연 중",
                                "전자담배",
                                "가끔 피움",
                                "매일 피움"
                              ]);
                        } else if (label == "음주") {
                          return _BaseIdealSettingDialog(
                              label: label,
                              options: [
                                "전혀 마시지 않음",
                                "사회적 음주",
                                "가끔 마심",
                                "술자리를 즐김",
                                "금주 중"
                              ]);
                        } else if (label == "종교") {
                          return _BaseIdealSettingDialog(
                              label: label,
                              options: ["무교", "기독교", "천주교", "불교", "기타"]);
                        } else {
                          return _MultiBtnSelectDialog(
                            title: '취미',
                            btnNames: _hobbies,
                            selectNum: 3,
                          );
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
                      _idealTypes[index]['placeholder'],
                      style: Fonts.body02Regular().copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8D92A0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BaseIdealSettingDialog extends StatefulWidget {
  final String label;
  final List<String> options;
  const _BaseIdealSettingDialog({
    required this.label,
    required this.options,
  });

  @override
  State<_BaseIdealSettingDialog> createState() =>
      _BaseIdealSettingDialogState();
}

class _BaseIdealSettingDialogState extends State<_BaseIdealSettingDialog> {
  int _selectedIndex = 2; // 초기 인덱스 중앙값으로 설정
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
                            _selectedIndex = value;
                          });
                        },
                        children: widget.options.map((element) {
                          return Container(
                            width: context.screenWidth,
                            decoration: BoxDecoration(
                                color: widget.options[_selectedIndex] == element
                                    ? Palette.colorGrey50
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                element,
                                style: widget.options[_selectedIndex] == element
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
                      padding: EdgeInsets.symmetric(vertical: 8),
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

class _MultiBtnSelectDialog extends StatefulWidget {
  final String title;
  final List<String> btnNames;
  final int selectNum;
  const _MultiBtnSelectDialog(
      {required this.btnNames, required this.selectNum, required this.title});

  @override
  State<_MultiBtnSelectDialog> createState() => _MultiBtnSelectDialogState();
}

class _MultiBtnSelectDialogState extends State<_MultiBtnSelectDialog> {
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
                      widget.title,
                      style: Fonts.header03().copyWith(
                        fontWeight: FontWeight.w600,
                        color: Palette.colorBlack,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '${widget.selectNum}개까지 중복 선택이 가능해요',
                      style: Fonts.body02Medium().copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8D92A0),
                      ),
                    ),
                    Container(
                      height: context.screenHeight * 0.26,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: SingleChildScrollView(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 8.0, // 가로 간격
                          runSpacing: 8.0, // 세로 간격
                          children: widget.btnNames.map((tag) {
                            return Container(
                              margin: EdgeInsets.all(4),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 9),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffEDEEF0)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(tag,
                                  style:
                                      TextStyle(color: Palette.colorGrey800)),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    DefaultElevatedButton(
                      padding: EdgeInsets.symmetric(vertical: 8),
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
