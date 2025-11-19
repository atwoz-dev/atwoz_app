import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_introduced_profiles_use_case.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

final fetchIntroducedProfilesUseCase = Provider((ref) {
  return FetchIntroducedProfilesUseCase();
});

class FetchIntroducedProfilesUseCase {
  /// 홈 화면에서 조회 후 빈 리스트가 아닌 경우에
  /// 소개받고 싶은 이성 화면에서 조회되는 메서드
  /// 즉, 빈 리스트인 경우는 존재하지 않음
  Future<List<IntroducedProfile>> execute(IntroducedCategory category) async {
    final box = await Hive.openBox<Map>(IntroducedProfileDto.boxName);

    final categoryKey = category.name;
    final rawData = box.get(categoryKey);

    if (rawData is! Map) {
      throw const FormatException(
        'IntroducedProfileDto 박스에서 꺼낸 데이터 형식이 Map이 아닙니다.',
      );
    }

    final data = rawData.cast<String, dynamic>();

    final rawProfiles = data['profiles'];

    if (rawProfiles is! List) {
      throw const FormatException('데이터 안에 profiles 필드가 List 형식이 아닙니다.');
    }

    final List<IntroducedProfileDto> profiles;
    try {
      profiles = rawProfiles.cast<IntroducedProfileDto>().toList();
    } catch (e) {
      // 리스트 내부 요소 타입이 IntroducedProfileDto가 아닐 경우 처리
      throw FormatException('리스트 내부 요소가 IntroducedProfileDto 타입이 아닙니다. 에러: $e');
    }

    return convertToIntroducedProfiles(profiles);
  }
}
