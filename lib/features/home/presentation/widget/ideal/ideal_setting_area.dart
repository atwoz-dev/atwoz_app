import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:atwoz_app/features/home/presentation/widget/ideal/ideal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  // TODO: 추후 religion_data로 사용
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

class IdealSettingArea extends ConsumerWidget {
  const IdealSettingArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idealTypeStatus = ref.watch(idealTypeNotifierProvider).idealType;

    final List<IdealTypeSettingItem> idealTypes = [
      IdealTypeSettingItem(
        label: "지역",
        placeholder: idealTypeStatus.regions.isNotEmpty
            ? idealTypeStatus.regions.join(', ')
            : "선호 지역을 선택해주세요",
        options: _regions,
        type: IdealTypeDialogType.multi,
        maxSelectableCount: 2,
      ),
      IdealTypeSettingItem(
        label: "흡연",
        placeholder: idealTypeStatus.smokingStatus.isNotEmpty
            ? idealTypeStatus.smokingStatus
            : "흡연여부를 선택해주세요",
        options: ["비흡연", "금연 중", "전자담배", "가끔 피움", "매일 피움"],
      ),
      IdealTypeSettingItem(
        label: "음주",
        placeholder: idealTypeStatus.drinkingStatus.isNotEmpty
            ? idealTypeStatus.drinkingStatus
            : "음주여부를 선택해주세요",
        options: ["전혀 마시지 않음", "사회적 음주", "가끔 마심", "술자리를 즐김", "금주 중"],
      ),
      IdealTypeSettingItem(
        label: "종교",
        placeholder: idealTypeStatus.religion.isNotEmpty
            ? idealTypeStatus.religion
            : "종교를 선택해주세요",
        options: ["무교", "기독교", "천주교", "불교", "기타"],
      ),
      IdealTypeSettingItem(
        label: "취미",
        placeholder: idealTypeStatus.hobbies.isNotEmpty
            ? idealTypeStatus.hobbies.join(", ")
            : "취미를 선택해주세요",
        options: _hobbies,
        type: IdealTypeDialogType.multi,
        maxSelectableCount: 3,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: idealTypes.map((item) {
          return IdealTypeSettingBox(item: item, idealType: idealTypeStatus);
        }).toList(),
      ),
    );
  }
}
