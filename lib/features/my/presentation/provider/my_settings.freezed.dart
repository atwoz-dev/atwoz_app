// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MySettings {

 String get version; Set<UserNotificationType> get enabledNotifications; bool get notificationEnabled;
/// Create a copy of MySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MySettingsCopyWith<MySettings> get copyWith => _$MySettingsCopyWithImpl<MySettings>(this as MySettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MySettings&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.enabledNotifications, enabledNotifications)&&(identical(other.notificationEnabled, notificationEnabled) || other.notificationEnabled == notificationEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(enabledNotifications),notificationEnabled);

@override
String toString() {
  return 'MySettings(version: $version, enabledNotifications: $enabledNotifications, notificationEnabled: $notificationEnabled)';
}


}

/// @nodoc
abstract mixin class $MySettingsCopyWith<$Res>  {
  factory $MySettingsCopyWith(MySettings value, $Res Function(MySettings) _then) = _$MySettingsCopyWithImpl;
@useResult
$Res call({
 String version, Set<UserNotificationType> enabledNotifications, bool notificationEnabled
});




}
/// @nodoc
class _$MySettingsCopyWithImpl<$Res>
    implements $MySettingsCopyWith<$Res> {
  _$MySettingsCopyWithImpl(this._self, this._then);

  final MySettings _self;
  final $Res Function(MySettings) _then;

/// Create a copy of MySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? enabledNotifications = null,Object? notificationEnabled = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,enabledNotifications: null == enabledNotifications ? _self.enabledNotifications : enabledNotifications // ignore: cast_nullable_to_non_nullable
as Set<UserNotificationType>,notificationEnabled: null == notificationEnabled ? _self.notificationEnabled : notificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MySettings].
extension MySettingsPatterns on MySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MySettings value)  $default,){
final _that = this;
switch (_that) {
case _MySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MySettings value)?  $default,){
final _that = this;
switch (_that) {
case _MySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  Set<UserNotificationType> enabledNotifications,  bool notificationEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MySettings() when $default != null:
return $default(_that.version,_that.enabledNotifications,_that.notificationEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  Set<UserNotificationType> enabledNotifications,  bool notificationEnabled)  $default,) {final _that = this;
switch (_that) {
case _MySettings():
return $default(_that.version,_that.enabledNotifications,_that.notificationEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  Set<UserNotificationType> enabledNotifications,  bool notificationEnabled)?  $default,) {final _that = this;
switch (_that) {
case _MySettings() when $default != null:
return $default(_that.version,_that.enabledNotifications,_that.notificationEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _MySettings extends MySettings {
  const _MySettings({required this.version, required final  Set<UserNotificationType> enabledNotifications, required this.notificationEnabled}): _enabledNotifications = enabledNotifications,super._();
  

@override final  String version;
 final  Set<UserNotificationType> _enabledNotifications;
@override Set<UserNotificationType> get enabledNotifications {
  if (_enabledNotifications is EqualUnmodifiableSetView) return _enabledNotifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_enabledNotifications);
}

@override final  bool notificationEnabled;

/// Create a copy of MySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MySettingsCopyWith<_MySettings> get copyWith => __$MySettingsCopyWithImpl<_MySettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MySettings&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._enabledNotifications, _enabledNotifications)&&(identical(other.notificationEnabled, notificationEnabled) || other.notificationEnabled == notificationEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,version,const DeepCollectionEquality().hash(_enabledNotifications),notificationEnabled);

@override
String toString() {
  return 'MySettings(version: $version, enabledNotifications: $enabledNotifications, notificationEnabled: $notificationEnabled)';
}


}

/// @nodoc
abstract mixin class _$MySettingsCopyWith<$Res> implements $MySettingsCopyWith<$Res> {
  factory _$MySettingsCopyWith(_MySettings value, $Res Function(_MySettings) _then) = __$MySettingsCopyWithImpl;
@override @useResult
$Res call({
 String version, Set<UserNotificationType> enabledNotifications, bool notificationEnabled
});




}
/// @nodoc
class __$MySettingsCopyWithImpl<$Res>
    implements _$MySettingsCopyWith<$Res> {
  __$MySettingsCopyWithImpl(this._self, this._then);

  final _MySettings _self;
  final $Res Function(_MySettings) _then;

/// Create a copy of MySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? enabledNotifications = null,Object? notificationEnabled = null,}) {
  return _then(_MySettings(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,enabledNotifications: null == enabledNotifications ? _self._enabledNotifications : enabledNotifications // ignore: cast_nullable_to_non_nullable
as Set<UserNotificationType>,notificationEnabled: null == notificationEnabled ? _self.notificationEnabled : notificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
