import 'package:atwoz_app/features/auth/data/model/member_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  @HiveType(typeId: 2, adapterName: 'UserResponseAdapter')
  const factory UserResponse({
    @HiveField(0) required String accessToken,
    @HiveField(1) required String refreshToken,
    @HiveField(2) required Member member,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
