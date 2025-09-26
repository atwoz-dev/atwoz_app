// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HeartHistoryState {
  HeartHistoryData get history => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  HeartHistoryErrorType? get error => throw _privateConstructorUsedError;

  /// Create a copy of HeartHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeartHistoryStateCopyWith<HeartHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartHistoryStateCopyWith<$Res> {
  factory $HeartHistoryStateCopyWith(
          HeartHistoryState value, $Res Function(HeartHistoryState) then) =
      _$HeartHistoryStateCopyWithImpl<$Res, HeartHistoryState>;
  @useResult
  $Res call(
      {HeartHistoryData history, bool isLoaded, HeartHistoryErrorType? error});

  $HeartHistoryDataCopyWith<$Res> get history;
}

/// @nodoc
class _$HeartHistoryStateCopyWithImpl<$Res, $Val extends HeartHistoryState>
    implements $HeartHistoryStateCopyWith<$Res> {
  _$HeartHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeartHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HeartHistoryData,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HeartHistoryErrorType?,
    ) as $Val);
  }

  /// Create a copy of HeartHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeartHistoryDataCopyWith<$Res> get history {
    return $HeartHistoryDataCopyWith<$Res>(_value.history, (value) {
      return _then(_value.copyWith(history: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeartHistoryStateImplCopyWith<$Res>
    implements $HeartHistoryStateCopyWith<$Res> {
  factory _$$HeartHistoryStateImplCopyWith(_$HeartHistoryStateImpl value,
          $Res Function(_$HeartHistoryStateImpl) then) =
      __$$HeartHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HeartHistoryData history, bool isLoaded, HeartHistoryErrorType? error});

  @override
  $HeartHistoryDataCopyWith<$Res> get history;
}

/// @nodoc
class __$$HeartHistoryStateImplCopyWithImpl<$Res>
    extends _$HeartHistoryStateCopyWithImpl<$Res, _$HeartHistoryStateImpl>
    implements _$$HeartHistoryStateImplCopyWith<$Res> {
  __$$HeartHistoryStateImplCopyWithImpl(_$HeartHistoryStateImpl _value,
      $Res Function(_$HeartHistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeartHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_$HeartHistoryStateImpl(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HeartHistoryData,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HeartHistoryErrorType?,
    ));
  }
}

/// @nodoc

class _$HeartHistoryStateImpl extends _HeartHistoryState {
  const _$HeartHistoryStateImpl(
      {this.history = const HeartHistoryData(),
      this.isLoaded = false,
      this.error})
      : super._();

  @override
  @JsonKey()
  final HeartHistoryData history;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  final HeartHistoryErrorType? error;

  @override
  String toString() {
    return 'HeartHistoryState(history: $history, isLoaded: $isLoaded, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartHistoryStateImpl &&
            (identical(other.history, history) || other.history == history) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, history, isLoaded, error);

  /// Create a copy of HeartHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartHistoryStateImplCopyWith<_$HeartHistoryStateImpl> get copyWith =>
      __$$HeartHistoryStateImplCopyWithImpl<_$HeartHistoryStateImpl>(
          this, _$identity);
}

abstract class _HeartHistoryState extends HeartHistoryState {
  const factory _HeartHistoryState(
      {final HeartHistoryData history,
      final bool isLoaded,
      final HeartHistoryErrorType? error}) = _$HeartHistoryStateImpl;
  const _HeartHistoryState._() : super._();

  @override
  HeartHistoryData get history;
  @override
  bool get isLoaded;
  @override
  HeartHistoryErrorType? get error;

  /// Create a copy of HeartHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeartHistoryStateImplCopyWith<_$HeartHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
