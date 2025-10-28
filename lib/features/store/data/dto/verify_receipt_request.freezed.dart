// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_receipt_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyReceiptRequest {

 String get appReceipt;
/// Create a copy of VerifyReceiptRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyReceiptRequestCopyWith<VerifyReceiptRequest> get copyWith => _$VerifyReceiptRequestCopyWithImpl<VerifyReceiptRequest>(this as VerifyReceiptRequest, _$identity);

  /// Serializes this VerifyReceiptRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyReceiptRequest&&(identical(other.appReceipt, appReceipt) || other.appReceipt == appReceipt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appReceipt);

@override
String toString() {
  return 'VerifyReceiptRequest(appReceipt: $appReceipt)';
}


}

/// @nodoc
abstract mixin class $VerifyReceiptRequestCopyWith<$Res>  {
  factory $VerifyReceiptRequestCopyWith(VerifyReceiptRequest value, $Res Function(VerifyReceiptRequest) _then) = _$VerifyReceiptRequestCopyWithImpl;
@useResult
$Res call({
 String appReceipt
});




}
/// @nodoc
class _$VerifyReceiptRequestCopyWithImpl<$Res>
    implements $VerifyReceiptRequestCopyWith<$Res> {
  _$VerifyReceiptRequestCopyWithImpl(this._self, this._then);

  final VerifyReceiptRequest _self;
  final $Res Function(VerifyReceiptRequest) _then;

/// Create a copy of VerifyReceiptRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appReceipt = null,}) {
  return _then(_self.copyWith(
appReceipt: null == appReceipt ? _self.appReceipt : appReceipt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyReceiptRequest].
extension VerifyReceiptRequestPatterns on VerifyReceiptRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyReceiptRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyReceiptRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyReceiptRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyReceiptRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyReceiptRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyReceiptRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appReceipt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyReceiptRequest() when $default != null:
return $default(_that.appReceipt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appReceipt)  $default,) {final _that = this;
switch (_that) {
case _VerifyReceiptRequest():
return $default(_that.appReceipt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appReceipt)?  $default,) {final _that = this;
switch (_that) {
case _VerifyReceiptRequest() when $default != null:
return $default(_that.appReceipt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyReceiptRequest implements VerifyReceiptRequest {
  const _VerifyReceiptRequest({required this.appReceipt});
  factory _VerifyReceiptRequest.fromJson(Map<String, dynamic> json) => _$VerifyReceiptRequestFromJson(json);

@override final  String appReceipt;

/// Create a copy of VerifyReceiptRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyReceiptRequestCopyWith<_VerifyReceiptRequest> get copyWith => __$VerifyReceiptRequestCopyWithImpl<_VerifyReceiptRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyReceiptRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyReceiptRequest&&(identical(other.appReceipt, appReceipt) || other.appReceipt == appReceipt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appReceipt);

@override
String toString() {
  return 'VerifyReceiptRequest(appReceipt: $appReceipt)';
}


}

/// @nodoc
abstract mixin class _$VerifyReceiptRequestCopyWith<$Res> implements $VerifyReceiptRequestCopyWith<$Res> {
  factory _$VerifyReceiptRequestCopyWith(_VerifyReceiptRequest value, $Res Function(_VerifyReceiptRequest) _then) = __$VerifyReceiptRequestCopyWithImpl;
@override @useResult
$Res call({
 String appReceipt
});




}
/// @nodoc
class __$VerifyReceiptRequestCopyWithImpl<$Res>
    implements _$VerifyReceiptRequestCopyWith<$Res> {
  __$VerifyReceiptRequestCopyWithImpl(this._self, this._then);

  final _VerifyReceiptRequest _self;
  final $Res Function(_VerifyReceiptRequest) _then;

/// Create a copy of VerifyReceiptRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appReceipt = null,}) {
  return _then(_VerifyReceiptRequest(
appReceipt: null == appReceipt ? _self.appReceipt : appReceipt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
