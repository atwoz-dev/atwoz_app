import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_request.freezed.dart';
part 'user_sign_in_request.g.dart';

@freezed
class UserSignInRequest with _$UserSignInRequest {
  @JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
  const factory UserSignInRequest({
    required String userId,
    required String userPassword,
  }) = _UserSignInRequest;

  const UserSignInRequest._();

  factory UserSignInRequest.fromJson(Map<String, dynamic> json) =>
      _$UserSignInRequestFromJson(json);
}
