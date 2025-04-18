import 'package:atwoz_app/features/home/domain/domain.dart';

abstract interface class RecommendedProfileRepository {
  Future<List<RecommendedProfile>> getProfiles(); // 소개받은 프로필 정보 가져오기
}
