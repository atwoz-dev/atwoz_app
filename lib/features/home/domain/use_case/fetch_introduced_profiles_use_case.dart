import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/domain/use_case/save_introduced_profiles_use_case.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

final fetchIntroducedProfilesUseCase = Provider((ref) {
  return FetchIntroducedProfilesUseCase();
});

class FetchIntroducedProfilesUseCase {
  /// 홈 화면에서 조회 후 빈 리스트가 아닌 경우에
  /// 소개받고 싶은 이성 화면에서 조회되는 메서드
  /// 즉, 빈 리스트인 경우는 존재하지 않음
  Future<List<IntroducedProfile>> execute(IntroducedCategory category) async {
    final box = await Hive.openBox(IntroducedProfileDto.boxName);
    final categoryKey = category.name;

    final data = await box.get(categoryKey) as Map<String, dynamic>?;

    if (data is! Map<String, dynamic> ||
        data['profiles'] is! List<IntroducedProfileDto>) {
      throw const FormatException(
        'IntroducedProfileDto 박스에서 꺼낸 데이터 형식이 올바르지 않습니다.',
      );
    }

    final profiles = data['profiles'];

    if (profiles is! List<IntroducedProfileDto>) {
      throw const FormatException(
        'IntroducedProfileDto 타입의 리스트 형식이어야 합니다.',
      );
    }

    return covertToIntroducedProfiles(profiles);
  }
}
