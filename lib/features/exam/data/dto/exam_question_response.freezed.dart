// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExamQuestionResponse _$ExamQuestionResponseFromJson(Map<String, dynamic> json) {
  return _ExamQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$ExamQuestionResponse {
  int get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ExamQuestionItem get data => throw _privateConstructorUsedError;

  /// Serializes this ExamQuestionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamQuestionResponseCopyWith<ExamQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamQuestionResponseCopyWith<$Res> {
  factory $ExamQuestionResponseCopyWith(ExamQuestionResponse value,
          $Res Function(ExamQuestionResponse) then) =
      _$ExamQuestionResponseCopyWithImpl<$Res, ExamQuestionResponse>;
  @useResult
  $Res call({int status, String code, String message, ExamQuestionItem data});

  $ExamQuestionItemCopyWith<$Res> get data;
}

/// @nodoc
class _$ExamQuestionResponseCopyWithImpl<$Res,
        $Val extends ExamQuestionResponse>
    implements $ExamQuestionResponseCopyWith<$Res> {
  _$ExamQuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamQuestionResponse
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
              as ExamQuestionItem,
    ) as $Val);
  }

  /// Create a copy of ExamQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExamQuestionItemCopyWith<$Res> get data {
    return $ExamQuestionItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExamQuestionResponseImplCopyWith<$Res>
    implements $ExamQuestionResponseCopyWith<$Res> {
  factory _$$ExamQuestionResponseImplCopyWith(_$ExamQuestionResponseImpl value,
          $Res Function(_$ExamQuestionResponseImpl) then) =
      __$$ExamQuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String code, String message, ExamQuestionItem data});

  @override
  $ExamQuestionItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$ExamQuestionResponseImplCopyWithImpl<$Res>
    extends _$ExamQuestionResponseCopyWithImpl<$Res, _$ExamQuestionResponseImpl>
    implements _$$ExamQuestionResponseImplCopyWith<$Res> {
  __$$ExamQuestionResponseImplCopyWithImpl(_$ExamQuestionResponseImpl _value,
      $Res Function(_$ExamQuestionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ExamQuestionResponseImpl(
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
              as ExamQuestionItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamQuestionResponseImpl implements _ExamQuestionResponse {
  const _$ExamQuestionResponseImpl(
      {required this.status,
      required this.code,
      required this.message,
      required this.data});

  factory _$ExamQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamQuestionResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String code;
  @override
  final String message;
  @override
  final ExamQuestionItem data;

  @override
  String toString() {
    return 'ExamQuestionResponse(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamQuestionResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, data);

  /// Create a copy of ExamQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamQuestionResponseImplCopyWith<_$ExamQuestionResponseImpl>
      get copyWith =>
          __$$ExamQuestionResponseImplCopyWithImpl<_$ExamQuestionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamQuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _ExamQuestionResponse implements ExamQuestionResponse {
  const factory _ExamQuestionResponse(
      {required final int status,
      required final String code,
      required final String message,
      required final ExamQuestionItem data}) = _$ExamQuestionResponseImpl;

  factory _ExamQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$ExamQuestionResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get code;
  @override
  String get message;
  @override
  ExamQuestionItem get data;

  /// Create a copy of ExamQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamQuestionResponseImplCopyWith<_$ExamQuestionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExamQuestionItem _$ExamQuestionItemFromJson(Map<String, dynamic> json) {
  return _ExamQuestionItem.fromJson(json);
}

/// @nodoc
mixin _$ExamQuestionItem {
  List<SubjectItem> get subjects => throw _privateConstructorUsedError;

  /// Serializes this ExamQuestionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamQuestionItemCopyWith<ExamQuestionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamQuestionItemCopyWith<$Res> {
  factory $ExamQuestionItemCopyWith(
          ExamQuestionItem value, $Res Function(ExamQuestionItem) then) =
      _$ExamQuestionItemCopyWithImpl<$Res, ExamQuestionItem>;
  @useResult
  $Res call({List<SubjectItem> subjects});
}

/// @nodoc
class _$ExamQuestionItemCopyWithImpl<$Res, $Val extends ExamQuestionItem>
    implements $ExamQuestionItemCopyWith<$Res> {
  _$ExamQuestionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = null,
  }) {
    return _then(_value.copyWith(
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamQuestionItemImplCopyWith<$Res>
    implements $ExamQuestionItemCopyWith<$Res> {
  factory _$$ExamQuestionItemImplCopyWith(_$ExamQuestionItemImpl value,
          $Res Function(_$ExamQuestionItemImpl) then) =
      __$$ExamQuestionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubjectItem> subjects});
}

/// @nodoc
class __$$ExamQuestionItemImplCopyWithImpl<$Res>
    extends _$ExamQuestionItemCopyWithImpl<$Res, _$ExamQuestionItemImpl>
    implements _$$ExamQuestionItemImplCopyWith<$Res> {
  __$$ExamQuestionItemImplCopyWithImpl(_$ExamQuestionItemImpl _value,
      $Res Function(_$ExamQuestionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = null,
  }) {
    return _then(_$ExamQuestionItemImpl(
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamQuestionItemImpl implements _ExamQuestionItem {
  const _$ExamQuestionItemImpl({required final List<SubjectItem> subjects})
      : _subjects = subjects;

  factory _$ExamQuestionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamQuestionItemImplFromJson(json);

  final List<SubjectItem> _subjects;
  @override
  List<SubjectItem> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'ExamQuestionItem(subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamQuestionItemImpl &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  /// Create a copy of ExamQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamQuestionItemImplCopyWith<_$ExamQuestionItemImpl> get copyWith =>
      __$$ExamQuestionItemImplCopyWithImpl<_$ExamQuestionItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamQuestionItemImplToJson(
      this,
    );
  }
}

abstract class _ExamQuestionItem implements ExamQuestionItem {
  const factory _ExamQuestionItem({required final List<SubjectItem> subjects}) =
      _$ExamQuestionItemImpl;

  factory _ExamQuestionItem.fromJson(Map<String, dynamic> json) =
      _$ExamQuestionItemImpl.fromJson;

  @override
  List<SubjectItem> get subjects;

  /// Create a copy of ExamQuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamQuestionItemImplCopyWith<_$ExamQuestionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectItem _$SubjectItemFromJson(Map<String, dynamic> json) {
  return _SubjectItem.fromJson(json);
}

/// @nodoc
mixin _$SubjectItem {
  int get id => throw _privateConstructorUsedError;
  ExamType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<QuestionItem> get questions => throw _privateConstructorUsedError;

  /// Serializes this SubjectItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectItemCopyWith<SubjectItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectItemCopyWith<$Res> {
  factory $SubjectItemCopyWith(
          SubjectItem value, $Res Function(SubjectItem) then) =
      _$SubjectItemCopyWithImpl<$Res, SubjectItem>;
  @useResult
  $Res call({int id, ExamType type, String name, List<QuestionItem> questions});
}

/// @nodoc
class _$SubjectItemCopyWithImpl<$Res, $Val extends SubjectItem>
    implements $SubjectItemCopyWith<$Res> {
  _$SubjectItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExamType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectItemImplCopyWith<$Res>
    implements $SubjectItemCopyWith<$Res> {
  factory _$$SubjectItemImplCopyWith(
          _$SubjectItemImpl value, $Res Function(_$SubjectItemImpl) then) =
      __$$SubjectItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ExamType type, String name, List<QuestionItem> questions});
}

/// @nodoc
class __$$SubjectItemImplCopyWithImpl<$Res>
    extends _$SubjectItemCopyWithImpl<$Res, _$SubjectItemImpl>
    implements _$$SubjectItemImplCopyWith<$Res> {
  __$$SubjectItemImplCopyWithImpl(
      _$SubjectItemImpl _value, $Res Function(_$SubjectItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_$SubjectItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExamType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectItemImpl implements _SubjectItem {
  const _$SubjectItemImpl(
      {required this.id,
      required this.type,
      required this.name,
      required final List<QuestionItem> questions})
      : _questions = questions;

  factory _$SubjectItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectItemImplFromJson(json);

  @override
  final int id;
  @override
  final ExamType type;
  @override
  final String name;
  final List<QuestionItem> _questions;
  @override
  List<QuestionItem> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'SubjectItem(id: $id, type: $type, name: $name, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, name,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of SubjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectItemImplCopyWith<_$SubjectItemImpl> get copyWith =>
      __$$SubjectItemImplCopyWithImpl<_$SubjectItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectItemImplToJson(
      this,
    );
  }
}

abstract class _SubjectItem implements SubjectItem {
  const factory _SubjectItem(
      {required final int id,
      required final ExamType type,
      required final String name,
      required final List<QuestionItem> questions}) = _$SubjectItemImpl;

  factory _SubjectItem.fromJson(Map<String, dynamic> json) =
      _$SubjectItemImpl.fromJson;

  @override
  int get id;
  @override
  ExamType get type;
  @override
  String get name;
  @override
  List<QuestionItem> get questions;

  /// Create a copy of SubjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectItemImplCopyWith<_$SubjectItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionItem _$QuestionItemFromJson(Map<String, dynamic> json) {
  return _QuestionItem.fromJson(json);
}

/// @nodoc
mixin _$QuestionItem {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<AnswerItem> get answers => throw _privateConstructorUsedError;

  /// Serializes this QuestionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionItemCopyWith<QuestionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionItemCopyWith<$Res> {
  factory $QuestionItemCopyWith(
          QuestionItem value, $Res Function(QuestionItem) then) =
      _$QuestionItemCopyWithImpl<$Res, QuestionItem>;
  @useResult
  $Res call({int id, String content, List<AnswerItem> answers});
}

/// @nodoc
class _$QuestionItemCopyWithImpl<$Res, $Val extends QuestionItem>
    implements $QuestionItemCopyWith<$Res> {
  _$QuestionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionItemImplCopyWith<$Res>
    implements $QuestionItemCopyWith<$Res> {
  factory _$$QuestionItemImplCopyWith(
          _$QuestionItemImpl value, $Res Function(_$QuestionItemImpl) then) =
      __$$QuestionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String content, List<AnswerItem> answers});
}

/// @nodoc
class __$$QuestionItemImplCopyWithImpl<$Res>
    extends _$QuestionItemCopyWithImpl<$Res, _$QuestionItemImpl>
    implements _$$QuestionItemImplCopyWith<$Res> {
  __$$QuestionItemImplCopyWithImpl(
      _$QuestionItemImpl _value, $Res Function(_$QuestionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? answers = null,
  }) {
    return _then(_$QuestionItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionItemImpl implements _QuestionItem {
  const _$QuestionItemImpl(
      {required this.id,
      required this.content,
      required final List<AnswerItem> answers})
      : _answers = answers;

  factory _$QuestionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionItemImplFromJson(json);

  @override
  final int id;
  @override
  final String content;
  final List<AnswerItem> _answers;
  @override
  List<AnswerItem> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QuestionItem(id: $id, content: $content, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, content, const DeepCollectionEquality().hash(_answers));

  /// Create a copy of QuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionItemImplCopyWith<_$QuestionItemImpl> get copyWith =>
      __$$QuestionItemImplCopyWithImpl<_$QuestionItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionItemImplToJson(
      this,
    );
  }
}

abstract class _QuestionItem implements QuestionItem {
  const factory _QuestionItem(
      {required final int id,
      required final String content,
      required final List<AnswerItem> answers}) = _$QuestionItemImpl;

  factory _QuestionItem.fromJson(Map<String, dynamic> json) =
      _$QuestionItemImpl.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  List<AnswerItem> get answers;

  /// Create a copy of QuestionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionItemImplCopyWith<_$QuestionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerItem _$AnswerItemFromJson(Map<String, dynamic> json) {
  return _AnswerItem.fromJson(json);
}

/// @nodoc
mixin _$AnswerItem {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this AnswerItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerItemCopyWith<AnswerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerItemCopyWith<$Res> {
  factory $AnswerItemCopyWith(
          AnswerItem value, $Res Function(AnswerItem) then) =
      _$AnswerItemCopyWithImpl<$Res, AnswerItem>;
  @useResult
  $Res call({int id, String content});
}

/// @nodoc
class _$AnswerItemCopyWithImpl<$Res, $Val extends AnswerItem>
    implements $AnswerItemCopyWith<$Res> {
  _$AnswerItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerItemImplCopyWith<$Res>
    implements $AnswerItemCopyWith<$Res> {
  factory _$$AnswerItemImplCopyWith(
          _$AnswerItemImpl value, $Res Function(_$AnswerItemImpl) then) =
      __$$AnswerItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String content});
}

/// @nodoc
class __$$AnswerItemImplCopyWithImpl<$Res>
    extends _$AnswerItemCopyWithImpl<$Res, _$AnswerItemImpl>
    implements _$$AnswerItemImplCopyWith<$Res> {
  __$$AnswerItemImplCopyWithImpl(
      _$AnswerItemImpl _value, $Res Function(_$AnswerItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
  }) {
    return _then(_$AnswerItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerItemImpl implements _AnswerItem {
  const _$AnswerItemImpl({required this.id, required this.content});

  factory _$AnswerItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerItemImplFromJson(json);

  @override
  final int id;
  @override
  final String content;

  @override
  String toString() {
    return 'AnswerItem(id: $id, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content);

  /// Create a copy of AnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerItemImplCopyWith<_$AnswerItemImpl> get copyWith =>
      __$$AnswerItemImplCopyWithImpl<_$AnswerItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerItemImplToJson(
      this,
    );
  }
}

abstract class _AnswerItem implements AnswerItem {
  const factory _AnswerItem(
      {required final int id,
      required final String content}) = _$AnswerItemImpl;

  factory _AnswerItem.fromJson(Map<String, dynamic> json) =
      _$AnswerItemImpl.fromJson;

  @override
  int get id;
  @override
  String get content;

  /// Create a copy of AnswerItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerItemImplCopyWith<_$AnswerItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
