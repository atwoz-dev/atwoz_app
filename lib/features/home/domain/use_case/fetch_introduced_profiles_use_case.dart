import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
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
    try {
      final box = await Hive.openBox(IntroducedProfileDto.boxName);
      final categoryKey = category.name;

      final data = await box.get(categoryKey) as Map<String, dynamic>?;

      if (data is! Map<String, dynamic> ||
          data['profiles'] == null ||
          data['profiles'] is! List<IntroducedProfileDto>) {
        throw const FormatException(
          'Invalid data format in Hive box for IntroducedProfileDto',
        );
      }

      return (data['profiles'] as List<IntroducedProfileDto>).map(
        (dto) {
          final tags = [
            ...dto.hobbies.map((e) => Hobby.parse(e).label),
            dto.mbti,
            if (dto.religion != null) Religion.parse(dto.religion).label
          ].whereType<String>().toList()
            ..sort((a, b) => a.length.compareTo(b.length));
          return dto.toIntroducedProfile(tags);
        },
      ).toList();
    } catch (e) {
      rethrow;
    }
  }
}
