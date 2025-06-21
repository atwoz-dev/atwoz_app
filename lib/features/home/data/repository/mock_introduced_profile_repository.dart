import 'dart:convert';

import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mockIntroducedProfileRepositoryProvider =
    Provider<MockIntroducedProfileRepository>((ref) {
  return MockIntroducedProfileRepository();
});

/// 서버 응답 데이터가 적어 Mock 데이터로 구현해 놓은 repository입니다.
/// 추후 삭제될 에정입니다
/// TODO: 추후 삭제
class MockIntroducedProfileRepository {
  final _mockData = '''
[
  {
    "memberId": 1,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["TRAVEL", "ANIMATION", "FOOD_HUNT"],
    "mbti": "ISTJ",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 2,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["CYCLING"],
    "mbti": "ENFP",
    "religion": "NONE",
    "interviewAnswerContent": "함께 여행 다니고 추억 쌓는 걸 좋아해요 :)",
    "likeLevel": "HIGHLY_INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 3,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["WRITING", "YOGA_AND_PILATES"],
    "mbti": "INTJ",
    "religion": "BUDDHIST",
    "interviewAnswerContent": "진지한 대화와 감정 공유를 중요하게 생각해요.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 4,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["GOLF", "SHOPPING", "SINGING"],
    "mbti": "ESFJ",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "함께 즐길 수 있는 취미가 많았으면 좋겠어요!",
    "likeLevel": "HIGHLY_INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 5,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["DRIVING", "BOARD_GAMES"],
    "mbti": "INFP",
    "religion": "NONE",
    "interviewAnswerContent": "마음이 따뜻한 분과 편안한 시간을 보내고 싶어요.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  [
  {
    "memberId": 6,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["FOOD_HUNT", "PHOTOGRAPHY"],
    "mbti": "ISFJ",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "진지한 대화와 감정 공유를 중요하게 생각해요.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 7,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["WEBTOON_AND_COMICS", "YOGA_AND_PILATES", "DANCE"],
    "mbti": "ENTP",
    "religion": "CATHOLIC",
    "interviewAnswerContent": "유쾌하고 따뜻한 대화를 좋아합니다.",
    "likeLevel": "HIGHLY_INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 8,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["INTERIOR_DESIGN"],
    "mbti": "INTJ",
    "religion": "NONE",
    "interviewAnswerContent": "깊이 있는 사람과 연결되길 바랍니다.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 9,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["ANIMATION", "COOKING", "PC_AND_MOBILE_GAMES"],
    "mbti": "ENFP",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "자신감 있고 배려심 있는 분을 찾고 있어요.",
    "likeLevel": "HIGHLY_INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 10,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["WINE", "GOLF"],
    "mbti": "ESTJ",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "일상의 소소한 대화를 나누고 싶어요.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 11,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["DRIVING"],
    "mbti": "ESFP",
    "religion": "BUDDHIST",
    "interviewAnswerContent": "여행과 드라이브를 좋아해요.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 12,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["CAMPING", "THEATER_AND_MOVIES"],
    "mbti": "ISFP",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "편안한 분위기의 사람을 좋아해요.",
    "likeLevel": "HIGHLY_INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 13,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["BADMINTON_AND_TENNIS", "WRITING"],
    "mbti": "INFJ",
    "religion": "NONE",
    "interviewAnswerContent": "내면이 단단한 사람과 대화하고 싶어요.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 14,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["TRAVEL", "WALKING", "PERFORMANCE_AND_EXHIBITION"],
    "mbti": "ISTP",
    "religion": "CATHOLIC",
    "interviewAnswerContent": "같이 걷고 싶은 사람을 찾고 있어요.",
    "likeLevel": "HIGHLY_INTERESTED",
    "isIntroduced": false
  },
  {
    "memberId": 15,
    "profileImageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
    "hobbies": ["PC_AND_MOBILE_GAMES", "PLAYING_INSTRUMENTS"],
    "mbti": "INFP",
    "religion": "CHRISTIAN",
    "interviewAnswerContent": "감성적인 사람과의 소통을 중요하게 여깁니다.",
    "likeLevel": "INTERESTED",
    "isIntroduced": false
  }
]
''';

  Future<List<IntroducedProfileDto>> getProfiles(String category) async {
    final List response = jsonDecode(_mockData);
    final decodedResp = response.map((e) => e as Map<String, dynamic>).toList();
    return decodedResp
        .where((e) => e['category'] == '종교가 같아요')
        .map((e) => IntroducedProfileDto.fromJson(e))
        .toList();
  }
}
