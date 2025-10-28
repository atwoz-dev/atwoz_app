// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSignInRequest _$UserSignInRequestFromJson(Map<String, dynamic> json) =>
    _UserSignInRequest(
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$UserSignInRequestToJson(_UserSignInRequest instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
    };
