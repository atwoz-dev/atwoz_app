import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/util/converter.dart';

part 'user_sign_up_request.freezed.dart';
part 'user_sign_up_request.g.dart';

@freezed
class UserSignUpRequest with _$UserSignUpRequest {
  @JsonSerializable(fieldRename: FieldRename.screamingSnake)
  const factory UserSignUpRequest({
    required int seq,
    required String id,
    required String password,
    required String nickName,
    required String email,
    required String phoneNumber,
    required bool isReceivingAdvertisemenet,
    int? registrationPath,
    required bool isResign,
    @ConvertStringToDateTime() DateTime? createdAt,
  }) = _UserSignUpRequest;

  const UserSignUpRequest._();

  factory UserSignUpRequest.fromJson(Map<String, Object?> json) =>
      _$UserSignUpRequestFromJson(json);
}
