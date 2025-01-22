import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_request.freezed.dart';
part 'user_sign_in_request.g.dart';

@freezed
class UserSignInRequest with _$UserSignInRequest {
  const factory UserSignInRequest({
    required String phoneNumber,
  }) = _UserSignInRequest;

  factory UserSignInRequest.fromJson(Map<String, dynamic> json) =>
      _$UserSignInRequestFromJson(json);
}
