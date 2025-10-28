// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HeartHistoryItemResponse _$HeartHistoryItemResponseFromJson(
  Map<String, dynamic> json,
) => _HeartHistoryItemResponse(
  id: (json['id'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  content: json['content'] as String,
  heartAmount: (json['heartAmount'] as num).toInt(),
);

Map<String, dynamic> _$HeartHistoryItemResponseToJson(
  _HeartHistoryItemResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'content': instance.content,
  'heartAmount': instance.heartAmount,
};

_HeartHistoryResponse _$HeartHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _HeartHistoryResponse(
  transactions: (json['transactions'] as List<dynamic>)
      .map((e) => HeartHistoryItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasMore: json['hasMore'] as bool,
);

Map<String, dynamic> _$HeartHistoryResponseToJson(
  _HeartHistoryResponse instance,
) => <String, dynamic>{
  'transactions': instance.transactions,
  'hasMore': instance.hasMore,
};
