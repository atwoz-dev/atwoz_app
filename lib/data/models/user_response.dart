import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

// TODO: 임의로 한 거라 수정 필요
@freezed
class User extends HiveObject with _$User {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 2, adapterName: 'UserAdapter')
  factory User(
      {@HiveField(0) required String userSeq,
      @HiveField(1) required String userName,
      @HiveField(2) required String userId,
      @HiveField(3) required int deptSeq,
      @HiveField(4) required String autoLogout}) = _User;

  User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
