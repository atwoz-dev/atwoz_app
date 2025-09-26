// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSignInRequestImpl _$$UserSignInRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignInRequestImpl(
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$UserSignInRequestImplToJson(
        _$UserSignInRequestImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
    };
