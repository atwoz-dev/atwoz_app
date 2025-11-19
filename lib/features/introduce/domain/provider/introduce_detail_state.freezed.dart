// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduce_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IntroduceDetailState {

 IntroduceDetailData? get introduceDetail; UserProfile? get profile; bool get isLoaded;
/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntroduceDetailStateCopyWith<IntroduceDetailState> get copyWith => _$IntroduceDetailStateCopyWithImpl<IntroduceDetailState>(this as IntroduceDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntroduceDetailState&&(identical(other.introduceDetail, introduceDetail) || other.introduceDetail == introduceDetail)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,introduceDetail,profile,isLoaded);

@override
String toString() {
  return 'IntroduceDetailState(introduceDetail: $introduceDetail, profile: $profile, isLoaded: $isLoaded)';
}


}

/// @nodoc
abstract mixin class $IntroduceDetailStateCopyWith<$Res>  {
  factory $IntroduceDetailStateCopyWith(IntroduceDetailState value, $Res Function(IntroduceDetailState) _then) = _$IntroduceDetailStateCopyWithImpl;
@useResult
$Res call({
 IntroduceDetailData? introduceDetail, UserProfile? profile, bool isLoaded
});


$IntroduceDetailDataCopyWith<$Res>? get introduceDetail;$UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class _$IntroduceDetailStateCopyWithImpl<$Res>
    implements $IntroduceDetailStateCopyWith<$Res> {
  _$IntroduceDetailStateCopyWithImpl(this._self, this._then);

  final IntroduceDetailState _self;
  final $Res Function(IntroduceDetailState) _then;

/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? introduceDetail = freezed,Object? profile = freezed,Object? isLoaded = null,}) {
  return _then(_self.copyWith(
introduceDetail: freezed == introduceDetail ? _self.introduceDetail : introduceDetail // ignore: cast_nullable_to_non_nullable
as IntroduceDetailData?,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDetailDataCopyWith<$Res>? get introduceDetail {
    if (_self.introduceDetail == null) {
    return null;
  }

  return $IntroduceDetailDataCopyWith<$Res>(_self.introduceDetail!, (value) {
    return _then(_self.copyWith(introduceDetail: value));
  });
}/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [IntroduceDetailState].
extension IntroduceDetailStatePatterns on IntroduceDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntroduceDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntroduceDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntroduceDetailState value)  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntroduceDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _IntroduceDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( IntroduceDetailData? introduceDetail,  UserProfile? profile,  bool isLoaded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntroduceDetailState() when $default != null:
return $default(_that.introduceDetail,_that.profile,_that.isLoaded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( IntroduceDetailData? introduceDetail,  UserProfile? profile,  bool isLoaded)  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailState():
return $default(_that.introduceDetail,_that.profile,_that.isLoaded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( IntroduceDetailData? introduceDetail,  UserProfile? profile,  bool isLoaded)?  $default,) {final _that = this;
switch (_that) {
case _IntroduceDetailState() when $default != null:
return $default(_that.introduceDetail,_that.profile,_that.isLoaded);case _:
  return null;

}
}

}

/// @nodoc


class _IntroduceDetailState extends IntroduceDetailState {
  const _IntroduceDetailState({this.introduceDetail = null, this.profile = null, this.isLoaded = false}): super._();
  

@override@JsonKey() final  IntroduceDetailData? introduceDetail;
@override@JsonKey() final  UserProfile? profile;
@override@JsonKey() final  bool isLoaded;

/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntroduceDetailStateCopyWith<_IntroduceDetailState> get copyWith => __$IntroduceDetailStateCopyWithImpl<_IntroduceDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntroduceDetailState&&(identical(other.introduceDetail, introduceDetail) || other.introduceDetail == introduceDetail)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,introduceDetail,profile,isLoaded);

@override
String toString() {
  return 'IntroduceDetailState(introduceDetail: $introduceDetail, profile: $profile, isLoaded: $isLoaded)';
}


}

/// @nodoc
abstract mixin class _$IntroduceDetailStateCopyWith<$Res> implements $IntroduceDetailStateCopyWith<$Res> {
  factory _$IntroduceDetailStateCopyWith(_IntroduceDetailState value, $Res Function(_IntroduceDetailState) _then) = __$IntroduceDetailStateCopyWithImpl;
@override @useResult
$Res call({
 IntroduceDetailData? introduceDetail, UserProfile? profile, bool isLoaded
});


@override $IntroduceDetailDataCopyWith<$Res>? get introduceDetail;@override $UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class __$IntroduceDetailStateCopyWithImpl<$Res>
    implements _$IntroduceDetailStateCopyWith<$Res> {
  __$IntroduceDetailStateCopyWithImpl(this._self, this._then);

  final _IntroduceDetailState _self;
  final $Res Function(_IntroduceDetailState) _then;

/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? introduceDetail = freezed,Object? profile = freezed,Object? isLoaded = null,}) {
  return _then(_IntroduceDetailState(
introduceDetail: freezed == introduceDetail ? _self.introduceDetail : introduceDetail // ignore: cast_nullable_to_non_nullable
as IntroduceDetailData?,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntroduceDetailDataCopyWith<$Res>? get introduceDetail {
    if (_self.introduceDetail == null) {
    return null;
  }

  return $IntroduceDetailDataCopyWith<$Res>(_self.introduceDetail!, (value) {
    return _then(_self.copyWith(introduceDetail: value));
  });
}/// Create a copy of IntroduceDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
