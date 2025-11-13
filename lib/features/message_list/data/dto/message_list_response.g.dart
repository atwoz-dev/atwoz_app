// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageListItemResponse _$MessageListItemResponseFromJson(
  Map<String, dynamic> json,
) => _MessageListItemResponse(
  likeId: (json['likeId'] as num).toInt(),
  opponentId: (json['opponentId'] as num).toInt(),
  profileImageUrl: json['profileImageUrl'] as String?,
  nickname: json['nickname'] as String?,
  city: json['city'] as String?,
  age: (json['age'] as num).toInt(),
  isMutualLike: json['isMutualLike'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$MessageListItemResponseToJson(
  _MessageListItemResponse instance,
) => <String, dynamic>{
  'likeId': instance.likeId,
  'opponentId': instance.opponentId,
  'profileImageUrl': instance.profileImageUrl,
  'nickname': instance.nickname,
  'city': instance.city,
  'age': instance.age,
  'isMutualLike': instance.isMutualLike,
  'createdAt': instance.createdAt.toIso8601String(),
};

_MessageListResponse _$MessageListResponseFromJson(Map<String, dynamic> json) =>
    _MessageListResponse(
      likes: (json['likes'] as List<dynamic>)
          .map(
            (e) => MessageListItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      hasMore: json['hasMore'] as bool,
    );

Map<String, dynamic> _$MessageListResponseToJson(
  _MessageListResponse instance,
) => <String, dynamic>{'likes': instance.likes, 'hasMore': instance.hasMore};
