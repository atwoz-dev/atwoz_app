import 'package:atwoz_app/features/my/data/mapper/my_profile_mapper.dart';
import 'package:atwoz_app/features/my/data/repository/my_profile_repository.dart';
import 'package:atwoz_app/features/my/my.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateMyProfileUseCaseProvider = Provider<UpdateMyProfileUseCase>(
  (ref) => UpdateMyProfileUseCase(
    myProfileRepository: ref.read(myProfileRepositoryProvider),
  ),
);

class UpdateMyProfileUseCase {
  final MyProfileRepository _myProfileRepository;

  UpdateMyProfileUseCase({
    required MyProfileRepository myProfileRepository,
  }) : _myProfileRepository = myProfileRepository;

  Future<bool> updateProfile(MyProfile profile) async {
    return await _myProfileRepository.updateProfile(
      profile.toProfileUpdateRequestDto(),
    );
  }
}
