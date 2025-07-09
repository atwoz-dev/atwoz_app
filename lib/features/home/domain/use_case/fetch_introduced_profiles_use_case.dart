import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final fetchIntroducedProfilesUseCaseProvider = Provider(
  (ref) => FetchIntroducedProfilesUseCase(ref: ref),
);

class FetchIntroducedProfilesUseCase {
  final Ref _ref;

  FetchIntroducedProfilesUseCase({required Ref ref}) : _ref = ref;

  Future<List<IntroducedProfile>> execute(IntroducedCategory category) async {
    try {
      final box = await Hive.openBox(IntroducedProfileDto.boxName);
      final categoryKey = category.name;

      final cachedProfiles = _getValidCachedProfiles(box, categoryKey);
      if (cachedProfiles != null) return cachedProfiles;

      // 캐시 없거나 만료된 경우 서버에서 가져와서 저장
      final profileDtos = await _fetchProfilesFromServer(categoryKey);
      await _saveProfilesToCache(box, categoryKey, profileDtos);

      return _getIntroducedProfiles(profileDtos);
    } catch (e, stackTrace) {
      Log.e('소개 받은 이성 리스트 호출 실패: $e\n$stackTrace');
      return [];
    }
  }

  /// 캐시에서 유효한 IntroducedProfile 리스트를 꺼냄, 만료 시 null 반환
  List<IntroducedProfile>? _getValidCachedProfiles(Box box, String key) {
    final data = box.get(key);
    if (data is Map &&
        data['profiles'] is List<IntroducedProfileDto> &&
        data['expiresAt'] is DateTime) {
      final expiresAt = data['expiresAt'] as DateTime;
      if (DateTime.now().isBefore(expiresAt)) {
        final dtos = data['profiles'] as List<IntroducedProfileDto>;
        return _getIntroducedProfiles(dtos);
      }
    }
    return null;
  }

  /// 서버에서 IntroducedProfileDto 리스트 불러오기
  Future<List<IntroducedProfileDto>> _fetchProfilesFromServer(String key) {
    return _ref.read(introducedProfileRepositoryProvider).getProfiles(key);
  }

  /// IntroducedProfileDto 리스트를 캐시에 저장
  Future<void> _saveProfilesToCache(
      Box box, String key, List<IntroducedProfileDto> dtos) async {
    await box.put(key, {
      'profiles': dtos,
      'expiresAt': DateTime.now().add(const Duration(hours: 1)),
    });
  }

  /// Dto -> 도메인 객체로 변환 + 해시태그 필터/정렬
  List<IntroducedProfile> _getIntroducedProfiles(
      List<IntroducedProfileDto> dtos) {
    return dtos.map(
      (dto) {
        final tags = [dto.hobbies, dto.mbti, dto.religion]
            .whereType<String>()
            .toList()
          ..sort((a, b) => a.length.compareTo(b.length));
        return dto.toIntroducedProfile(tags);
      },
    ).toList();
  }
}
