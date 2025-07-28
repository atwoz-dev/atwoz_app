import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int status,
    required String code,
    required String message,
    required UserData data,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
@HiveType(typeId: 2, adapterName: 'UserDataAdapter')
class UserData with _$UserData {
  const factory UserData({
    @HiveField(0) required String accessToken,
    @HiveField(1) required bool isProfileSettingNeeded,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
