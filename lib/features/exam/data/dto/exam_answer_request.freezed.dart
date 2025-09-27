// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectAnswerItem _$SubjectAnswerItemFromJson(Map<String, dynamic> json) {
  return _SubjectAnswerItem.fromJson(json);
}

/// @nodoc
mixin _$SubjectAnswerItem {
  int get subjectId => throw _privateConstructorUsedError;
  List<QuestionAnswerItem> get answers => throw _privateConstructorUsedError;

  /// Serializes this SubjectAnswerItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectAnswerItemCopyWith<SubjectAnswerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectAnswerItemCopyWith<$Res> {
  factory $SubjectAnswerItemCopyWith(
          SubjectAnswerItem value, $Res Function(SubjectAnswerItem) then) =
      _$SubjectAnswerItemCopyWithImpl<$Res, SubjectAnswerItem>;
  @useResult
  $Res call({int subjectId, List<QuestionAnswerItem> answers});
}

/// @nodoc
class _$SubjectAnswerItemCopyWithImpl<$Res, $Val extends SubjectAnswerItem>
    implements $SubjectAnswerItemCopyWith<$Res> {
  _$SubjectAnswerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectAnswerItemImplCopyWith<$Res>
    implements $SubjectAnswerItemCopyWith<$Res> {
  factory _$$SubjectAnswerItemImplCopyWith(_$SubjectAnswerItemImpl value,
          $Res Function(_$SubjectAnswerItemImpl) then) =
      __$$SubjectAnswerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subjectId, List<QuestionAnswerItem> answers});
}

/// @nodoc
class __$$SubjectAnswerItemImplCopyWithImpl<$Res>
    extends _$SubjectAnswerItemCopyWithImpl<$Res, _$SubjectAnswerItemImpl>
    implements _$$SubjectAnswerItemImplCopyWith<$Res> {
  __$$SubjectAnswerItemImplCopyWithImpl(_$SubjectAnswerItemImpl _value,
      $Res Function(_$SubjectAnswerItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? answers = null,
  }) {
    return _then(_$SubjectAnswerItemImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectAnswerItemImpl implements _SubjectAnswerItem {
  const _$SubjectAnswerItemImpl(
      {required this.subjectId,
      required final List<QuestionAnswerItem> answers})
      : _answers = answers;

  factory _$SubjectAnswerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectAnswerItemImplFromJson(json);

  @override
  final int subjectId;
  final List<QuestionAnswerItem> _answers;
  @override
  List<QuestionAnswerItem> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'SubjectAnswerItem(subjectId: $subjectId, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectAnswerItemImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, subjectId, const DeepCollectionEquality().hash(_answers));

  /// Create a copy of SubjectAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectAnswerItemImplCopyWith<_$SubjectAnswerItemImpl> get copyWith =>
      __$$SubjectAnswerItemImplCopyWithImpl<_$SubjectAnswerItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectAnswerItemImplToJson(
      this,
    );
  }
}

abstract class _SubjectAnswerItem implements SubjectAnswerItem {
  const factory _SubjectAnswerItem(
          {required final int subjectId,
          required final List<QuestionAnswerItem> answers}) =
      _$SubjectAnswerItemImpl;

  factory _SubjectAnswerItem.fromJson(Map<String, dynamic> json) =
      _$SubjectAnswerItemImpl.fromJson;

  @override
  int get subjectId;
  @override
  List<QuestionAnswerItem> get answers;

  /// Create a copy of SubjectAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectAnswerItemImplCopyWith<_$SubjectAnswerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionAnswerItem _$QuestionAnswerItemFromJson(Map<String, dynamic> json) {
  return _QuestionAnswerItem.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerItem {
  int get questionId => throw _privateConstructorUsedError;
  int get answerId => throw _privateConstructorUsedError;

  /// Serializes this QuestionAnswerItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionAnswerItemCopyWith<QuestionAnswerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerItemCopyWith<$Res> {
  factory $QuestionAnswerItemCopyWith(
          QuestionAnswerItem value, $Res Function(QuestionAnswerItem) then) =
      _$QuestionAnswerItemCopyWithImpl<$Res, QuestionAnswerItem>;
  @useResult
  $Res call({int questionId, int answerId});
}

/// @nodoc
class _$QuestionAnswerItemCopyWithImpl<$Res, $Val extends QuestionAnswerItem>
    implements $QuestionAnswerItemCopyWith<$Res> {
  _$QuestionAnswerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionAnswerItemImplCopyWith<$Res>
    implements $QuestionAnswerItemCopyWith<$Res> {
  factory _$$QuestionAnswerItemImplCopyWith(_$QuestionAnswerItemImpl value,
          $Res Function(_$QuestionAnswerItemImpl) then) =
      __$$QuestionAnswerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int questionId, int answerId});
}

/// @nodoc
class __$$QuestionAnswerItemImplCopyWithImpl<$Res>
    extends _$QuestionAnswerItemCopyWithImpl<$Res, _$QuestionAnswerItemImpl>
    implements _$$QuestionAnswerItemImplCopyWith<$Res> {
  __$$QuestionAnswerItemImplCopyWithImpl(_$QuestionAnswerItemImpl _value,
      $Res Function(_$QuestionAnswerItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = null,
  }) {
    return _then(_$QuestionAnswerItemImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionAnswerItemImpl implements _QuestionAnswerItem {
  const _$QuestionAnswerItemImpl(
      {required this.questionId, required this.answerId});

  factory _$QuestionAnswerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionAnswerItemImplFromJson(json);

  @override
  final int questionId;
  @override
  final int answerId;

  @override
  String toString() {
    return 'QuestionAnswerItem(questionId: $questionId, answerId: $answerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionAnswerItemImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, answerId);

  /// Create a copy of QuestionAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionAnswerItemImplCopyWith<_$QuestionAnswerItemImpl> get copyWith =>
      __$$QuestionAnswerItemImplCopyWithImpl<_$QuestionAnswerItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionAnswerItemImplToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerItem implements QuestionAnswerItem {
  const factory _QuestionAnswerItem(
      {required final int questionId,
      required final int answerId}) = _$QuestionAnswerItemImpl;

  factory _QuestionAnswerItem.fromJson(Map<String, dynamic> json) =
      _$QuestionAnswerItemImpl.fromJson;

  @override
  int get questionId;
  @override
  int get answerId;

  /// Create a copy of QuestionAnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionAnswerItemImplCopyWith<_$QuestionAnswerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
