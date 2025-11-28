import 'package:atwoz_app/core/network/base_repository.dart';
import 'package:atwoz_app/core/network/network_exception.dart';
import 'package:atwoz_app/features/auth/data/data.dart';
import 'package:atwoz_app/features/home/data/dto/introduced_profile_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final introducedProfileRepositoryProvider =
    Provider<IntroducedProfileRepository>((ref) {
      return IntroducedProfileRepository(ref);
    });

class IntroducedProfileRepository extends BaseRepository {
  IntroducedProfileRepository(Ref ref) : super(ref, '/member');

  Future<List<IntroducedProfileDto>> getProfiles(String category) async {
    final res = await apiService.getJson('$path/introduction/$category');

    if (res is! Map<String, dynamic> || res['data'] is! List) {
      throw const NetworkException.formatException();
    }

    return (res['data'] as List)
        .map((e) => IntroducedProfileDto.fromJson(e))
        .toList();
  }

  Future<void> removeBlur({
    required String category,
    required int memberId,
  }) async {
    await apiService.postJson(
      '$path/introduction/$category',
      data: {'introducedMemberId': memberId},
    );
  }

  Future<HeartBalance> getHeartBalance() async {
    final response = await apiService.getJson('$path/heartbalance');

    if (response is! Map<String, dynamic> ||
        response['data'] is! Map<String, dynamic>) {
      throw const NetworkException.formatException();
    }

    return HeartBalance.fromJson(response['data']);
  }
}
