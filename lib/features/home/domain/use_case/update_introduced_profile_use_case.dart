import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:atwoz_app/features/profile/domain/common/model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateIntroducedProfileUseCaseProvider = Provider(
  (ref) => UpdateIntroducedProfileUseCase(),
);

class UpdateIntroducedProfileUseCase {
  Future<void> execute({
    required int index,
    required UserProfile detailProfile,
    required IntroducedCategory category,
  }) async {
    try {
      final box = await Hive.openBox(IntroducedProfileDto.boxName);
      final oldMap = box.get(category.name) as Map?;

      if (oldMap != null &&
          oldMap['profiles'] is List<IntroducedProfileDto> &&
          oldMap['expiresAt'] is DateTime) {
        final updatedProfiles =
            oldMap['profiles'] as List<IntroducedProfileDto>;

        if (index < 0 || index >= updatedProfiles.length) {
          throw ArgumentError('인덱스 $index는 범위를 벗어났습니다');
        }

        updatedProfiles[index] = IntroducedProfileDto(
          memberId: detailProfile.id,
          profileImageUrl: detailProfile.profileUri,
          hobbies: category == IntroducedCategory.hobby
              ? []
              : detailProfile.hobbies, // 취미가 같아요이면 빈 리스트 저장
          mbti: detailProfile.mbti,
          religion: category == IntroducedCategory.religion
              ? null
              : detailProfile.religion.name, // 종교가 같아요이면 null 저장
          interviewAnswerContent:
              detailProfile.selfIntroductionItems.first.content,
          isIntroduced: true,
        );

        await box.put(
          category.name,
          {
            'profiles': updatedProfiles,
            'expiresAt': oldMap['expiresAt'],
          },
        );
      }
    } catch (e) {
      throw Exception('소개 프로필 업데이트 실패: $e');
    }
  }
}
