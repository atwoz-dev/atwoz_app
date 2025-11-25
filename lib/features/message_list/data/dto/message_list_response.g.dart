// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageMatchItem _$MessageMatchItemFromJson(Map<String, dynamic> json) =>
    _MessageMatchItem(
      matchId: (json['matchId'] as num).toInt(),
      opponentId: (json['opponentId'] as num).toInt(),
      opponentMessage: json['opponentMessage'] as String?,
      myMessage: json['myMessage'] as String?,
      nickName: json['nickName'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      city: json['city'] as String,
      matchStatus: json['matchStatus'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$MessageMatchItemToJson(_MessageMatchItem instance) =>
    <String, dynamic>{
      'matchId': instance.matchId,
      'opponentId': instance.opponentId,
      'opponentMessage': instance.opponentMessage,
      'myMessage': instance.myMessage,
      'nickName': instance.nickName,
      'profileImageUrl': instance.profileImageUrl,
      'city': instance.city,
      'matchStatus': instance.matchStatus,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_MessageListResponse _$MessageListResponseFromJson(Map<String, dynamic> json) =>
    _MessageListResponse(
      matches: (json['matches'] as List<dynamic>)
          .map((e) => MessageMatchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
    );

Map<String, dynamic> _$MessageListResponseToJson(
  _MessageListResponse instance,
) => <String, dynamic>{
  'matches': instance.matches,
  'hasMore': instance.hasMore,
};
