import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_state.freezed.dart';

enum FavoriteListErrorType {
  network,
}

@freezed
class FavoriteListState with _$FavoriteListState {
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

// TODO(Han): test data creator
List<FavoriteUserSummary> get _debugData => List.generate(
      11,
      (index) => FavoriteUserSummary(
        userId: 9,
        profileUrl: ([
          'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/03/13/22c65697-c65e-4a85-b78e-1853d3a82f27.jpg',
          'https://images.khan.co.kr/article/2021/04/01/l_2021040102000065100008141.webp',
          'https://www.chosun.com/resizer/v2/RVU3DC6JJM5LQMQKOV3AH5WMKY.jpg?auth=1da4f25820b21359acbf3c1c047f7aa6a6c82f342f927e511d6b2960d5aa1815&width=528&height=642&smart=true',
          'https://cdn.newscj.com/news/photo/202005/615984_607365_4603.jpg',
        ]..shuffle())
            .first,
        name: (['조이현', '박보영', '신민아']..shuffle()).first,
        age: Random().nextInt(10) + 20,
        city: (['서울, 경기']..shuffle()).first,
        favoriteAt:
            DateTime.now().subtract(Duration(days: Random().nextInt(5))),
        isMutual: Random().nextBool(),
      ),
    )..sort((a, b) => a.favoriteAt.compareTo(b.favoriteAt));
