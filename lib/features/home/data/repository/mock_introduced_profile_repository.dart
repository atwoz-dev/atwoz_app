import 'dart:convert';

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
      "id": 1,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["클라이밍/등산", "불교", "맛집탐방"],
      "interviewContent": "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "상위 5%"
    },
    {
      "id": 2,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["클라이밍/등산", "기독교", "드라이브", "러닝"],
      "interviewContent": "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "새로 가입했어요"
    },
    {
      "id": 3,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["보드게임", "불교", "사진촬영"],
      "interviewContent": "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "지금 근처인 사람!"
    },
    {
      "id": 4,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["글쓰기", "무교", "공연/전시회 관람", "노래"],
      "interviewContent": "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "취미가 같아요"
    },
    {
      "id": 5,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["OTT", "무교", "국내여행/해외여행", "여행"],
      "interviewContent": "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "종교가 같아요"
    },
    {
      "id": 6,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/6.png",
      "hashTags": ["요리", "천주교", "카페탐방"],
      "interviewContent": "따뜻하고 배려심 있는 분과 소소한 일상 대화를 즐기고 싶어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "상위 5%"
    },
    {
      "id": 7,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/7.png",
      "hashTags": ["하이킹", "무교", "그림 그리기"],
      "interviewContent": "자연과 예술을 좋아하는 조용한 사람을 만나고 싶어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "상위 5%"
    },
    {
      "id": 8,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/8.png",
      "hashTags": ["영화감상", "기독교", "게임"],
      "interviewContent": "같이 영화 보고 게임할 수 있는 친구 같은 연인을 원해요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "새로 가입했어요"
    },
    {
      "id": 9,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/9.png",
      "hashTags": ["산책", "불교", "맛집탐방"],
      "interviewContent": "천천히 대화를 나누며 서로를 알아가는 사람을 찾고 있어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "새로 가입했어요"
    },
    {
      "id": 10,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/10.png",
      "hashTags": ["자전거", "무교", "야경"],
      "interviewContent": "근처에서 가볍게 만나서 라이딩 함께할 사람 있으면 좋겠어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "지금 근처인 사람!"
    },
    {
      "id": 11,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/11.png",
      "hashTags": ["러닝", "천주교", "사진촬영"],
      "interviewContent": "근처에서 러닝메이트 겸 좋은 인연을 찾고 있어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "지금 근처인 사람!"
    },
    {
      "id": 12,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/12.png",
      "hashTags": ["보드게임", "기독교", "코딩"],
      "interviewContent": "게임도 하고 이야기 나누는 걸 좋아하는 사람을 만나고 싶어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "취미가 같아요"
    },
    {
      "id": 13,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/13.png",
      "hashTags": ["공연 관람", "무교", "피아노"],
      "interviewContent": "같이 문화생활 즐길 수 있는 친구처럼 편한 분이면 좋겠어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "취미가 같아요"
    },
    {
      "id": 14,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["영화", "기독교", "여행"],
      "interviewContent": "종교와 가치관이 비슷한 사람을 찾고 있어요.",
      "isIntroduced": false,
      "isFavorite": false,
      "category": "종교가 같아요"
    },
    {
      "id": 15,
      "imageUrl": "https://blog.malcang.com/wp-content/uploads/2024/03/1-1.png",
      "hashTags": ["수영", "불교", "독서"],
      "interviewContent": "마음이 편해지는 대화를 나눌 수 있는 분이 좋습니다.",
      "isIntroduced": true,
      "isFavorite": false,
      "category": "종교가 같아요"
    }
  ]
  ''';

  Future<List<IntroducedProfile>> getProfiles(String category) async {
    final List response = jsonDecode(_mockData);
    final decodedResp = response.map((e) => e as Map<String, dynamic>).toList();
    return decodedResp
        .where((e) => e['category'] == '종교가 같아요')
        .map((e) => IntroducedProfile.fromJson(e))
        .toList();
  }
}
