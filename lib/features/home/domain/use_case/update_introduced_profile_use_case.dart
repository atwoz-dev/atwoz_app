import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateIntroducedProfileUseCaseProvider = Provider(
  (ref) => UpdateIntroducedProfileUseCase(),
);

class UpdateIntroducedProfileUseCase {
  Future<void> execute({
    required int index,
    required IntroducedCategory category,
  }) async {
    try {
      final box = await Hive.openBox<Map>(IntroducedProfileDto.boxName);
      final rawData = box.get(category.name);

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

      final rawExpiresAt = data['expiresAt'];

      if (rawExpiresAt is! DateTime) {
        throw const FormatException('데이터 안에 expiresAt 필드가 DateTime 형식이 아닙니다.');
      }

      final List<IntroducedProfileDto> updatedProfiles;
      final expiresAt = rawExpiresAt;

      try {
        updatedProfiles = rawProfiles.cast<IntroducedProfileDto>().toList();
      } catch (e) {
        throw Exception('캐시 데이터 내부 요소 타입 불일치: $e');
      }

      if (index < 0 || index >= updatedProfiles.length) {
        throw ArgumentError('인덱스 $index는 범위를 벗어났습니다');
      }

      final targetProfile = updatedProfiles[index];

      updatedProfiles[index] = targetProfile.copyWith(isIntroduced: true);

      await box.put(category.name, {
        'profiles': updatedProfiles,
        'expiresAt': expiresAt,
      });
    } catch (e) {
      throw Exception('소개 프로필 업데이트 실패: $e');
    }
  }
}
