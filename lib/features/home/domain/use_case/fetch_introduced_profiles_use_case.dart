import 'package:atwoz_app/features/home/data/mapper/introduced_profile_mapper.dart';
import 'package:atwoz_app/features/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FetchIntroducedProfilesUseCase {
  Ref ref;

  FetchIntroducedProfilesUseCase(this.ref);

  Future<List<IntroducedProfile>> execute(String category) async {
    final response = await ref
        .read(introducedProfileRepositoryProvider)
        .getProfiles(category);
    return response.map((e) => e.toIntroducedProfile()).toList();
    //return response;
  }
}
