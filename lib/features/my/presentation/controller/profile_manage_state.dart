import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/my_profile.dart';

part 'profile_manage_state.freezed.dart';

@freezed
class ProfileManageState with _$ProfileManageState {
  const factory ProfileManageState({
    required MyProfile profile,
  }) = _ProfileManageState;
}
