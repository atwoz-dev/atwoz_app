import 'package:atwoz_app/features/home/data/model/introduced_profile.dart';
import 'package:atwoz_app/features/home/domain/repository/introduced_profile_repository.dart';

class IntroducedProfileRepositoryImpl implements IntroducedProfileRepository {
  final List<Map<String, dynamic>> sampleData = [
    // 샘플 데이터 제작
    // TODO: 추후 api 연동 시 제거
    {
      'image': "assets/images/home_pic.png",
      'hashTags': ["#클라이밍", "#불교", "#무계획 여행", "+2"],
      'interview': "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
    },
    {
      'image': "assets/images/bad_pic1.png",
      'hashTags': ["#독서", "#무교", "#ESTJ", "+2"],
      'interview': "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
    },
    {
      'image': "assets/images/good_pic1.png",
      'hashTags': ["#공부", "#기독교", "#INFP", "+2"],
      'interview': "안녕하세요 활발한 성격의 유쾌하고 대화 코드가 맞는 자존감 높으신 분이 좋아요...",
    }
  ];

  @override
  Future<List<IntroducedProfile>> getProfiles() async {
    return sampleData.map((e) => IntroducedProfile.fromJson(e)).toList();
  }
}
