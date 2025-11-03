// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteListItemResponse _$FavoriteListItemResponseFromJson(
  Map<String, dynamic> json,
) => _FavoriteListItemResponse(
  likeId: (json['likeId'] as num).toInt(),
  opponentId: (json['opponentId'] as num).toInt(),
  profileImageUrl: json['profileImageUrl'] as String?,
  nickname: json['nickname'] as String?,
  city: json['city'] as String?,
  age: (json['age'] as num).toInt(),
  isMutualLike: json['isMutualLike'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$FavoriteListItemResponseToJson(
  _FavoriteListItemResponse instance,
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

_FavoriteListResponse _$FavoriteListResponseFromJson(
  Map<String, dynamic> json,
) => _FavoriteListResponse(
  likes: (json['likes'] as List<dynamic>)
      .map((e) => FavoriteListItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasMore: json['hasMore'] as bool,
);

Map<String, dynamic> _$FavoriteListResponseToJson(
  _FavoriteListResponse instance,
) => <String, dynamic>{'likes': instance.likes, 'hasMore': instance.hasMore};
