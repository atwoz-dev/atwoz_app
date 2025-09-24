// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeartHistoryItemResponseImpl _$$HeartHistoryItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartHistoryItemResponseImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      content: json['content'] as String,
      heartAmount: (json['heartAmount'] as num).toInt(),
    );

Map<String, dynamic> _$$HeartHistoryItemResponseImplToJson(
        _$HeartHistoryItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'content': instance.content,
      'heartAmount': instance.heartAmount,
    };

_$HeartHistoryResponseImpl _$$HeartHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HeartHistoryResponseImpl(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) =>
              HeartHistoryItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
    );

Map<String, dynamic> _$$HeartHistoryResponseImplToJson(
        _$HeartHistoryResponseImpl instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
      'hasMore': instance.hasMore,
    };
