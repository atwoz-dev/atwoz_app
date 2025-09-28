// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterviewQuestionResponse _$InterviewQuestionResponseFromJson(
    Map<String, dynamic> json) {
  return _InterviewQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$InterviewQuestionResponse {
  int get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<InterviewQuestionItem> get data => throw _privateConstructorUsedError;

  /// Serializes this InterviewQuestionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterviewQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewQuestionResponseCopyWith<InterviewQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewQuestionResponseCopyWith<$Res> {
  factory $InterviewQuestionResponseCopyWith(InterviewQuestionResponse value,
          $Res Function(InterviewQuestionResponse) then) =
      _$InterviewQuestionResponseCopyWithImpl<$Res, InterviewQuestionResponse>;
  @useResult
  $Res call(
      {int status,
      String code,
      String message,
      List<InterviewQuestionItem> data});
}

/// @nodoc
class _$InterviewQuestionResponseCopyWithImpl<$Res,
        $Val extends InterviewQuestionResponse>
    implements $InterviewQuestionResponseCopyWith<$Res> {
  _$InterviewQuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InterviewQuestionItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewQuestionResponseImplCopyWith<$Res>
    implements $InterviewQuestionResponseCopyWith<$Res> {
  factory _$$InterviewQuestionResponseImplCopyWith(
          _$InterviewQuestionResponseImpl value,
          $Res Function(_$InterviewQuestionResponseImpl) then) =
      __$$InterviewQuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String code,
      String message,
      List<InterviewQuestionItem> data});
}

/// @nodoc
class __$$InterviewQuestionResponseImplCopyWithImpl<$Res>
    extends _$InterviewQuestionResponseCopyWithImpl<$Res,
        _$InterviewQuestionResponseImpl>
    implements _$$InterviewQuestionResponseImplCopyWith<$Res> {
  __$$InterviewQuestionResponseImplCopyWithImpl(
      _$InterviewQuestionResponseImpl _value,
      $Res Function(_$InterviewQuestionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$InterviewQuestionResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InterviewQuestionItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterviewQuestionResponseImpl implements _InterviewQuestionResponse {
  const _$InterviewQuestionResponseImpl(
      {required this.status,
      required this.code,
      required this.message,
      required final List<InterviewQuestionItem> data})
      : _data = data;

  factory _$InterviewQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterviewQuestionResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String code;
  @override
  final String message;
  final List<InterviewQuestionItem> _data;
  @override
  List<InterviewQuestionItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'InterviewQuestionResponse(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewQuestionResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of InterviewQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewQuestionResponseImplCopyWith<_$InterviewQuestionResponseImpl>
      get copyWith => __$$InterviewQuestionResponseImplCopyWithImpl<
          _$InterviewQuestionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewQuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _InterviewQuestionResponse implements InterviewQuestionResponse {
  const factory _InterviewQuestionResponse(
          {required final int status,
          required final String code,
          required final String message,
          required final List<InterviewQuestionItem> data}) =
      _$InterviewQuestionResponseImpl;

  factory _InterviewQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$InterviewQuestionResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get code;
  @override
  String get message;
  @override
  List<InterviewQuestionItem> get data;

  /// Create a copy of InterviewQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewQuestionResponseImplCopyWith<_$InterviewQuestionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InterviewQuestionItem _$InterviewQuestionItemFromJson(
    Map<String, dynamic> json) {
  return _InterviewQuestionItem.fromJson(json);
}

/// @nodoc
mixin _$InterviewQuestionItem {
  int get questionId => throw _privateConstructorUsedError;
  String get questionContent => throw _privateConstructorUsedError;
  InterviewCategory get category => throw _privateConstructorUsedError;
  bool get isAnswered => throw _privateConstructorUsedError;
  int? get answerId => throw _privateConstructorUsedError;
  String? get answerContent => throw _privateConstructorUsedError;

  /// Serializes this InterviewQuestionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterviewQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewQuestionItemCopyWith<InterviewQuestionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewQuestionItemCopyWith<$Res> {
  factory $InterviewQuestionItemCopyWith(InterviewQuestionItem value,
          $Res Function(InterviewQuestionItem) then) =
      _$InterviewQuestionItemCopyWithImpl<$Res, InterviewQuestionItem>;
  @useResult
  $Res call(
      {int questionId,
      String questionContent,
      InterviewCategory category,
      bool isAnswered,
      int? answerId,
      String? answerContent});
}

/// @nodoc
class _$InterviewQuestionItemCopyWithImpl<$Res,
        $Val extends InterviewQuestionItem>
    implements $InterviewQuestionItemCopyWith<$Res> {
  _$InterviewQuestionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionContent = null,
    Object? category = null,
    Object? isAnswered = null,
    Object? answerId = freezed,
    Object? answerContent = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionContent: null == questionContent
          ? _value.questionContent
          : questionContent // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as InterviewCategory,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int?,
      answerContent: freezed == answerContent
          ? _value.answerContent
          : answerContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewQuestionItemImplCopyWith<$Res>
    implements $InterviewQuestionItemCopyWith<$Res> {
  factory _$$InterviewQuestionItemImplCopyWith(
          _$InterviewQuestionItemImpl value,
          $Res Function(_$InterviewQuestionItemImpl) then) =
      __$$InterviewQuestionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int questionId,
      String questionContent,
      InterviewCategory category,
      bool isAnswered,
      int? answerId,
      String? answerContent});
}

/// @nodoc
class __$$InterviewQuestionItemImplCopyWithImpl<$Res>
    extends _$InterviewQuestionItemCopyWithImpl<$Res,
        _$InterviewQuestionItemImpl>
    implements _$$InterviewQuestionItemImplCopyWith<$Res> {
  __$$InterviewQuestionItemImplCopyWithImpl(_$InterviewQuestionItemImpl _value,
      $Res Function(_$InterviewQuestionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionContent = null,
    Object? category = null,
    Object? isAnswered = null,
    Object? answerId = freezed,
    Object? answerContent = freezed,
  }) {
    return _then(_$InterviewQuestionItemImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionContent: null == questionContent
          ? _value.questionContent
          : questionContent // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as InterviewCategory,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int?,
      answerContent: freezed == answerContent
          ? _value.answerContent
          : answerContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterviewQuestionItemImpl implements _InterviewQuestionItem {
  const _$InterviewQuestionItemImpl(
      {required this.questionId,
      required this.questionContent,
      required this.category,
      required this.isAnswered,
      this.answerId,
      this.answerContent});

  factory _$InterviewQuestionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterviewQuestionItemImplFromJson(json);

  @override
  final int questionId;
  @override
  final String questionContent;
  @override
  final InterviewCategory category;
  @override
  final bool isAnswered;
  @override
  final int? answerId;
  @override
  final String? answerContent;

  @override
  String toString() {
    return 'InterviewQuestionItem(questionId: $questionId, questionContent: $questionContent, category: $category, isAnswered: $isAnswered, answerId: $answerId, answerContent: $answerContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewQuestionItemImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.questionContent, questionContent) ||
                other.questionContent == questionContent) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.answerContent, answerContent) ||
                other.answerContent == answerContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, questionContent,
      category, isAnswered, answerId, answerContent);

  /// Create a copy of InterviewQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewQuestionItemImplCopyWith<_$InterviewQuestionItemImpl>
      get copyWith => __$$InterviewQuestionItemImplCopyWithImpl<
          _$InterviewQuestionItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewQuestionItemImplToJson(
      this,
    );
  }
}

abstract class _InterviewQuestionItem implements InterviewQuestionItem {
  const factory _InterviewQuestionItem(
      {required final int questionId,
      required final String questionContent,
      required final InterviewCategory category,
      required final bool isAnswered,
      final int? answerId,
      final String? answerContent}) = _$InterviewQuestionItemImpl;

  factory _InterviewQuestionItem.fromJson(Map<String, dynamic> json) =
      _$InterviewQuestionItemImpl.fromJson;

  @override
  int get questionId;
  @override
  String get questionContent;
  @override
  InterviewCategory get category;
  @override
  bool get isAnswered;
  @override
  int? get answerId;
  @override
  String? get answerContent;

  /// Create a copy of InterviewQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewQuestionItemImplCopyWith<_$InterviewQuestionItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
