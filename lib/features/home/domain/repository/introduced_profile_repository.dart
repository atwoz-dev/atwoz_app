import 'package:atwoz_app/features/home/data/model/introduced_profile.dart';

abstract interface class IntroducedProfileRepository {
  Future<List<IntroducedProfile>> getProfiles(); // 소개받은 프로필 정보 가져오기
}
