// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MySettings {
  String get version => throw _privateConstructorUsedError;
  Set<UserNotificationType> get enabledNotifications =>
      throw _privateConstructorUsedError;
  bool get notificationEnabled => throw _privateConstructorUsedError;

  /// Create a copy of MySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MySettingsCopyWith<MySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySettingsCopyWith<$Res> {
  factory $MySettingsCopyWith(
          MySettings value, $Res Function(MySettings) then) =
      _$MySettingsCopyWithImpl<$Res, MySettings>;
  @useResult
  $Res call(
      {String version,
      Set<UserNotificationType> enabledNotifications,
      bool notificationEnabled});
}

/// @nodoc
class _$MySettingsCopyWithImpl<$Res, $Val extends MySettings>
    implements $MySettingsCopyWith<$Res> {
  _$MySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? enabledNotifications = null,
    Object? notificationEnabled = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      enabledNotifications: null == enabledNotifications
          ? _value.enabledNotifications
          : enabledNotifications // ignore: cast_nullable_to_non_nullable
              as Set<UserNotificationType>,
      notificationEnabled: null == notificationEnabled
          ? _value.notificationEnabled
          : notificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MySettingsImplCopyWith<$Res>
    implements $MySettingsCopyWith<$Res> {
  factory _$$MySettingsImplCopyWith(
          _$MySettingsImpl value, $Res Function(_$MySettingsImpl) then) =
      __$$MySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      Set<UserNotificationType> enabledNotifications,
      bool notificationEnabled});
}

/// @nodoc
class __$$MySettingsImplCopyWithImpl<$Res>
    extends _$MySettingsCopyWithImpl<$Res, _$MySettingsImpl>
    implements _$$MySettingsImplCopyWith<$Res> {
  __$$MySettingsImplCopyWithImpl(
      _$MySettingsImpl _value, $Res Function(_$MySettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MySettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? enabledNotifications = null,
    Object? notificationEnabled = null,
  }) {
    return _then(_$MySettingsImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      enabledNotifications: null == enabledNotifications
          ? _value._enabledNotifications
          : enabledNotifications // ignore: cast_nullable_to_non_nullable
              as Set<UserNotificationType>,
      notificationEnabled: null == notificationEnabled
          ? _value.notificationEnabled
          : notificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MySettingsImpl extends _MySettings {
  const _$MySettingsImpl(
      {required this.version,
      required final Set<UserNotificationType> enabledNotifications,
      required this.notificationEnabled})
      : _enabledNotifications = enabledNotifications,
        super._();

  @override
  final String version;
  final Set<UserNotificationType> _enabledNotifications;
  @override
  Set<UserNotificationType> get enabledNotifications {
    if (_enabledNotifications is EqualUnmodifiableSetView)
      return _enabledNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_enabledNotifications);
  }

  @override
  final bool notificationEnabled;

  @override
  String toString() {
    return 'MySettings(version: $version, enabledNotifications: $enabledNotifications, notificationEnabled: $notificationEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MySettingsImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._enabledNotifications, _enabledNotifications) &&
            (identical(other.notificationEnabled, notificationEnabled) ||
                other.notificationEnabled == notificationEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_enabledNotifications),
      notificationEnabled);

  /// Create a copy of MySettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MySettingsImplCopyWith<_$MySettingsImpl> get copyWith =>
      __$$MySettingsImplCopyWithImpl<_$MySettingsImpl>(this, _$identity);
}

abstract class _MySettings extends MySettings {
  const factory _MySettings(
      {required final String version,
      required final Set<UserNotificationType> enabledNotifications,
      required final bool notificationEnabled}) = _$MySettingsImpl;
  const _MySettings._() : super._();

  @override
  String get version;
  @override
  Set<UserNotificationType> get enabledNotifications;
  @override
  bool get notificationEnabled;

  /// Create a copy of MySettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MySettingsImplCopyWith<_$MySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
