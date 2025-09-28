// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactSettingState {
  ContactMethod? get method => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get kakao => throw _privateConstructorUsedError;

  /// Create a copy of ContactSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactSettingStateCopyWith<ContactSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactSettingStateCopyWith<$Res> {
  factory $ContactSettingStateCopyWith(
          ContactSettingState value, $Res Function(ContactSettingState) then) =
      _$ContactSettingStateCopyWithImpl<$Res, ContactSettingState>;
  @useResult
  $Res call({ContactMethod? method, String phone, String kakao});
}

/// @nodoc
class _$ContactSettingStateCopyWithImpl<$Res, $Val extends ContactSettingState>
    implements $ContactSettingStateCopyWith<$Res> {
  _$ContactSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? phone = null,
    Object? kakao = null,
  }) {
    return _then(_value.copyWith(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as ContactMethod?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kakao: null == kakao
          ? _value.kakao
          : kakao // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactSettingStateImplCopyWith<$Res>
    implements $ContactSettingStateCopyWith<$Res> {
  factory _$$ContactSettingStateImplCopyWith(_$ContactSettingStateImpl value,
          $Res Function(_$ContactSettingStateImpl) then) =
      __$$ContactSettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContactMethod? method, String phone, String kakao});
}

/// @nodoc
class __$$ContactSettingStateImplCopyWithImpl<$Res>
    extends _$ContactSettingStateCopyWithImpl<$Res, _$ContactSettingStateImpl>
    implements _$$ContactSettingStateImplCopyWith<$Res> {
  __$$ContactSettingStateImplCopyWithImpl(_$ContactSettingStateImpl _value,
      $Res Function(_$ContactSettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? phone = null,
    Object? kakao = null,
  }) {
    return _then(_$ContactSettingStateImpl(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as ContactMethod?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kakao: null == kakao
          ? _value.kakao
          : kakao // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactSettingStateImpl extends _ContactSettingState {
  const _$ContactSettingStateImpl(
      {required this.method, required this.phone, required this.kakao})
      : super._();

  @override
  final ContactMethod? method;
  @override
  final String phone;
  @override
  final String kakao;

  @override
  String toString() {
    return 'ContactSettingState(method: $method, phone: $phone, kakao: $kakao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactSettingStateImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.kakao, kakao) || other.kakao == kakao));
  }

  @override
  int get hashCode => Object.hash(runtimeType, method, phone, kakao);

  /// Create a copy of ContactSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactSettingStateImplCopyWith<_$ContactSettingStateImpl> get copyWith =>
      __$$ContactSettingStateImplCopyWithImpl<_$ContactSettingStateImpl>(
          this, _$identity);
}

abstract class _ContactSettingState extends ContactSettingState {
  const factory _ContactSettingState(
      {required final ContactMethod? method,
      required final String phone,
      required final String kakao}) = _$ContactSettingStateImpl;
  const _ContactSettingState._() : super._();

  @override
  ContactMethod? get method;
  @override
  String get phone;
  @override
  String get kakao;

  /// Create a copy of ContactSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactSettingStateImplCopyWith<_$ContactSettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
