// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSignUpRequest _$UserSignUpRequestFromJson(Map<String, dynamic> json) =>
    _UserSignUpRequest(
      seq: (json['SEQ'] as num).toInt(),
      id: json['ID'] as String,
      password: json['PASSWORD'] as String,
      nickName: json['NICK_NAME'] as String,
      email: json['EMAIL'] as String,
      phoneNumber: json['PHONE_NUMBER'] as String,
      isReceivingAdvertisemenet: json['IS_RECEIVING_ADVERTISEMENET'] as bool,
      registrationPath: (json['REGISTRATION_PATH'] as num?)?.toInt(),
      isResign: json['IS_RESIGN'] as bool,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
        json['CREATED_AT'],
        const ConvertStringToDateTime().fromJson,
      ),
    );

Map<String, dynamic> _$UserSignUpRequestToJson(_UserSignUpRequest instance) =>
    <String, dynamic>{
      'SEQ': instance.seq,
      'ID': instance.id,
      'PASSWORD': instance.password,
      'NICK_NAME': instance.nickName,
      'EMAIL': instance.email,
      'PHONE_NUMBER': instance.phoneNumber,
      'IS_RECEIVING_ADVERTISEMENET': instance.isReceivingAdvertisemenet,
      'REGISTRATION_PATH': instance.registrationPath,
      'IS_RESIGN': instance.isResign,
      'CREATED_AT': _$JsonConverterToJson<String, DateTime>(
        instance.createdAt,
        const ConvertStringToDateTime().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
