import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_list_state.freezed.dart';

enum HeartListErrorType {
  network,
}

@freezed
class HeartListState with _$HeartListState {
  const factory HeartListState({
    @Default(HeartListData()) HeartListData heartTractions,
    @Default(false) bool isLoaded,
    HeartListErrorType? error,
  }) = _HeartListState;

  const HeartListState._();

  factory HeartListState.initial() => const HeartListState();

  when(
      {required ListView Function(dynamic data) data,
      required Text Function(dynamic error, dynamic stack) error,
      required Center Function() loading}) {}
}

class HeartListData {
  const HeartListData({
    this.transactions = const [],
    this.hasMore = false,
  });

  final List<HeartTransactionSummary> transactions;
  final bool hasMore;

  HeartListData copyWith({
    List<HeartTransactionSummary>? transactions,
    bool? hasMore,
  }) {
    return HeartListData(
      transactions: transactions ?? this.transactions,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class HeartTransactionSummary {
  const HeartTransactionSummary({
    required this.id,
    required this.createdAt,
    required this.content,
    required this.heartAmount,
  });

  final int id;
  final DateTime createdAt;
  final String content;
  final int heartAmount;
}

class DummyHeartTransactionSummary extends HeartTransactionSummary {
  DummyHeartTransactionSummary()
      : super(
          id: 0,
          createdAt: DateTime.now(),
          content: '',
          heartAmount: 0,
        );
}
