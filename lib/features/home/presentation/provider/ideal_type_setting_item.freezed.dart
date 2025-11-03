// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideal_type_setting_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IdealTypeSettingItem {

 String get label; String get placeholder; List<String> get options; IdealTypeDialogType get type; int get maxSelectableCount;
/// Create a copy of IdealTypeSettingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdealTypeSettingItemCopyWith<IdealTypeSettingItem> get copyWith => _$IdealTypeSettingItemCopyWithImpl<IdealTypeSettingItem>(this as IdealTypeSettingItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdealTypeSettingItem&&(identical(other.label, label) || other.label == label)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.type, type) || other.type == type)&&(identical(other.maxSelectableCount, maxSelectableCount) || other.maxSelectableCount == maxSelectableCount));
}


@override
int get hashCode => Object.hash(runtimeType,label,placeholder,const DeepCollectionEquality().hash(options),type,maxSelectableCount);

@override
String toString() {
  return 'IdealTypeSettingItem(label: $label, placeholder: $placeholder, options: $options, type: $type, maxSelectableCount: $maxSelectableCount)';
}


}

/// @nodoc
abstract mixin class $IdealTypeSettingItemCopyWith<$Res>  {
  factory $IdealTypeSettingItemCopyWith(IdealTypeSettingItem value, $Res Function(IdealTypeSettingItem) _then) = _$IdealTypeSettingItemCopyWithImpl;
@useResult
$Res call({
 String label, String placeholder, List<String> options, IdealTypeDialogType type, int maxSelectableCount
});




}
/// @nodoc
class _$IdealTypeSettingItemCopyWithImpl<$Res>
    implements $IdealTypeSettingItemCopyWith<$Res> {
  _$IdealTypeSettingItemCopyWithImpl(this._self, this._then);

  final IdealTypeSettingItem _self;
  final $Res Function(IdealTypeSettingItem) _then;

/// Create a copy of IdealTypeSettingItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? placeholder = null,Object? options = null,Object? type = null,Object? maxSelectableCount = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,placeholder: null == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IdealTypeDialogType,maxSelectableCount: null == maxSelectableCount ? _self.maxSelectableCount : maxSelectableCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IdealTypeSettingItem].
extension IdealTypeSettingItemPatterns on IdealTypeSettingItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdealTypeSettingItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdealTypeSettingItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdealTypeSettingItem value)  $default,){
final _that = this;
switch (_that) {
case _IdealTypeSettingItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdealTypeSettingItem value)?  $default,){
final _that = this;
switch (_that) {
case _IdealTypeSettingItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String placeholder,  List<String> options,  IdealTypeDialogType type,  int maxSelectableCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdealTypeSettingItem() when $default != null:
return $default(_that.label,_that.placeholder,_that.options,_that.type,_that.maxSelectableCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String placeholder,  List<String> options,  IdealTypeDialogType type,  int maxSelectableCount)  $default,) {final _that = this;
switch (_that) {
case _IdealTypeSettingItem():
return $default(_that.label,_that.placeholder,_that.options,_that.type,_that.maxSelectableCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String placeholder,  List<String> options,  IdealTypeDialogType type,  int maxSelectableCount)?  $default,) {final _that = this;
switch (_that) {
case _IdealTypeSettingItem() when $default != null:
return $default(_that.label,_that.placeholder,_that.options,_that.type,_that.maxSelectableCount);case _:
  return null;

}
}

}

/// @nodoc


class _IdealTypeSettingItem implements IdealTypeSettingItem {
  const _IdealTypeSettingItem({required this.label, required this.placeholder, required final  List<String> options, this.type = IdealTypeDialogType.single, this.maxSelectableCount = 1}): _options = options;
  

@override final  String label;
@override final  String placeholder;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override@JsonKey() final  IdealTypeDialogType type;
@override@JsonKey() final  int maxSelectableCount;

/// Create a copy of IdealTypeSettingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdealTypeSettingItemCopyWith<_IdealTypeSettingItem> get copyWith => __$IdealTypeSettingItemCopyWithImpl<_IdealTypeSettingItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdealTypeSettingItem&&(identical(other.label, label) || other.label == label)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.type, type) || other.type == type)&&(identical(other.maxSelectableCount, maxSelectableCount) || other.maxSelectableCount == maxSelectableCount));
}


@override
int get hashCode => Object.hash(runtimeType,label,placeholder,const DeepCollectionEquality().hash(_options),type,maxSelectableCount);

@override
String toString() {
  return 'IdealTypeSettingItem(label: $label, placeholder: $placeholder, options: $options, type: $type, maxSelectableCount: $maxSelectableCount)';
}


}

/// @nodoc
abstract mixin class _$IdealTypeSettingItemCopyWith<$Res> implements $IdealTypeSettingItemCopyWith<$Res> {
  factory _$IdealTypeSettingItemCopyWith(_IdealTypeSettingItem value, $Res Function(_IdealTypeSettingItem) _then) = __$IdealTypeSettingItemCopyWithImpl;
@override @useResult
$Res call({
 String label, String placeholder, List<String> options, IdealTypeDialogType type, int maxSelectableCount
});




}
/// @nodoc
class __$IdealTypeSettingItemCopyWithImpl<$Res>
    implements _$IdealTypeSettingItemCopyWith<$Res> {
  __$IdealTypeSettingItemCopyWithImpl(this._self, this._then);

  final _IdealTypeSettingItem _self;
  final $Res Function(_IdealTypeSettingItem) _then;

/// Create a copy of IdealTypeSettingItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? placeholder = null,Object? options = null,Object? type = null,Object? maxSelectableCount = null,}) {
  return _then(_IdealTypeSettingItem(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,placeholder: null == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as IdealTypeDialogType,maxSelectableCount: null == maxSelectableCount ? _self.maxSelectableCount : maxSelectableCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
