import 'package:atwoz_app/features/auth/domain/sign_up_provider.dart';
import 'package:atwoz_app/features/auth/presentation/page/sign_up_profile_base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpHobbiesPage extends ConsumerWidget {
  const SignUpHobbiesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signUpNotifierProvider.notifier);
    final selectedHobbies = ref.watch(
      signUpNotifierProvider
          .select((state) => state.selectedHobbies ?? <String>[]),
    );

    final options = [
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
      '기타',
    ];

    return SignUpProfileBasePage(
      question: '취미가 어떻게 되세요?',
      step: 10,
      onNextPressed: () {
        // TODO: 완료 처리 (더이상 페이지 이동 없음)
      },
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: options.map((option) {
          return FilterChip(
            label: Text(option),
            selected: selectedHobbies.contains(option), // 수정: null-safe 처리
            onSelected: (selected) {
              final updatedHobbies = List<String>.from(selectedHobbies);
              if (selected) {
                updatedHobbies.add(option);
              } else {
                updatedHobbies.remove(option);
              }
              signUpNotifier.updateHobbies(updatedHobbies);
            },
          );
        }).toList(),
      ),
    );
  }
}
