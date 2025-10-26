// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteListState {

 FavoriteListData get myFavoriteUsers; FavoriteListData get favoriteMeUsers; bool get isLoaded; FavoriteListErrorType? get error;
/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteListStateCopyWith<FavoriteListState> get copyWith => _$FavoriteListStateCopyWithImpl<FavoriteListState>(this as FavoriteListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteListState&&(identical(other.myFavoriteUsers, myFavoriteUsers) || other.myFavoriteUsers == myFavoriteUsers)&&(identical(other.favoriteMeUsers, favoriteMeUsers) || other.favoriteMeUsers == favoriteMeUsers)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,myFavoriteUsers,favoriteMeUsers,isLoaded,error);

@override
String toString() {
  return 'FavoriteListState(myFavoriteUsers: $myFavoriteUsers, favoriteMeUsers: $favoriteMeUsers, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class $FavoriteListStateCopyWith<$Res>  {
  factory $FavoriteListStateCopyWith(FavoriteListState value, $Res Function(FavoriteListState) _then) = _$FavoriteListStateCopyWithImpl;
@useResult
$Res call({
 FavoriteListData myFavoriteUsers, FavoriteListData favoriteMeUsers, bool isLoaded, FavoriteListErrorType? error
});




}
/// @nodoc
class _$FavoriteListStateCopyWithImpl<$Res>
    implements $FavoriteListStateCopyWith<$Res> {
  _$FavoriteListStateCopyWithImpl(this._self, this._then);

  final FavoriteListState _self;
  final $Res Function(FavoriteListState) _then;

/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? myFavoriteUsers = null,Object? favoriteMeUsers = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
myFavoriteUsers: null == myFavoriteUsers ? _self.myFavoriteUsers : myFavoriteUsers // ignore: cast_nullable_to_non_nullable
as FavoriteListData,favoriteMeUsers: null == favoriteMeUsers ? _self.favoriteMeUsers : favoriteMeUsers // ignore: cast_nullable_to_non_nullable
as FavoriteListData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FavoriteListErrorType?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteListState].
extension FavoriteListStatePatterns on FavoriteListState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteListState value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteListState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteListState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteListData myFavoriteUsers,  FavoriteListData favoriteMeUsers,  bool isLoaded,  FavoriteListErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
return $default(_that.myFavoriteUsers,_that.favoriteMeUsers,_that.isLoaded,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteListData myFavoriteUsers,  FavoriteListData favoriteMeUsers,  bool isLoaded,  FavoriteListErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _FavoriteListState():
return $default(_that.myFavoriteUsers,_that.favoriteMeUsers,_that.isLoaded,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteListData myFavoriteUsers,  FavoriteListData favoriteMeUsers,  bool isLoaded,  FavoriteListErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
return $default(_that.myFavoriteUsers,_that.favoriteMeUsers,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteListState extends FavoriteListState {
  const _FavoriteListState({this.myFavoriteUsers = const FavoriteListData(), this.favoriteMeUsers = const FavoriteListData(), this.isLoaded = false, this.error}): super._();
  

@override@JsonKey() final  FavoriteListData myFavoriteUsers;
@override@JsonKey() final  FavoriteListData favoriteMeUsers;
@override@JsonKey() final  bool isLoaded;
@override final  FavoriteListErrorType? error;

/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteListStateCopyWith<_FavoriteListState> get copyWith => __$FavoriteListStateCopyWithImpl<_FavoriteListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteListState&&(identical(other.myFavoriteUsers, myFavoriteUsers) || other.myFavoriteUsers == myFavoriteUsers)&&(identical(other.favoriteMeUsers, favoriteMeUsers) || other.favoriteMeUsers == favoriteMeUsers)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,myFavoriteUsers,favoriteMeUsers,isLoaded,error);

@override
String toString() {
  return 'FavoriteListState(myFavoriteUsers: $myFavoriteUsers, favoriteMeUsers: $favoriteMeUsers, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class _$FavoriteListStateCopyWith<$Res> implements $FavoriteListStateCopyWith<$Res> {
  factory _$FavoriteListStateCopyWith(_FavoriteListState value, $Res Function(_FavoriteListState) _then) = __$FavoriteListStateCopyWithImpl;
@override @useResult
$Res call({
 FavoriteListData myFavoriteUsers, FavoriteListData favoriteMeUsers, bool isLoaded, FavoriteListErrorType? error
});




}
/// @nodoc
class __$FavoriteListStateCopyWithImpl<$Res>
    implements _$FavoriteListStateCopyWith<$Res> {
  __$FavoriteListStateCopyWithImpl(this._self, this._then);

  final _FavoriteListState _self;
  final $Res Function(_FavoriteListState) _then;

/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? myFavoriteUsers = null,Object? favoriteMeUsers = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_FavoriteListState(
myFavoriteUsers: null == myFavoriteUsers ? _self.myFavoriteUsers : myFavoriteUsers // ignore: cast_nullable_to_non_nullable
as FavoriteListData,favoriteMeUsers: null == favoriteMeUsers ? _self.favoriteMeUsers : favoriteMeUsers // ignore: cast_nullable_to_non_nullable
as FavoriteListData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FavoriteListErrorType?,
  ));
}


}

// dart format on
