// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterviewState {
  InterviewData get questionList => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  InterviewListErrorType? get error => throw _privateConstructorUsedError;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewStateCopyWith<InterviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewStateCopyWith<$Res> {
  factory $InterviewStateCopyWith(
          InterviewState value, $Res Function(InterviewState) then) =
      _$InterviewStateCopyWithImpl<$Res, InterviewState>;
  @useResult
  $Res call(
      {InterviewData questionList,
      bool isLoaded,
      InterviewListErrorType? error});

  $InterviewDataCopyWith<$Res> get questionList;
}

/// @nodoc
class _$InterviewStateCopyWithImpl<$Res, $Val extends InterviewState>
    implements $InterviewStateCopyWith<$Res> {
  _$InterviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? isLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as InterviewData,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as InterviewListErrorType?,
    ) as $Val);
  }

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InterviewDataCopyWith<$Res> get questionList {
    return $InterviewDataCopyWith<$Res>(_value.questionList, (value) {
      return _then(_value.copyWith(questionList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterviewStateImplCopyWith<$Res>
    implements $InterviewStateCopyWith<$Res> {
  factory _$$InterviewStateImplCopyWith(_$InterviewStateImpl value,
          $Res Function(_$InterviewStateImpl) then) =
      __$$InterviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InterviewData questionList,
      bool isLoaded,
      InterviewListErrorType? error});

  @override
  $InterviewDataCopyWith<$Res> get questionList;
}

/// @nodoc
class __$$InterviewStateImplCopyWithImpl<$Res>
    extends _$InterviewStateCopyWithImpl<$Res, _$InterviewStateImpl>
    implements _$$InterviewStateImplCopyWith<$Res> {
  __$$InterviewStateImplCopyWithImpl(
      _$InterviewStateImpl _value, $Res Function(_$InterviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? isLoaded = null,
    Object? error = freezed,
  }) {
    return _then(_$InterviewStateImpl(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as InterviewData,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as InterviewListErrorType?,
    ));
  }
}

/// @nodoc

class _$InterviewStateImpl extends _InterviewState {
  const _$InterviewStateImpl(
      {this.questionList = const InterviewData(),
      this.isLoaded = false,
      this.error})
      : super._();

  @override
  @JsonKey()
  final InterviewData questionList;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  final InterviewListErrorType? error;

  @override
  String toString() {
    return 'InterviewState(questionList: $questionList, isLoaded: $isLoaded, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewStateImpl &&
            (identical(other.questionList, questionList) ||
                other.questionList == questionList) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionList, isLoaded, error);

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewStateImplCopyWith<_$InterviewStateImpl> get copyWith =>
      __$$InterviewStateImplCopyWithImpl<_$InterviewStateImpl>(
          this, _$identity);
}

abstract class _InterviewState extends InterviewState {
  const factory _InterviewState(
      {final InterviewData questionList,
      final bool isLoaded,
      final InterviewListErrorType? error}) = _$InterviewStateImpl;
  const _InterviewState._() : super._();

  @override
  InterviewData get questionList;
  @override
  bool get isLoaded;
  @override
  InterviewListErrorType? get error;

  /// Create a copy of InterviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewStateImplCopyWith<_$InterviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InterviewData {
  List<InterviewQuestionItem> get questionList =>
      throw _privateConstructorUsedError;

  /// Create a copy of InterviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewDataCopyWith<InterviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewDataCopyWith<$Res> {
  factory $InterviewDataCopyWith(
          InterviewData value, $Res Function(InterviewData) then) =
      _$InterviewDataCopyWithImpl<$Res, InterviewData>;
  @useResult
  $Res call({List<InterviewQuestionItem> questionList});
}

/// @nodoc
class _$InterviewDataCopyWithImpl<$Res, $Val extends InterviewData>
    implements $InterviewDataCopyWith<$Res> {
  _$InterviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
  }) {
    return _then(_value.copyWith(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<InterviewQuestionItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewDataImplCopyWith<$Res>
    implements $InterviewDataCopyWith<$Res> {
  factory _$$InterviewDataImplCopyWith(
          _$InterviewDataImpl value, $Res Function(_$InterviewDataImpl) then) =
      __$$InterviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<InterviewQuestionItem> questionList});
}

/// @nodoc
class __$$InterviewDataImplCopyWithImpl<$Res>
    extends _$InterviewDataCopyWithImpl<$Res, _$InterviewDataImpl>
    implements _$$InterviewDataImplCopyWith<$Res> {
  __$$InterviewDataImplCopyWithImpl(
      _$InterviewDataImpl _value, $Res Function(_$InterviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
  }) {
    return _then(_$InterviewDataImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<InterviewQuestionItem>,
    ));
  }
}

/// @nodoc

class _$InterviewDataImpl implements _InterviewData {
  const _$InterviewDataImpl(
      {final List<InterviewQuestionItem> questionList = const []})
      : _questionList = questionList;

  final List<InterviewQuestionItem> _questionList;
  @override
  @JsonKey()
  List<InterviewQuestionItem> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  String toString() {
    return 'InterviewData(questionList: $questionList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewDataImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionList));

  /// Create a copy of InterviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewDataImplCopyWith<_$InterviewDataImpl> get copyWith =>
      __$$InterviewDataImplCopyWithImpl<_$InterviewDataImpl>(this, _$identity);
}

abstract class _InterviewData implements InterviewData {
  const factory _InterviewData(
      {final List<InterviewQuestionItem> questionList}) = _$InterviewDataImpl;

  @override
  List<InterviewQuestionItem> get questionList;

  /// Create a copy of InterviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewDataImplCopyWith<_$InterviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
