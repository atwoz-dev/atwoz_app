import 'package:atwoz_app/features/home/domain/model/introduced_profile.dart';

abstract interface class IntroducedProfileRepository {
  Future<List<IntroducedProfile>> getProfiles(
    String category,
  ); // 카테고리별 소개받은 프로필 정보 가져오기
}
