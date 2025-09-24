// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteListItemResponse _$FavoriteListItemResponseFromJson(
    Map<String, dynamic> json) {
  return _FavoriteListItemResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoriteListItemResponse {
  int get likeId => throw _privateConstructorUsedError;
  int get opponentId => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  bool get isMutualLike => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FavoriteListItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteListItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteListItemResponseCopyWith<FavoriteListItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteListItemResponseCopyWith<$Res> {
  factory $FavoriteListItemResponseCopyWith(FavoriteListItemResponse value,
          $Res Function(FavoriteListItemResponse) then) =
      _$FavoriteListItemResponseCopyWithImpl<$Res, FavoriteListItemResponse>;
  @useResult
  $Res call(
      {int likeId,
      int opponentId,
      String? profileImageUrl,
      String? nickname,
      String? city,
      int age,
      bool isMutualLike,
      DateTime createdAt});
}

/// @nodoc
class _$FavoriteListItemResponseCopyWithImpl<$Res,
        $Val extends FavoriteListItemResponse>
    implements $FavoriteListItemResponseCopyWith<$Res> {
  _$FavoriteListItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteListItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeId = null,
    Object? opponentId = null,
    Object? profileImageUrl = freezed,
    Object? nickname = freezed,
    Object? city = freezed,
    Object? age = null,
    Object? isMutualLike = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      likeId: null == likeId
          ? _value.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int,
      opponentId: null == opponentId
          ? _value.opponentId
          : opponentId // ignore: cast_nullable_to_non_nullable
              as int,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      isMutualLike: null == isMutualLike
          ? _value.isMutualLike
          : isMutualLike // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteListItemResponseImplCopyWith<$Res>
    implements $FavoriteListItemResponseCopyWith<$Res> {
  factory _$$FavoriteListItemResponseImplCopyWith(
          _$FavoriteListItemResponseImpl value,
          $Res Function(_$FavoriteListItemResponseImpl) then) =
      __$$FavoriteListItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int likeId,
      int opponentId,
      String? profileImageUrl,
      String? nickname,
      String? city,
      int age,
      bool isMutualLike,
      DateTime createdAt});
}

/// @nodoc
class __$$FavoriteListItemResponseImplCopyWithImpl<$Res>
    extends _$FavoriteListItemResponseCopyWithImpl<$Res,
        _$FavoriteListItemResponseImpl>
    implements _$$FavoriteListItemResponseImplCopyWith<$Res> {
  __$$FavoriteListItemResponseImplCopyWithImpl(
      _$FavoriteListItemResponseImpl _value,
      $Res Function(_$FavoriteListItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteListItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeId = null,
    Object? opponentId = null,
    Object? profileImageUrl = freezed,
    Object? nickname = freezed,
    Object? city = freezed,
    Object? age = null,
    Object? isMutualLike = null,
    Object? createdAt = null,
  }) {
    return _then(_$FavoriteListItemResponseImpl(
      likeId: null == likeId
          ? _value.likeId
          : likeId // ignore: cast_nullable_to_non_nullable
              as int,
      opponentId: null == opponentId
          ? _value.opponentId
          : opponentId // ignore: cast_nullable_to_non_nullable
              as int,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      isMutualLike: null == isMutualLike
          ? _value.isMutualLike
          : isMutualLike // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteListItemResponseImpl extends _FavoriteListItemResponse {
  const _$FavoriteListItemResponseImpl(
      {required this.likeId,
      required this.opponentId,
      required this.profileImageUrl,
      required this.nickname,
      required this.city,
      required this.age,
      required this.isMutualLike,
      required this.createdAt})
      : super._();

  factory _$FavoriteListItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteListItemResponseImplFromJson(json);

  @override
  final int likeId;
  @override
  final int opponentId;
  @override
  final String? profileImageUrl;
  @override
  final String? nickname;
  @override
  final String? city;
  @override
  final int age;
  @override
  final bool isMutualLike;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'FavoriteListItemResponse(likeId: $likeId, opponentId: $opponentId, profileImageUrl: $profileImageUrl, nickname: $nickname, city: $city, age: $age, isMutualLike: $isMutualLike, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteListItemResponseImpl &&
            (identical(other.likeId, likeId) || other.likeId == likeId) &&
            (identical(other.opponentId, opponentId) ||
                other.opponentId == opponentId) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.isMutualLike, isMutualLike) ||
                other.isMutualLike == isMutualLike) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, likeId, opponentId,
      profileImageUrl, nickname, city, age, isMutualLike, createdAt);

  /// Create a copy of FavoriteListItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteListItemResponseImplCopyWith<_$FavoriteListItemResponseImpl>
      get copyWith => __$$FavoriteListItemResponseImplCopyWithImpl<
          _$FavoriteListItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteListItemResponseImplToJson(
      this,
    );
  }
}

abstract class _FavoriteListItemResponse extends FavoriteListItemResponse {
  const factory _FavoriteListItemResponse(
      {required final int likeId,
      required final int opponentId,
      required final String? profileImageUrl,
      required final String? nickname,
      required final String? city,
      required final int age,
      required final bool isMutualLike,
      required final DateTime createdAt}) = _$FavoriteListItemResponseImpl;
  const _FavoriteListItemResponse._() : super._();

  factory _FavoriteListItemResponse.fromJson(Map<String, dynamic> json) =
      _$FavoriteListItemResponseImpl.fromJson;

  @override
  int get likeId;
  @override
  int get opponentId;
  @override
  String? get profileImageUrl;
  @override
  String? get nickname;
  @override
  String? get city;
  @override
  int get age;
  @override
  bool get isMutualLike;
  @override
  DateTime get createdAt;

  /// Create a copy of FavoriteListItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteListItemResponseImplCopyWith<_$FavoriteListItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FavoriteListResponse _$FavoriteListResponseFromJson(Map<String, dynamic> json) {
  return _FavoriteListResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoriteListResponse {
  List<FavoriteListItemResponse> get likes =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Serializes this FavoriteListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteListResponseCopyWith<FavoriteListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteListResponseCopyWith<$Res> {
  factory $FavoriteListResponseCopyWith(FavoriteListResponse value,
          $Res Function(FavoriteListResponse) then) =
      _$FavoriteListResponseCopyWithImpl<$Res, FavoriteListResponse>;
  @useResult
  $Res call({List<FavoriteListItemResponse> likes, bool hasMore});
}

/// @nodoc
class _$FavoriteListResponseCopyWithImpl<$Res,
        $Val extends FavoriteListResponse>
    implements $FavoriteListResponseCopyWith<$Res> {
  _$FavoriteListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<FavoriteListItemResponse>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteListResponseImplCopyWith<$Res>
    implements $FavoriteListResponseCopyWith<$Res> {
  factory _$$FavoriteListResponseImplCopyWith(_$FavoriteListResponseImpl value,
          $Res Function(_$FavoriteListResponseImpl) then) =
      __$$FavoriteListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoriteListItemResponse> likes, bool hasMore});
}

/// @nodoc
class __$$FavoriteListResponseImplCopyWithImpl<$Res>
    extends _$FavoriteListResponseCopyWithImpl<$Res, _$FavoriteListResponseImpl>
    implements _$$FavoriteListResponseImplCopyWith<$Res> {
  __$$FavoriteListResponseImplCopyWithImpl(_$FavoriteListResponseImpl _value,
      $Res Function(_$FavoriteListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? hasMore = null,
  }) {
    return _then(_$FavoriteListResponseImpl(
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<FavoriteListItemResponse>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteListResponseImpl implements _FavoriteListResponse {
  const _$FavoriteListResponseImpl(
      {required final List<FavoriteListItemResponse> likes,
      required this.hasMore})
      : _likes = likes;

  factory _$FavoriteListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteListResponseImplFromJson(json);

  final List<FavoriteListItemResponse> _likes;
  @override
  List<FavoriteListItemResponse> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  final bool hasMore;

  @override
  String toString() {
    return 'FavoriteListResponse(likes: $likes, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteListResponseImpl &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_likes), hasMore);

  /// Create a copy of FavoriteListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteListResponseImplCopyWith<_$FavoriteListResponseImpl>
      get copyWith =>
          __$$FavoriteListResponseImplCopyWithImpl<_$FavoriteListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteListResponseImplToJson(
      this,
    );
  }
}

abstract class _FavoriteListResponse implements FavoriteListResponse {
  const factory _FavoriteListResponse(
      {required final List<FavoriteListItemResponse> likes,
      required final bool hasMore}) = _$FavoriteListResponseImpl;

  factory _FavoriteListResponse.fromJson(Map<String, dynamic> json) =
      _$FavoriteListResponseImpl.fromJson;

  @override
  List<FavoriteListItemResponse> get likes;
  @override
  bool get hasMore;

  /// Create a copy of FavoriteListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteListResponseImplCopyWith<_$FavoriteListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
