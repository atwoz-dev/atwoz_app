import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_state.freezed.dart';

enum FavoriteListErrorType {
  network,
}

@freezed
abstract class FavoriteListState with _$FavoriteListState {
  const factory FavoriteListState({
    @Default(FavoriteListData()) FavoriteListData myFavoriteUsers,
    @Default(FavoriteListData()) FavoriteListData favoriteMeUsers,
    @Default(false) bool isLoaded,
    FavoriteListErrorType? error,
  }) = _FavoriteListState;

  const FavoriteListState._();

  factory FavoriteListState.initial() => const FavoriteListState();
}

class FavoriteListData {
  const FavoriteListData({
    this.users = const [],
    this.hasMore = false,
  });

  final List<FavoriteUserSummary> users;
  final bool hasMore;

  FavoriteListData copyWith({
    List<FavoriteUserSummary>? users,
    bool? hasMore,
  }) {
    return FavoriteListData(
      users: users ?? this.users,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class FavoriteUserSummary {
  const FavoriteUserSummary({
    required this.userId,
    required this.profileUrl,
    required this.name,
    required this.age,
    required this.city,
    required this.favoriteAt,
    required this.isMutual,
  });

  final int userId;
  final String profileUrl;
  final String name;
  final int age;
  final String city;
  final DateTime favoriteAt;
  final bool isMutual;

  bool get isRecent => favoriteAt.isAfter(_today.subtract(const Duration(
        hours: 12,
      )));

  static final _today = DateTime.now();
}

class DummyFavoriteUserSummary extends FavoriteUserSummary {
  DummyFavoriteUserSummary()
      : super(
          userId: 0,
          profileUrl: '',
          name: '',
          age: 0,
          city: '',
          favoriteAt: DateTime.now(),
          isMutual: false,
        );
}
