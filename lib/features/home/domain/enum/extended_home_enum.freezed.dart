// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_home_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtendedHomeEnum<T extends Enum> {

 T? get status; String get label;
/// Create a copy of ExtendedHomeEnum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedHomeEnumCopyWith<T, ExtendedHomeEnum<T>> get copyWith => _$ExtendedHomeEnumCopyWithImpl<T, ExtendedHomeEnum<T>>(this as ExtendedHomeEnum<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedHomeEnum<T>&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(status),label);

@override
String toString() {
  return 'ExtendedHomeEnum<$T>(status: $status, label: $label)';
}


}

/// @nodoc
abstract mixin class $ExtendedHomeEnumCopyWith<T extends Enum,$Res>  {
  factory $ExtendedHomeEnumCopyWith(ExtendedHomeEnum<T> value, $Res Function(ExtendedHomeEnum<T>) _then) = _$ExtendedHomeEnumCopyWithImpl;
@useResult
$Res call({
 T? status, String label
});




}
/// @nodoc
class _$ExtendedHomeEnumCopyWithImpl<T extends Enum,$Res>
    implements $ExtendedHomeEnumCopyWith<T, $Res> {
  _$ExtendedHomeEnumCopyWithImpl(this._self, this._then);

  final ExtendedHomeEnum<T> _self;
  final $Res Function(ExtendedHomeEnum<T>) _then;

/// Create a copy of ExtendedHomeEnum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? label = null,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as T?,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtendedHomeEnum].
extension ExtendedHomeEnumPatterns<T extends Enum> on ExtendedHomeEnum<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtendedHomeEnum<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtendedHomeEnum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtendedHomeEnum<T> value)  $default,){
final _that = this;
switch (_that) {
case _ExtendedHomeEnum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtendedHomeEnum<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ExtendedHomeEnum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T? status,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtendedHomeEnum() when $default != null:
return $default(_that.status,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T? status,  String label)  $default,) {final _that = this;
switch (_that) {
case _ExtendedHomeEnum():
return $default(_that.status,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T? status,  String label)?  $default,) {final _that = this;
switch (_that) {
case _ExtendedHomeEnum() when $default != null:
return $default(_that.status,_that.label);case _:
  return null;

}
}

}

/// @nodoc


class _ExtendedHomeEnum<T extends Enum> extends ExtendedHomeEnum<T> {
  const _ExtendedHomeEnum({this.status, required this.label}): super._();
  

@override final  T? status;
@override final  String label;

/// Create a copy of ExtendedHomeEnum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtendedHomeEnumCopyWith<T, _ExtendedHomeEnum<T>> get copyWith => __$ExtendedHomeEnumCopyWithImpl<T, _ExtendedHomeEnum<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtendedHomeEnum<T>&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(status),label);

@override
String toString() {
  return 'ExtendedHomeEnum<$T>(status: $status, label: $label)';
}


}

/// @nodoc
abstract mixin class _$ExtendedHomeEnumCopyWith<T extends Enum,$Res> implements $ExtendedHomeEnumCopyWith<T, $Res> {
  factory _$ExtendedHomeEnumCopyWith(_ExtendedHomeEnum<T> value, $Res Function(_ExtendedHomeEnum<T>) _then) = __$ExtendedHomeEnumCopyWithImpl;
@override @useResult
$Res call({
 T? status, String label
});




}
/// @nodoc
class __$ExtendedHomeEnumCopyWithImpl<T extends Enum,$Res>
    implements _$ExtendedHomeEnumCopyWith<T, $Res> {
  __$ExtendedHomeEnumCopyWithImpl(this._self, this._then);

  final _ExtendedHomeEnum<T> _self;
  final $Res Function(_ExtendedHomeEnum<T>) _then;

/// Create a copy of ExtendedHomeEnum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? label = null,}) {
  return _then(_ExtendedHomeEnum<T>(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as T?,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
