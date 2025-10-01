// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamState {
  QuestionData get questionList => throw _privateConstructorUsedError;
  SoulmateData get soulmateList => throw _privateConstructorUsedError;
  int get currentSubjectIndex => throw _privateConstructorUsedError;
  bool get isSubjectOptional => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isRequiredDataLoaded => throw _privateConstructorUsedError;
  bool get hasResultData => throw _privateConstructorUsedError;
  bool get hasSoulmate => throw _privateConstructorUsedError;
  StoreData get heartBalance => throw _privateConstructorUsedError;
  QuestionListErrorType? get error => throw _privateConstructorUsedError;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamStateCopyWith<ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
  @useResult
  $Res call(
      {QuestionData questionList,
      SoulmateData soulmateList,
      int currentSubjectIndex,
      bool isSubjectOptional,
      bool isDone,
      bool isLoaded,
      bool isRequiredDataLoaded,
      bool hasResultData,
      bool hasSoulmate,
      StoreData heartBalance,
      QuestionListErrorType? error});

  $QuestionDataCopyWith<$Res> get questionList;
  $SoulmateDataCopyWith<$Res> get soulmateList;
  $StoreDataCopyWith<$Res> get heartBalance;
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? soulmateList = null,
    Object? currentSubjectIndex = null,
    Object? isSubjectOptional = null,
    Object? isDone = null,
    Object? isLoaded = null,
    Object? isRequiredDataLoaded = null,
    Object? hasResultData = null,
    Object? hasSoulmate = null,
    Object? heartBalance = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as QuestionData,
      soulmateList: null == soulmateList
          ? _value.soulmateList
          : soulmateList // ignore: cast_nullable_to_non_nullable
              as SoulmateData,
      currentSubjectIndex: null == currentSubjectIndex
          ? _value.currentSubjectIndex
          : currentSubjectIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isSubjectOptional: null == isSubjectOptional
          ? _value.isSubjectOptional
          : isSubjectOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequiredDataLoaded: null == isRequiredDataLoaded
          ? _value.isRequiredDataLoaded
          : isRequiredDataLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasResultData: null == hasResultData
          ? _value.hasResultData
          : hasResultData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSoulmate: null == hasSoulmate
          ? _value.hasSoulmate
          : hasSoulmate // ignore: cast_nullable_to_non_nullable
              as bool,
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as StoreData,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as QuestionListErrorType?,
    ) as $Val);
  }

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionDataCopyWith<$Res> get questionList {
    return $QuestionDataCopyWith<$Res>(_value.questionList, (value) {
      return _then(_value.copyWith(questionList: value) as $Val);
    });
  }

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SoulmateDataCopyWith<$Res> get soulmateList {
    return $SoulmateDataCopyWith<$Res>(_value.soulmateList, (value) {
      return _then(_value.copyWith(soulmateList: value) as $Val);
    });
  }

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreDataCopyWith<$Res> get heartBalance {
    return $StoreDataCopyWith<$Res>(_value.heartBalance, (value) {
      return _then(_value.copyWith(heartBalance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExamStateImplCopyWith<$Res>
    implements $ExamStateCopyWith<$Res> {
  factory _$$ExamStateImplCopyWith(
          _$ExamStateImpl value, $Res Function(_$ExamStateImpl) then) =
      __$$ExamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuestionData questionList,
      SoulmateData soulmateList,
      int currentSubjectIndex,
      bool isSubjectOptional,
      bool isDone,
      bool isLoaded,
      bool isRequiredDataLoaded,
      bool hasResultData,
      bool hasSoulmate,
      StoreData heartBalance,
      QuestionListErrorType? error});

  @override
  $QuestionDataCopyWith<$Res> get questionList;
  @override
  $SoulmateDataCopyWith<$Res> get soulmateList;
  @override
  $StoreDataCopyWith<$Res> get heartBalance;
}

/// @nodoc
class __$$ExamStateImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateImpl>
    implements _$$ExamStateImplCopyWith<$Res> {
  __$$ExamStateImplCopyWithImpl(
      _$ExamStateImpl _value, $Res Function(_$ExamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? soulmateList = null,
    Object? currentSubjectIndex = null,
    Object? isSubjectOptional = null,
    Object? isDone = null,
    Object? isLoaded = null,
    Object? isRequiredDataLoaded = null,
    Object? hasResultData = null,
    Object? hasSoulmate = null,
    Object? heartBalance = null,
    Object? error = freezed,
  }) {
    return _then(_$ExamStateImpl(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as QuestionData,
      soulmateList: null == soulmateList
          ? _value.soulmateList
          : soulmateList // ignore: cast_nullable_to_non_nullable
              as SoulmateData,
      currentSubjectIndex: null == currentSubjectIndex
          ? _value.currentSubjectIndex
          : currentSubjectIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isSubjectOptional: null == isSubjectOptional
          ? _value.isSubjectOptional
          : isSubjectOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequiredDataLoaded: null == isRequiredDataLoaded
          ? _value.isRequiredDataLoaded
          : isRequiredDataLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasResultData: null == hasResultData
          ? _value.hasResultData
          : hasResultData // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSoulmate: null == hasSoulmate
          ? _value.hasSoulmate
          : hasSoulmate // ignore: cast_nullable_to_non_nullable
              as bool,
      heartBalance: null == heartBalance
          ? _value.heartBalance
          : heartBalance // ignore: cast_nullable_to_non_nullable
              as StoreData,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as QuestionListErrorType?,
    ));
  }
}

/// @nodoc

class _$ExamStateImpl extends _ExamState {
  const _$ExamStateImpl(
      {this.questionList = const QuestionData(),
      this.soulmateList = const SoulmateData(),
      this.currentSubjectIndex = 0,
      this.isSubjectOptional = false,
      this.isDone = false,
      this.isLoaded = false,
      this.isRequiredDataLoaded = false,
      this.hasResultData = false,
      this.hasSoulmate = false,
      this.heartBalance = const StoreData(),
      this.error})
      : super._();

  @override
  @JsonKey()
  final QuestionData questionList;
  @override
  @JsonKey()
  final SoulmateData soulmateList;
  @override
  @JsonKey()
  final int currentSubjectIndex;
  @override
  @JsonKey()
  final bool isSubjectOptional;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final bool isRequiredDataLoaded;
  @override
  @JsonKey()
  final bool hasResultData;
  @override
  @JsonKey()
  final bool hasSoulmate;
  @override
  @JsonKey()
  final StoreData heartBalance;
  @override
  final QuestionListErrorType? error;

  @override
  String toString() {
    return 'ExamState(questionList: $questionList, soulmateList: $soulmateList, currentSubjectIndex: $currentSubjectIndex, isSubjectOptional: $isSubjectOptional, isDone: $isDone, isLoaded: $isLoaded, isRequiredDataLoaded: $isRequiredDataLoaded, hasResultData: $hasResultData, hasSoulmate: $hasSoulmate, heartBalance: $heartBalance, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateImpl &&
            (identical(other.questionList, questionList) ||
                other.questionList == questionList) &&
            (identical(other.soulmateList, soulmateList) ||
                other.soulmateList == soulmateList) &&
            (identical(other.currentSubjectIndex, currentSubjectIndex) ||
                other.currentSubjectIndex == currentSubjectIndex) &&
            (identical(other.isSubjectOptional, isSubjectOptional) ||
                other.isSubjectOptional == isSubjectOptional) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isRequiredDataLoaded, isRequiredDataLoaded) ||
                other.isRequiredDataLoaded == isRequiredDataLoaded) &&
            (identical(other.hasResultData, hasResultData) ||
                other.hasResultData == hasResultData) &&
            (identical(other.hasSoulmate, hasSoulmate) ||
                other.hasSoulmate == hasSoulmate) &&
            (identical(other.heartBalance, heartBalance) ||
                other.heartBalance == heartBalance) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionList,
      soulmateList,
      currentSubjectIndex,
      isSubjectOptional,
      isDone,
      isLoaded,
      isRequiredDataLoaded,
      hasResultData,
      hasSoulmate,
      heartBalance,
      error);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateImplCopyWith<_$ExamStateImpl> get copyWith =>
      __$$ExamStateImplCopyWithImpl<_$ExamStateImpl>(this, _$identity);
}

abstract class _ExamState extends ExamState {
  const factory _ExamState(
      {final QuestionData questionList,
      final SoulmateData soulmateList,
      final int currentSubjectIndex,
      final bool isSubjectOptional,
      final bool isDone,
      final bool isLoaded,
      final bool isRequiredDataLoaded,
      final bool hasResultData,
      final bool hasSoulmate,
      final StoreData heartBalance,
      final QuestionListErrorType? error}) = _$ExamStateImpl;
  const _ExamState._() : super._();

  @override
  QuestionData get questionList;
  @override
  SoulmateData get soulmateList;
  @override
  int get currentSubjectIndex;
  @override
  bool get isSubjectOptional;
  @override
  bool get isDone;
  @override
  bool get isLoaded;
  @override
  bool get isRequiredDataLoaded;
  @override
  bool get hasResultData;
  @override
  bool get hasSoulmate;
  @override
  StoreData get heartBalance;
  @override
  QuestionListErrorType? get error;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateImplCopyWith<_$ExamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionData {
  List<SubjectItem> get questionList => throw _privateConstructorUsedError;

  /// Create a copy of QuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionDataCopyWith<QuestionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDataCopyWith<$Res> {
  factory $QuestionDataCopyWith(
          QuestionData value, $Res Function(QuestionData) then) =
      _$QuestionDataCopyWithImpl<$Res, QuestionData>;
  @useResult
  $Res call({List<SubjectItem> questionList});
}

/// @nodoc
class _$QuestionDataCopyWithImpl<$Res, $Val extends QuestionData>
    implements $QuestionDataCopyWith<$Res> {
  _$QuestionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionData
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
              as List<SubjectItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionDataImplCopyWith<$Res>
    implements $QuestionDataCopyWith<$Res> {
  factory _$$QuestionDataImplCopyWith(
          _$QuestionDataImpl value, $Res Function(_$QuestionDataImpl) then) =
      __$$QuestionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubjectItem> questionList});
}

/// @nodoc
class __$$QuestionDataImplCopyWithImpl<$Res>
    extends _$QuestionDataCopyWithImpl<$Res, _$QuestionDataImpl>
    implements _$$QuestionDataImplCopyWith<$Res> {
  __$$QuestionDataImplCopyWithImpl(
      _$QuestionDataImpl _value, $Res Function(_$QuestionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
  }) {
    return _then(_$QuestionDataImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<SubjectItem>,
    ));
  }
}

/// @nodoc

class _$QuestionDataImpl implements _QuestionData {
  const _$QuestionDataImpl({final List<SubjectItem> questionList = const []})
      : _questionList = questionList;

  final List<SubjectItem> _questionList;
  @override
  @JsonKey()
  List<SubjectItem> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  String toString() {
    return 'QuestionData(questionList: $questionList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDataImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionList));

  /// Create a copy of QuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDataImplCopyWith<_$QuestionDataImpl> get copyWith =>
      __$$QuestionDataImplCopyWithImpl<_$QuestionDataImpl>(this, _$identity);
}

abstract class _QuestionData implements QuestionData {
  const factory _QuestionData({final List<SubjectItem> questionList}) =
      _$QuestionDataImpl;

  @override
  List<SubjectItem> get questionList;

  /// Create a copy of QuestionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionDataImplCopyWith<_$QuestionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SoulmateData {
  List<IntroducedProfile> get soulmateList =>
      throw _privateConstructorUsedError;

  /// Create a copy of SoulmateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoulmateDataCopyWith<SoulmateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoulmateDataCopyWith<$Res> {
  factory $SoulmateDataCopyWith(
          SoulmateData value, $Res Function(SoulmateData) then) =
      _$SoulmateDataCopyWithImpl<$Res, SoulmateData>;
  @useResult
  $Res call({List<IntroducedProfile> soulmateList});
}

/// @nodoc
class _$SoulmateDataCopyWithImpl<$Res, $Val extends SoulmateData>
    implements $SoulmateDataCopyWith<$Res> {
  _$SoulmateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoulmateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soulmateList = null,
  }) {
    return _then(_value.copyWith(
      soulmateList: null == soulmateList
          ? _value.soulmateList
          : soulmateList // ignore: cast_nullable_to_non_nullable
              as List<IntroducedProfile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoulmateDataImplCopyWith<$Res>
    implements $SoulmateDataCopyWith<$Res> {
  factory _$$SoulmateDataImplCopyWith(
          _$SoulmateDataImpl value, $Res Function(_$SoulmateDataImpl) then) =
      __$$SoulmateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IntroducedProfile> soulmateList});
}

/// @nodoc
class __$$SoulmateDataImplCopyWithImpl<$Res>
    extends _$SoulmateDataCopyWithImpl<$Res, _$SoulmateDataImpl>
    implements _$$SoulmateDataImplCopyWith<$Res> {
  __$$SoulmateDataImplCopyWithImpl(
      _$SoulmateDataImpl _value, $Res Function(_$SoulmateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoulmateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soulmateList = null,
  }) {
    return _then(_$SoulmateDataImpl(
      soulmateList: null == soulmateList
          ? _value._soulmateList
          : soulmateList // ignore: cast_nullable_to_non_nullable
              as List<IntroducedProfile>,
    ));
  }
}

/// @nodoc

class _$SoulmateDataImpl implements _SoulmateData {
  const _$SoulmateDataImpl(
      {final List<IntroducedProfile> soulmateList = const []})
      : _soulmateList = soulmateList;

  final List<IntroducedProfile> _soulmateList;
  @override
  @JsonKey()
  List<IntroducedProfile> get soulmateList {
    if (_soulmateList is EqualUnmodifiableListView) return _soulmateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soulmateList);
  }

  @override
  String toString() {
    return 'SoulmateData(soulmateList: $soulmateList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoulmateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._soulmateList, _soulmateList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_soulmateList));

  /// Create a copy of SoulmateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoulmateDataImplCopyWith<_$SoulmateDataImpl> get copyWith =>
      __$$SoulmateDataImplCopyWithImpl<_$SoulmateDataImpl>(this, _$identity);
}

abstract class _SoulmateData implements SoulmateData {
  const factory _SoulmateData({final List<IntroducedProfile> soulmateList}) =
      _$SoulmateDataImpl;

  @override
  List<IntroducedProfile> get soulmateList;

  /// Create a copy of SoulmateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoulmateDataImplCopyWith<_$SoulmateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
