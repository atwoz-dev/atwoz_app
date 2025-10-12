import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/core/util/util.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:atwoz_app/features/profile/domain/common/enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final saveIntroducedProfilesUseCaseProvider = Provider(
  (ref) => SaveIntroducedProfilesUseCase(ref: ref),
);

class SaveIntroducedProfilesUseCase {
  final Ref _ref;

  SaveIntroducedProfilesUseCase({required Ref ref}) : _ref = ref;

  Future<List<IntroducedProfile>> execute(IntroducedCategory category) async {
    try {
      final box = await Hive.openBox(IntroducedProfileDto.boxName);
      final categoryKey = category.name;

      final cachedProfiles = _getValidCachedProfiles(box, categoryKey);
      if (cachedProfiles != null) return cachedProfiles;

      // 캐시 없거나 만료된 경우 서버에서 가져와서 저장
      final profileDtos = await _fetchProfilesFromServer(categoryKey);
      await _saveProfilesToCache(box, categoryKey, profileDtos);

      return covertToIntroducedProfiles(profileDtos);
    } catch (e, stackTrace) {
      Log.e('소개 받은 이성 리스트 호출 실패: $e\n$stackTrace');
      throw Exception();
    }
  }

  /// 캐시에서 유효한 IntroducedProfile 리스트를 꺼냄, 만료 시 null 반환
  List<IntroducedProfile>? _getValidCachedProfiles(Box box, String key) {
    final data = box.get(key);

    if (data is! Map) return null;

    final profiles = data['profiles'];
    final expiresAt = data['expiresAt'];

    if (profiles is! List<IntroducedProfileDto> || expiresAt is! DateTime) {
      return null;
    }

    if (DateTime.now().isBefore(expiresAt)) {
      final profileDtos = data['profiles'];
      return covertToIntroducedProfiles(profileDtos);
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
}

/// Dto -> 도메인 객체로 변환 + 해시태그 필터/정렬
List<IntroducedProfile> covertToIntroducedProfiles(
    List<IntroducedProfileDto> profileDtos) {
  return profileDtos.map(
    (profile) {
      final hobbyLabels =
          profile.hobbies.map((e) => Hobby.parse(e)); // 취미 해시태크 리스트
      final mbtiLabel = profile.mbti; // MBTI 해시태그
      final religionLabel = profile.religion != null
          ? Religion.parse(profile.religion)
          : null; // 종교 해시태그(존재하는 경우에만)

      final tags = [hobbyLabels, mbtiLabel, religionLabel]
          .whereType<String>()
          .toList(); // null 제거

      final sortedTags = tags
        ..sort(
          (a, b) => a.length.compareTo(b.length),
        ); // 텍스트 길이순 오름차순

      return profile.toIntroducedProfile(sortedTags); // dto -> 모델 변환
    },
  ).toList();
}
